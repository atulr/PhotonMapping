/*
 * shader.cc
 *
 *  Created on: Oct 4, 2011
 *      Author: atulrungta
 */
#include "trax.hpp"
#include "shader.h"

// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

float MAX_DISTANCE = 17.f;

#define PI 3.14159268

bool inline close(Vector vector1, Vector vector2) {
	float x = vector1.getx() - vector2.getx();
	float y = vector1.gety() - vector2.gety();
	float z = vector1.getz() - vector2.getz();
	if (x*x + y*y + z*z < MAX_DISTANCE*MAX_DISTANCE)
		return true;
	return false;
}

inline float max(float val1, float val2) {
	if (val1 > val2)
		return val1;
	return val2;
}

inline Vector normal(Trigonum triangle) {
	Vector edge1 = triangle.vertex1().sub(triangle.vertex2());
	Vector edge2 = triangle.vertex2().sub(triangle.vertex3());;

	Vector n = edge1.cross(edge2);
	return n.normalize();
}

Color Shader::lambertian(BVH &bvh, HitRecord hit_record, Ray ray, PointLight point_light, Color ambient_light, Photon photons[], int size) {
	float power[3] = {0.f, 0.f, 0.f};
	float costheta, cosphi;
	int foo = 0, num_of_photons = 0;
	Color light;
	Color back(.561f, .729f, .988f), indirect;
	if (hit_record.did_hit()) {
			Ray ray_to_light_source;
			Trigonum tri = hit_record.obj_id();
			Vector hit_position = ray.get_origin().add((ray.get_direction().scmult(hit_record.min_t())));
			Vector N = normal(tri);
			costheta = N.dot(ray.get_direction().normalize());
			if (costheta > 0.f)
				N = N.scmult(-1.f);

			Vector L = point_light.get_position().sub(hit_position);
			Vector Ln = L.normalize();
			cosphi = N.dot(Ln);
			ray_to_light_source.set_origin(hit_position);
			ray_to_light_source.set_direction(Ln);
			if (cosphi > 0.f) {
				if (!tri.intersects_other_triangles(bvh, hit_record, ray_to_light_source, L.length())) {
					light = light.add(point_light.get_color().times((float)(tri.Kd() * cosphi)));
				}
			}else{
				//it's a shadow with ambient lighting :D:D:D
			}

			light = light.times(tri.surface_color());
			return light;
		}
	else
		return back;

}

Color Shader::indirect(Photon photons[], HitRecord hit_record, Ray ray, int size) {
	float power[3] = {0.f, 0.f, 0.f};
	Ray ray_to_light_source;
	int num_of_photons = 0;
	Color back(0.f, 0.f, 0.f);
	Trigonum tri = hit_record.obj_id();
	Vector hit_position = ray.get_origin().add((ray.get_direction().scmult(hit_record.min_t())));

	Vector N = normal(tri);
	for (int i = 0; i < size; i++) {
		if (close(photons[i].get_position(), hit_position)) {
			num_of_photons++;
			power[0] += photons[i].get_powerr();
			power[1] += photons[i].get_powerg();
			power[2] += photons[i].get_powerb();
			if (num_of_photons > 10)
				break;
		}
	}


	if (num_of_photons) {
		power[0] /= (num_of_photons);
		power[1] /= (num_of_photons);
		power[2] /= (num_of_photons);
		Color light(power[0], power[1], power[2]);
		light = light.times(tri.surface_color());
		return light;
	}
	else
		return back;
}

