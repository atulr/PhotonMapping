/*
 * photon_map.cc
 *
 *  Created on: Nov 11, 2011
 *      Author: atulrungta
 */

#include "photon_map.h"
#include <math.h>
#define MAX_NUM 9999999;

inline int split(int x)//this finds which node of the list should be the splitter
{
	return (int)(log((double)x)/log(2.0))+1;

}

inline float distance_square(Vector v1, Vector v2) {
	return ((v1.getx() - v2.getx()) * (v1.getx() - v2.getx()) + (v1.gety() - v2.gety()) * (v1.gety() - v2.gety()) + (v1.getz() - v2.getz()) * (v1.getz() - v2.getz()));
}

inline int min(int x, int y) {
	if(x < y)
		return x;
	return y;
}

int sort_dim = 0;

void PhotonMap::locate_photons(Vector position, float dSquare,int p, Photon nearest[], Photon heap[], int sizeHeap, int &size_nearest){
	if((2*p+2) < sizeHeap)//visit children
	{
		int dim=heap[p].get_dimension();
		float phi;
		if (dim==0)
			phi = position.getx() - heap[p].get_axis(dim);
		else if (dim==1)
			phi = position.gety() - heap[p].get_axis(dim);
		else
			phi = position.getz() - heap[p].get_axis(dim);

		if(phi<0.0){
			locate_photons(position,dSquare,2*p+1,nearest,heap,sizeHeap, size_nearest);
			if((phi*phi)<dSquare)
				locate_photons(position,dSquare,2*p+2,nearest,heap,sizeHeap, size_nearest);
		}
		else
		{
			locate_photons(position,dSquare,2*p+2,nearest,heap,sizeHeap, size_nearest);
			if((phi*phi)<dSquare)
				locate_photons(position,dSquare,2*p+1,nearest,heap,sizeHeap, size_nearest);
		}
	}
	float phiSquare=distance_square(heap[p].get_position(),position);
	//shove it into an array for now...
	if(phiSquare<dSquare){
		Photon temp;
		temp.distance = phiSquare;
		temp = heap[p];
		nearest[size_nearest++] = temp;
		if(size_nearest> 50) { //fix the hard coding..
			nearest[size_nearest--];
			dSquare = nearest[size_nearest].distance;
	}
}
}

void PhotonMap::generate(Photon photons[], Photon photonHeap[], int count, int currentPos) {
	// add the rgb shit..
	if(count)
	if(count==0)//base case
	{

		photonHeap[currentPos].set_flag(-1);
		photonHeap[currentPos].set_incident(photons[0].get_incidence());
		photonHeap[currentPos].set_position(photons[0].get_position());
//		ASSIGN(photonHeap[currentPos].rgb,it->rgb); //will be required later.. mostly for the relfected photons
	}
	else {

			float minXYZ[3],maxXYZ[3];
			minXYZ[0] = minXYZ[1] = minXYZ[2] = MAX_NUM;
			maxXYZ[0] = maxXYZ[1] = maxXYZ[2] = -MAX_NUM;
			int i = 0;
			for(i = 0; i!= count; ++i)//find bounding box
			{
				if(photons[i].get_position().getx() < minXYZ[0])
					minXYZ[0] = photons[i].get_position().getx();
				if(photons[i].get_position().gety() < minXYZ[1])
					minXYZ[1] = photons[i].get_position().gety();
				if(photons[i].get_position().getz() < minXYZ[2])
					minXYZ[2] = photons[i].get_position().getz();
				if(photons[i].get_position().getx() > maxXYZ[0])
					maxXYZ[0] = photons[i].get_position().getx();
				if(photons[i].get_position().gety() > maxXYZ[1])
					maxXYZ[1] = photons[i].get_position().gety();
				if(photons[i].get_position().getz() > maxXYZ[2])
					maxXYZ[2] = photons[i].get_position().getz();
			}

			float xd,yd,zd;
			xd=maxXYZ[0] - minXYZ[0];
			yd=maxXYZ[1] - minXYZ[1];
			zd=maxXYZ[2] - minXYZ[2];

			if((xd>yd) && (xd>zd))//find splitting dimention
				sort_dim=0;
			else if((yd>xd)&&(yd>zd))
				sort_dim=1;
			else
				sort_dim=2;

			sort(photons, sort_dim, count, 0, count);


			Photon upper[count];
			Photon lower[count];

			int n=split(count);
			int median= pow(2,n-2)+min(pow(2,n-2), count - (pow(2,n-1)-1));
			//you cant just split by median if you are using a heap or the data wont fit
			//for n != 2^n, so median here probably isnt the actual median
			int count_upper = 0;
			int count_lower = 0;
			Photon tempPhoton;
			i=1;
			int it;
			for(it=0; it != count; ++it,++i)//create 2 lists
			{
				tempPhoton.set_position(photons[it].get_position());
				tempPhoton.set_incident(photons[it].get_incidence());

				if(i<median)
					lower[count_lower++] = tempPhoton;
				else if(i==median)//"median", store the photon
				{
					photonHeap[currentPos].set_flag(sort_dim);
					photonHeap[currentPos].set_incident(photons[it].get_incidence());
					photonHeap[currentPos].set_position(photons[it].get_position());
				}
				else
					upper[count_upper++] = tempPhoton;
			}
			generate(lower, photonHeap, count_lower, (currentPos*2)+1);//recurse on the 2 subtrees
			generate(upper, photonHeap, count_upper, (currentPos*2)+2);
//			lower.clear();//free up memory
//			upper.clear();//not needed for now
		}

}

void PhotonMap::sort(Photon photons[], int sort_dim, int size, int left, int right) {
	//iterative quicksort..
	Photon temp, pivot;

	int stack[size], sp = 0, l2, r2;
	stack[sp++] = left;
	stack[sp++] = right;
	while(sp > 0) {

		right = stack[--sp];
		left = stack[--sp];
		do {
			pivot = photons[(left + right)/2];
			l2 = left;
			r2 = right;
			do {
				while(photons[l2].get_axis(sort_dim) < pivot.get_axis(sort_dim))
					l2 = l2 + 1;
				while(photons[r2].get_axis(sort_dim) > pivot.get_axis(sort_dim))
					r2 = r2 - 1;
				if (l2 <= r2) {
					if (l2 != r2) {
						temp = photons[l2];
						photons[l2] = photons[r2];
						photons[r2] = temp;
					}
					l2 = l2 + 1;
					r2 = r2 - 1;
				}
			}while(l2 < r2);
			if(r2 - left > right - l2) {
				if (left < r2) {
					stack[sp++] = left;
					stack[sp++] = r2;
				}
				left = l2;
			}else {
				if(l2 < right) {
					stack[sp++] = l2;
					stack[sp++] = right;
				}
				right = r2;
			}
		}while(left < right);
	}
}
