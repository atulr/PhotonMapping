/*
 * photon_map.cc
 *
 *  Created on: Nov 11, 2011
 *      Author: atulrungta
 */
#include "trax.hpp"
#include "photon_map.h"
#include <stddef.h>
#define MAX_NUM 9999999;
#define M_PI        3.14159265358979323846264338327950288

//this code was taken from the book "Realistic image synthesis using Photon Mapping - Henrik Jensen"

int foo = 0;

inline void swap(Photon p[], int a, int b) {
	Photon temp = p[a];
	p[a] = p[b];
	p[b] = temp;
}

void PhotonMap::store(Photon &photon) {
	if (photons[stored_photons].get_position().getx() < bbox_min[0])
		bbox_min[0] = photons[stored_photons].get_position().getx();

	if (photons[stored_photons].get_position().gety() < bbox_min[1])
		bbox_min[1] = photons[stored_photons].get_position().gety();

	if (photons[stored_photons].get_position().getz() < bbox_min[2])
		bbox_min[2] = photons[stored_photons].get_position().getz();

	if (photons[stored_photons].get_position().getx() > bbox_max[0])
		bbox_max[0] = photons[stored_photons].get_position().getx();

	if (photons[stored_photons].get_position().gety() > bbox_min[1])
		bbox_max[1] = photons[stored_photons].get_position().gety();

	if (photons[stored_photons].get_position().getz() > bbox_min[2])
		bbox_max[2] = photons[stored_photons].get_position().getz();
	photons[stored_photons] = photon;
	stored_photons++;
}

void PhotonMap::balance() {
	if (stored_photons > 1) {
		Photon pa1[stored_photons + 1];
		Photon pa2[stored_photons + 1];

		for(int i = 0; i <= stored_photons ; i++)
			pa2[i] = photons[i];
		balance_segment(pa1, pa2, 1, 1, stored_photons);

		int d, j = 1, foo = 1;
		Photon foo_photon = photons[j];

//		for (int i = 1; i<= stored_photons; i++) {
//			d = pa1[j] - photons;
//			pa1[j] = NULL;
//			if (d != foo)
//				photons[j] = photons[d];
//			else {
//				photons[j] = foo_photon;
//
//				if (i<stored_photons) {
//					for (; foo<=stored_photons; foo++)
//						if(pa1[foo] != NULL)
//							break;
//					foo_photon = photons[foo];
//					j = foo;
//				}
//				continue;
//			}
//			j = d;
//		}
	}
	half_stored_photons = stored_photons/2 - 1;
}

void PhotonMap::balance_segment(Photon pbal[], Photon porg[], const int index, const int start, const int end) {
	int median = 1;

	while ((4 * median) <= (end - start + 1))
		median +=median;

	if((3 * median) <= (end - start + 1)) {
		median += median;
		median += start - 1;
	} else
		median = end - median + 1;

	int axis = 2;

	if ((bbox_max[0] - bbox_min[0]) > (bbox_max[1] - bbox_min[1]) && (bbox_max[0] - bbox_min[0]) > (bbox_max[2] - bbox_min[2]))
		axis = 0;
	else if ((bbox_max[1] - bbox_min[1]) > (bbox_max[2] - bbox_min[2]))
		axis = 1;

	median_split(porg, start, end, median, axis);

	pbal[index] = porg[median];
	pbal[index].set_flag(axis);

	if(median > start) {
		if (start < median - 1) {
			float tmp = bbox_max[axis];
			bbox_max[axis] = pbal[index].get_axis(axis);
			balance_segment(pbal, porg, 2*index, start, median - 1);
			bbox_max[axis] = tmp;
		} else {
			pbal[ 2 * index] = porg[start];
		}
	}

	if (median < end) {
		if (median + 1 < end) {
			float tmp = bbox_min[axis];
			bbox_min[axis] = pbal[index].get_axis(axis);
			balance_segment(pbal, porg, 2 * index + 1, median + 1, end);
			bbox_min[axis] = tmp;
		} else {
			pbal[2 * index + 1] = porg[end];
		}
	}
}

