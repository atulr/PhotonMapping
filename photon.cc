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

void Photon::set_flag(int f) {
	flag = f;
}
