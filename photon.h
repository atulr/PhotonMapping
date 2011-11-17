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

class Photon {
private:
	Vector position;
	float power[3];
	float phi, theta;
	int flag;

public:
	Photon() {};
	Photon(Vector pos) {
		position = pos;
	}
	Vector get_position();
	float get_axis(int dim);
	void set_flag(int f);
	void set_position(Vector position);
	float get_power();
	void set_power(float power[]);
};

#endif /* PHOTON_H_ */
