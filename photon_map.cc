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

inline int min(int x, int y) {
	if(x < y)
		return x;
	return y;
}

int sort_dim = 0;

void PhotonMap::locate_photons(double *point, double *dSquare,int p, priority_queue<photonQueue,deque<photonQueue>,eventComparison> &nearest,photon* heap, int sizeHeap, int type){
	if((2*p+2)<sizeHeap)//visit children
	{
		int dim=heap[p].flag;
		double phi=point[dim]-heap[p].pos[dim];
		if(phi<0.0){
			locate_photons(point,dSquare,2*p+1,nearest,heap,sizeHeap, type);
			if((phi*phi)<dSquare[0])
				locate_photons(point,dSquare,2*p+2,nearest,heap,sizeHeap, type);
		}
		else
		{
			locate_photons(point,dSquare,2*p+2,nearest,heap,sizeHeap, type);
			if((phi*phi)<dSquare[0])
				locate_photons(point,dSquare,2*p+1,nearest,heap,sizeHeap, type);
		}
	}
	double phiSquare=squareDist(heap[p].pos,point);
	if(phiSquare<dSquare[0]){
		photonQueue temp;
		temp.dSquare=phiSquare;
		temp.pho=&heap[p];
		nearest.push(temp);
		if(((type==0)&&(nearest.size()>NEAREST_INDIRECT))||((type==1)&&(nearest.size()>NEAREST_CAUSTIC))){
			nearest.pop();
			dSquare[0]=nearest.top().dSquare;}
	}
}

void PhotonMap::generate(Photon photons[], Photon photonHeap[], int count, int currentPos) {
			float minXYZ[3],maxXYZ[3];
			minXYZ[0] = minXYZ[1] = minXYZ[2] = MAX_NUM;
			maxXYZ[0] = maxXYZ[1] = maxXYZ[2] = -MAX_NUM;

			for(int it = 0; it! = count; ++ it)//find bounding box
			{
				if(photons[it].get_position().getx() < minXYZ[0])
					minXYZ[0] = photons[it].get_position().getx();
				if(photons[it].get_position().gety() < minXYZ[1])
					minXYZ[1] = photons[it].get_position().gety();
				if(photons[it].get_position().getz() < minXYZ[2])
					minXYZ[2] = photons[it].get_position().getz();
				if(photons[it].get_position().getx() > maxXYZ[0])
					maxXYZ[0] = photons[it].get_position().getx();
				if(photons[it].get_position().gety() > maxXYZ[1])
					maxXYZ[1] = photons[it].get_position().gety();
				if(photons[it].get_position().getz() > maxXYZ[2])
					maxXYZ[2] = photons[it].get_position().getz();
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
			int i=1;
			for(it=0; it != count; ++it,++i)//create 2 lists
			{
				tempPhoton.set_position(photons[it].get_position());
//				tempPhoton.pos,it->pos); find out what this is all about.
				tempPhoton.set_power(photons[it].get_power());

				if(i<median)
					lower[count_lower++] = tempPhoton;
				else if(i==median)//"median", store the photon
				{
					photonHeap[currentPos].set_flag(sort_dim);
//					photonHeap[currentPos].incident,it->incident);
					photonHeap[currentPos].set_position(photons[it].get_position());
					photonHeap[currentPos].set_power(photons[it].get_power());
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
	//use iterative quicksort..
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
				while(photons[r2] > pivot)
					r2 = r2 - 1;
				if (l2 <= r2) {
					if (l2 != r2) {
						temp = photon[l2];
						photon[l2] = photon[r2];
						photon[r2] = temp;
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
