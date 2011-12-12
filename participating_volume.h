/*
 * participating_volume.h
 *
 *  Created on: Dec 11, 2011
 *      Author: atulrungta
 */

#ifndef PARTICIPATING_VOLUME_H_
#define PARTICIPATING_VOLUME_H_

#include "vector.h"
#include "ray.h"

class ParticipatingVolume {
	Vector P1, P2;
	void swap(float &t1, float &t2);
public:
	ParticipatingVolume(Vector plane1, Vector plane2) {
		P1 = plane1;
		P2 = plane2;
	}
	Vector plane1();
	Vector plane2();
	bool in_volume(Vector pos);
	bool intersect(Ray &ray, float &t1, float &t2);
	bool within(Ray &ray);
};


#endif /* PARTICIPATING_VOLUME_H_ */
