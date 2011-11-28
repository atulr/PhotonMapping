/*
 * nearest_photon.cc
 *
 *  Created on: Nov 26, 2011
 *      Author: atulrungta
 */

#include "nearest_photon.h"

float NearestPhoton::get_axis(int dim) {
	if (dim == 0)
		return pos.getx();
	if (dim == 1)
		return pos.gety();
	return pos.getz();

}


