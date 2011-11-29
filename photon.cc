/*
 * photon.cc
 *
 *  Created on: Nov 4, 2011
 *      Author: atulrungta
 */
#include "trax.hpp"
#include "photon.h"

Vector Photon::get_position(){
	return position;
}

Vector Photon::get_incidence() {
	return incident;
}

void Photon::set_position(Vector pos) {
	position = pos;
}

int Photon::get_dimension() {
	return flag;
}

float Photon::get_powerr() {
	return power[0];
}

float Photon::get_powerg() {
	return power[1];
}

float Photon::get_powerb() {
	return power[2];
}

void Photon::set_power(float Kd) {
	power[0] = power[0] * Kd;
	power[1] = power[1] * Kd;
	power[2] = power[2] * Kd;
}

void Photon::set_power(Color color) {
	power[0] = power[0] * color.red();
	power[1] = power[1] * color.blue();
	power[2] = power[2] * color.green();
}

void Photon::set_incident(Vector inc) {
	incident = inc;
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
