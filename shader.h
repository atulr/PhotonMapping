/*
 * shader.h
 *
 *  Created on: Oct 4, 2011
 *      Author: atulrungta
 */

#ifndef SHADER_H_
#define SHADER_H_

#include "hit_record.h"
#include "trigonum.h"
#include "ray.h"
#include "color.h"
#include "point_light.h"
#include "photon_map.h"
#include "photon.h"

class BVH;

class Shader{
	Color indirect_illumination(Vector hit_position, Vector normal, Color surface_color, Photon heap[], int size);

public:
	Color lambertian(BVH &bvh, HitRecord hit_record, Ray ray, PointLight lights, Color ambient_light, Photon heap[], int size);
};

#endif /* SHADER_H_ */
