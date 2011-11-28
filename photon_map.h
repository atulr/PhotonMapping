/*
 * photon_map.h
 *
 *  Created on: Nov 11, 2011
 *      Author: atulrungta
 */

#ifndef PHOTON_MAP_H_
#define PHOTON_MAP_H_

#include "photon.h"
#include "nearest_photon.h"
#define BOX_MAX 10000000.f
const int no_of_photons = 5000;

class PhotonMap {
	Photon photons[no_of_photons];
	int stored_photons;
	int half_stored_photons;
	float bbox_min[3];
	float bbox_max[3];
	void balance_segment(Photon pa1[], Photon pa2[], const int index, const int start, const int end);
	void median_split(Photon porg[], const int start, const int end, const int median, const int axis);
	void sort(Photon photons[], int sort_dimension, int count, int left, int right);
public:
	PhotonMap() {
		bbox_min[0] = bbox_min[1] = bbox_min[2] = BOX_MAX;
		bbox_max[0] = bbox_max[1] = bbox_max[2] = -BOX_MAX;
	};

	void irradiance_estimate(float irrad[3], Vector pos, Vector normal, const float max_distance, const int nphotons);
	void locate_photons(NearestPhoton &np, const int index);
	void generate(Photon photons[], Photon heap[], int count, int depth);
	void store(Photon &photon);
	void balance();
};



#endif /* PHOTON_MAP_H_ */
