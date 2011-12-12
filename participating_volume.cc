/*
 * participating_volume.cc
 *
 *  Created on: Dec 11, 2011
 *      Author: atulrungta
 */
#include "trax.hpp"
#include "participating_volume.h"

bool ParticipatingVolume::in_volume(Vector position) {
	if (position.getx() > plane1().getx() && position.getx() < plane2().getx() && position.gety() > plane1().gety() && position.gety() < plane2().gety() && position.getz() > plane1().getz() && position.getz() < plane2().getz()) {
		return true;
	}
		return false;
}

Vector ParticipatingVolume::plane1() {
	return P1;
}

Vector ParticipatingVolume::plane2() {
	return P2;
}

void ParticipatingVolume::swap(float &t1, float &t2) {
	float temp;
	temp = t1;
	t1 = t2;
	t2 = temp;
}

bool ParticipatingVolume::intersect(Ray &ray, float &t_min, float &t_max) {
	float tx1, tx2, ty1, ty2, tz1, tz2, tnear, tfar;
	tnear = -9999999999.f;
	tfar = 9999999999.f;

	tx1 = (float)(P1.getx() - ray.get_origin().getx())/ ray.get_direction().getx();
	tx2 = (float)(P2.getx() - ray.get_origin().getx())/ ray.get_direction().getx();
	if (tx1 > tx2)
		swap(tx1, tx2);
	if (tx1 > tnear)
		tnear = tx1;
	if (tx2 < tfar)
		tfar = tx2;
	if (tnear > tfar || tfar < 0)
		return false;

	ty1 = (float)(P1.gety() - ray.get_origin().gety())/ ray.get_direction().gety();
	ty2 = (float)(P2.gety() - ray.get_origin().gety())/ ray.get_direction().gety();

	if (ty1 > ty2)
		swap(ty1, ty2);
	if (ty1 > tnear)
		tnear = ty1;
	if (ty2 < tfar)
		tfar = ty2;
	if (tnear > tfar || tfar < 0)
		return false;

	tz1 = (float)(P1.getz() - ray.get_origin().getz())/ ray.get_direction().getz();
	tz2 = (float)(P2.getz() - ray.get_origin().getz())/ ray.get_direction().getz();

	if (tz1 > tz2)
		swap(tz1, tz2);
	if (tz1 > tnear)
		tnear = tz1;
	if (tz2 < tfar)
		tfar = tz2;
	if (tnear > tfar || tfar < 0)
		return false;
	t_min = tnear;
	t_max = tfar;
	return true;
}

bool ParticipatingVolume::within(Ray &ray) {
	float tx1, tx2, ty1, ty2, tz1, tz2, tnear, tfar;
	tnear = -9999999999.f;
	tfar = 9999999999.f;

	tx1 = (float)(P1.getx() - ray.get_origin().getx())/ ray.get_direction().getx();
	tx2 = (float)(P2.getx() - ray.get_origin().getx())/ ray.get_direction().getx();
	if (tx1 > tx2)
		swap(tx1, tx2);
	if (tx1 > tnear)
		tnear = tx1;
	if (tx2 < tfar)
		tfar = tx2;
	if (tnear > tfar || tfar < 0)
		return false;

	ty1 = (float)(P1.gety() - ray.get_origin().gety())/ ray.get_direction().gety();
	ty2 = (float)(P2.gety() - ray.get_origin().gety())/ ray.get_direction().gety();

	if (ty1 > ty2)
		swap(ty1, ty2);
	if (ty1 > tnear)
		tnear = ty1;
	if (ty2 < tfar)
		tfar = ty2;
	if (tnear > tfar || tfar < 0)
		return false;

	tz1 = (float)(P1.getz() - ray.get_origin().getz())/ ray.get_direction().getz();
	tz2 = (float)(P2.getz() - ray.get_origin().getz())/ ray.get_direction().getz();

	if (tz1 > tz2)
		swap(tz1, tz2);
	if (tz1 > tnear)
		tnear = tz1;
	if (tz2 < tfar)
		tfar = tz2;
	if (tnear > tfar || tfar < 0)
		return false;
	return true;
}


