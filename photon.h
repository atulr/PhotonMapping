/*
 * photon.h
 *
 *  Created on: Nov 3, 2011
 *      Author: atulrungta
 */

#ifndef PHOTON_H_
#define PHOTON_H_

#include "vector.h"
#include "ray.h"
#include "color.h"
#include "trax.hpp"

class Photon {
private:
	Vector position;
//	Vector incident;
	float power[3];
//	float phi, theta; redundant, I guess after we have position
	bool is_direct;

public:
	float distance;
	Photon() {
		power[0] = 1.f;
		power[1] = 1.f;
		power[2] = 1.f;
		is_direct = false;
	};

	Photon(float color[], float Kd) {
		power[0] = color[0] * Kd;
		power[1] = color[1] * Kd;
		power[2] = color[2] * Kd;
		is_direct = false;
	};
	Photon(Vector pos) {
		position = pos;
		power[0] = 1.f;
		power[1] = 1.f;
		power[2] = 1.f;
		is_direct = false;
	}

	void set_incident(Vector inc);
	Vector get_incidence();
	Vector get_position();
	float get_axis(int dim);
	int get_dimension();
	void set_flag(bool f);
	void set_position(Vector position);
	float get_powerr();
	float get_powerg();
	float get_powerb();
	void set_power(float Kd);
	void set_power(Color color);
};

#endif /* PHOTON_H_ */