void PhotonMap::median_split(Photon p[], const int start, const int end, const int median, const int axis) {
	int left = start;
	int right = end;

	while ( right > left) {
		float v = p[right].get_axis(axis);
		int i = left - 1;
		int j = right;

		for(;;) {
			while(p[++i].get_axis(axis) < v);
			while(p[--j].get_axis(axis) > v && j > left);
			if (i >= j)
				break;
			swap(p, i, j);
		}

		swap(p, i, right);
		if(i >= median)
			right = i-1;
		if(i <= median)
			left = i + 1;
	}
}

void PhotonMap::irradiance_estimate(float irrad[3], Vector pos, Vector normal, const float max_dist, const int nphotons) {
	irrad[0] = irrad[1] = irrad[2] = 0.0f;
	NearestPhoton np;
	np.pos = pos;
	np.max = nphotons;
	np.found = 0;
	np.got_heap = 0;
	np.dist2[0] = max_dist * max_dist;

	locate_photons(np, 1);
	if(np.found < 8)
		return ;
	for(int i = 1; i<= np.found; i++) {
		Photon p = np.index[i];
		irrad[0] += p.get_powerr();
		irrad[1] += p.get_powerg();
		irrad[2] += p.get_powerb();
	}

	float tmp = (1.0f/M_PI)/(np.dist2[0]);

	irrad[0] *= tmp;
	irrad[1] *= tmp;
	irrad[2] *= tmp;
}

void PhotonMap::locate_photons(NearestPhoton &np, const int index) {
	Photon p = photons[index];
	float dist1;
	if(index < half_stored_photons) {
		dist1 = np.get_axis(p.get_dimension()) - p.get_axis(p.get_dimension());
//		trax_printf(dist1);
		if(dist1 > 0.0f) {
			locate_photons(np, 2*index + 1);
			if (dist1 * dist1 < np.dist2[0])
				locate_photons(np, 2 * index);
		} else {
			locate_photons(np, 2 * index);
			if(dist1 * dist1 < np.dist2[0])
				locate_photons(np, 2 *index + 1);
		}
	}

	dist1 = p.get_axis(0) - np.get_axis(0);
	float dist2 = dist1 * dist1;
	dist1 = p.get_axis(1) - np.get_axis(1);
	dist2 += dist1 * dist1;
	dist1 = p.get_axis(2) - np.get_axis(2);
	dist2 += dist1 * dist1;

	if(dist2 < np.dist2[0]) {
		if(np.found < np.max) {
			np.found = np.found + 1;
			np.dist2[np.found] = dist2;
			np.index[np.found] = p;
		} else {
			int j, parent;

			if (np.got_heap == 0) {
				float dst2;
				Photon phot;
				int half_found = np.found/2;
				for(int k=half_found; k>=1; k--) {
					parent = k;
					phot = np.index[k];
					dst2 = np.dist2[k];
					while(parent <= half_found) {
						j = parent + parent;
						if (j < np.found && np.dist2[j] < np.dist2[j + 1])
							j++;
						if (dst2>=np.dist2[j])
							break;
						np.dist2[parent] = np.dist2[j];
						np.index[parent] = np.index[j];
						parent = j;
					}
					np.dist2[parent] = dst2;
					np.index[parent] = phot;
				}
				np.got_heap = 1;
			}
			parent = 1;
			j = 2;
			while( j <= np.found) {
				if (j < np.found && np.dist2[j] < np.dist2[j + 1])
					j++;
				if (dist2 > np.dist2[j])
					break;
				np.dist2[parent] = np.dist2[j];
				np.index[parent] = np.index[j];
				parent = j;
				j += j;
			}

			np.index[parent] = p;
			np.dist2[parent] = dist2;

			np.dist2[0] = np.dist2[1];
		}
	}
}
