/*
 * photons.h
 *
 *  Created on: Nov 20, 2011
 *      Author: atulrungta
 */

#ifndef PHOTONS_H_
#define PHOTONS_H_

#include "photon.h"

class Photons{
	Photon photons[1000];
	int size;
public:
	Photons(Photon phos[1000], int count) {
		photons = phos;
		size = count;
	}
	int return_size();
};


#endif /* PHOTONS_H_ */
