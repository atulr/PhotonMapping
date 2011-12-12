#ifndef __RAY_H__
#define __RAY_H__

#include "vector.h"
//#include "participating_volume.h"
//#include "color.h"
//#include "photon.h"
class Ray {
private:
	Vector origin;
	Vector direction;
public:
	Ray(){}
	Ray(Vector point, Vector vector) {
		origin = point;
		direction = vector;
	}
	void set_origin(Vector new_origin);
	void set_direction(Vector direction);
	Vector get_origin();
	Vector get_direction();
//	Color march(ParticipatingVolume volume, Photon volume_photons[]);
};

#endif
