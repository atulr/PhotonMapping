/*
 * photon.cc
 *
 *  Created on: Nov 4, 2011
 *      Author: atulrungta
 */

#include "photon.h"

Vector Photon::get_position(){
	return position;
}

void Photon::set_position(Vector pos) {
	position = pos;
}

float Photon::get_power() {
	return power;
}

void Photon::set_power(float pow[]) {
	power = pow;
}

float Photon::get_axis(int dim) {
	if (dim == 0)
		return get_position().getx();
	if (dim == 1)
		return get_position().gety();
	return get_position().getz();
}

void Photon::set_flag(int f) {
	flag = f;
}
