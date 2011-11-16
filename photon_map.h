/*
 * kdtree.h
 *
 *  Created on: Nov 11, 2011
 *      Author: atulrungta
 */

#ifndef KDTREE_H_
#define KDTREE_H_

#include "photon.h"

class PhotonMap {
	Photon photon;
	void sort(Photon photons[], int sort_dimension, int count);
public:
	PhotonMap() {};
	PhotonMap(Photon ph) {
		photon = ph;
	}
	void locate_photons();
	void generate(Photon photons[], Photon heap[], int count, int depth);
	void balance();
};



#endif /* KDTREE_H_ */