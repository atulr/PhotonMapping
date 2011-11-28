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

float MAX_DISTANCE = 0.7f;
float exposure = 1.0f;
float sqRadius = 0.4f;
float gSqDist;

#define PI 3.14159268

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

inline bool distance(Vector position, Vector photon_position, float sqradius) { //Gated Squared Distance
  float c = position.getx() - photon_position.getx();          //Efficient When Determining if Thousands of Points
  float d = c*c;
 	  	  	  //Are Within a Radius of a Point (and Most Are Not!)
  if (d > sqradius) return false; //Gate 1 - If this dimension alone is larger than
  c = position.gety() - photon_position.gety();                //         the search radius, no need to continue
  d += c*c;
  if (d > sqradius) return false; //Gate 2
  c = position.getz() - photon_position.getz();
  d += c*c;
  if (d > sqradius) return false; //Gate 3
  gSqDist = d;
  return true ; //Store Squared Distance Itself in Global State
}


Color Shader::lambertian(BVH &bvh, HitRecord hit_record, Ray ray, PointLight point_light, Color ambient_light, Photon heap[], int size) {

	float costheta, cosphi;
	Color back(.561f, .729f, .988f), indirect;
	if (hit_record.did_hit()) {
	Ray ray_to_light_source;
	Trigonum tri = hit_record.obj_id();
	Vector hit_position = ray.get_origin().add((ray.get_direction().scmult(hit_record.min_t())));
	Vector N = normal(tri);
	costheta = N.dot(ray.get_direction().normalize());
	if (costheta > 0.f)
		N = N.scmult(-1.f);

	Color light = ambient_light.times(tri.Ka());

	Vector L = point_light.get_position().sub(hit_position);
	Vector Ln = L.normalize();
	cosphi = N.dot(Ln);
	ray_to_light_source.set_origin(hit_position);
	ray_to_light_source.set_direction(Ln);
	if (cosphi > 0.f) {
		if (!tri.intersects_other_triangles(bvh, hit_record, ray_to_light_source, L.length())) {
			light = light.add(point_light.get_color().times((float)(tri.Kd() * cosphi)));
		}else{
			 //it's a shadow with ambient lighting :D:D:D
		}
	}
	light = light.times(tri.surface_color());
//	indirect = indirect_illumination(hit_position, N, tri.surface_color(), heap, size);
	return light.add(indirect);
	}else
		return back;

}

Color Shader::indirect_illumination(HitRecord hit_record, Ray ray, PhotonMap map ) {
	Color back(1.f, 1.f, 1.f);
	if(hit_record.did_hit()){
	float irr[3] = {1.f, 1.f, 1.f}, color[3];
	int nphotons = 10;
	float max_dist = 0.7f;
	Vector hit_position = ray.get_origin().add((ray.get_direction().scmult(hit_record.min_t())));
//	hit_position = hit_position.normalize();
	Trigonum tri = hit_record.obj_id();
	Vector N = normal(tri);
	map.irradiance_estimate(irr, hit_position, N, max_dist, nphotons);
	color[0]+=(irr[0]*tri.surface_color().red());
	color[1]+=(irr[1]*tri.surface_color().green());
	color[2]+=(irr[2]*tri.surface_color().blue());

	Color light(color[0], color[1], color[2]);
	return light;
	}
	return back;
}

