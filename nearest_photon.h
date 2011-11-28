/*
 * nearest_photon.h
 *
 *  Created on: Nov 26, 2011
 *      Author: atulrungta
 */

#ifndef NEAREST_PHOTON_H_
#define NEAREST_PHOTON_H_

#define NEAREST_PHOTONS 1000

#include "vector.h"
#include "photon.h"

class NearestPhoton{
public:
	NearestPhoton() {};
	int max;
	int found;
	int got_heap;
	Vector pos;
	float dist2[NEAREST_PHOTONS];
	Photon index[NEAREST_PHOTONS];
	float get_axis(int dim);
};


#endif /* NEAREST_PHOTON_H_ */
