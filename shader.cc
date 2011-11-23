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
float exposure = 50.0f;
float sqRadius = 0.7f;
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


Color Shader::lambertian(BVH &bvh, HitRecord hit_record, Ray ray, PointLight point_light, Color ambient_light) {

	float costheta, cosphi;
	Color back(.561f, .729f, .988f);
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
	return light;
	}else
		return back;

}

Color Shader::test(BVH &bvh, HitRecord hit_record, Ray ray, PointLight point_light, Color ambient_light, PhotonMap map, Photon heap[], int size) {
	float costheta, cosphi;
	Color back(.561f, .729f, .988f), temp;
	if (hit_record.did_hit()) {
		Ray ray_to_light_source;
		Photon nearest[10000];
		int count_nearest = 0;
		Trigonum tri = hit_record.obj_id();
		Vector hit_position = ray.get_origin().add((ray.get_direction().scmult(hit_record.min_t())));
		Vector N = normal(tri);
//	costheta = N.dot(ray.get_direction().normalize());
//	if (costheta > 0.f)
//		N = N.scmult(-1.f);
//

//	Vector L = point_light.get_position().sub(hit_position);
//	Vector Ln = L.normalize();
//	cosphi = N.dot(Ln);
//	ray_to_light_source.set_origin(hit_position);
//	ray_to_light_source.set_direction(Ln);
//	if (cosphi > 0.f) {
//		if (!tri.intersects_other_triangles(bvh, hit_record, ray_to_light_source, L.length())) {
//			light = light.add(point_light.get_color().times((float)(tri.Kd() * cosphi)));
//		}else{
//			 //it's a shadow with ambient lighting :D:D:D
//		}
//	}
//	map.locate_photons(hit_position, MAX_DISTANCE*MAX_DISTANCE, 0,nearest, heap, size, count_nearest);
//	 //find a way to check if the heap is empty
//		Photon tempPhotons[10000];
//		//assumes color is already set to 0 or just want to add to it
//		float temp;
//		Vector temp_dir;
//		float irr[3], color[3];
//		irr[0]=0;irr[1]=0;irr[2]=0;
//		Photon tempPhoton=nearest[count_nearest];
//		float maxD=MAX_DISTANCE*MAX_DISTANCE;
//		while(count_nearest)//sum up the powers
//		{
//			//might make sense to implement a stack class..later :D
//			tempPhoton=nearest[count_nearest--];
//			temp_dir= tempPhoton.get_incidence().scmult(-1.f);
//			temp=max(temp_dir.dot(N), 0.0);
//
//			irr[0] += temp*tempPhoton.get_powerr();
//			irr[1] += temp*tempPhoton.get_powerg();
//			irr[2] += temp*tempPhoton.get_powerb();
//		}
//			color[0]+=(irr[0]*tri.surface_color().red())/(PI*maxD*size);
//			color[1]+=(irr[1]*tri.surface_color().green())/(PI*maxD*size);
//			color[2]+=(irr[2]*tri.surface_color().blue())/(PI*maxD*size);
//			Color light(color[0], color[1], color[2]);
//	//fix the lighting bit..
////	light = light.times(tri.surface_color());
//	return light;

	  for (int i = 0; i < size; i++){                    //Photons Which Hit Current Object
	    if (distance(hit_position, heap[i].get_position(), sqRadius)){           //Is Photon Close to Point?
	      float weight = max(0.0, N.dot(heap[i].get_position()) * -1.f);   //Single Photon Diffuse Lighting
	      weight *= (1.0 - sqrt(gSqDist)) / exposure;                    //Weight by Photon-Point Distance
	      Color energy(heap[i].get_powerr() + weight, heap[i].get_powerg() + weight, heap[i].get_powerb() + weight);
	      energy = energy.times(tri.surface_color());//Add Photon's Energy to Total
	      temp = energy;
	   }
	}
	  return temp;
	}else
		return back;

}

