#include "trax.hpp"
#include "main.h"


// Only include stdio for printf on the non-trax version
#if TRAX==0
#include <stdio.h>
#endif

inline Vector loadFooFromMemory(const int &address) {
	float x, y, z;
	x = loadf(address, 0);
	y = loadf(address, 1);
	z = loadf(address, 2);
	return Vector(x, y, z);
}

inline Vector generate_random_direction() {
	float x, y, z;
	do {
		x = (trax_rand() - 0.5f) * 2.f;
		y = (trax_rand() - 0.5f) * 2.f;
		z = (trax_rand() - 0.5f) * 2.f;
	}while (x*x + y*y + z*z > 1);
	Vector direction(x, y, z);
	return direction.normalize();

}

float MAX_RADIUS = 100.f;

bool inline close_enough(Vector vector1, Vector vector2) {
	float x = vector1.getx() - vector2.getx();
	float y = vector1.gety() - vector2.gety();
	float z = vector1.getz() - vector2.getz();
	if (x*x + y*y + z*z < MAX_RADIUS*MAX_RADIUS)
		return true;
	return false;
}


Color inline march(Ray &ray, int size, Photon volume_photons[], ParticipatingVolume volume, float tnear, float tfar) {
	float power[3] = {0.f, 0.f, 0.f};
	int num_of_photons = 0;
	Color volume_radiance;
	float step;
	step = tnear;
	Vector position;
//	Vector dir(position.getx() - volume.plane2().getx(), position.gety() - volume.plane2().gety(), position.getz() - volume.plane2().getz());
//	length = dir.length();
	while (step < tfar) {
		for (int j = 0 ; j< size; j++) {
			position = (ray.get_origin().add(ray.get_direction().scmult(step)));
			if (close_enough(volume_photons[j].get_position(), position)) {
				num_of_photons++;
				power[0] += volume_photons[j].get_powerr();
				power[1] += volume_photons[j].get_powerg();
				power[2] += volume_photons[j].get_powerb();
				if (num_of_photons > 20)
					break;
			}
			if (num_of_photons) {
//				power[0] /= (num_of_photons);
//				power[1] /= (num_of_photons);
//				power[2] /= (num_of_photons);
				Color light(power[0], power[1], power[2]);
				volume_radiance = light;
			}
		}

		step += 1.f;
	}
	return volume_radiance.times(1.f/step);
}


inline PointLight loadLightFromMemory(int addr) {
  return PointLight(loadFooFromMemory(addr), Color(1.f, 1.f, 1.f));
}

int main()
{
	trax_setup();
	int xres = loadi( 0, 1 );
	int yres = loadi( 0, 4 );
	int start_fb = GetFrameBuffer();
	float inv_width = loadf(0, 2);
	float inv_height = loadf(0, 5);
	int num_of_samples = 20, depth = 0, max_depth = 5, max_bounces = 3, absorbed = 0, bounces = 0;
	float t, x_off, y_off;
	
	PointLight light = loadLightFromMemory(loadi(0, 12)); //correct this

	Color ambient_light(0.f, 0.f, 0.f);
	Color result(0.f, 0.f, 0.f), attenuation,col;

	Image image(xres, yres, start_fb);

	PinHoleCamera camera(loadi(0, 10));
	Ray ray;
	PhotonMap map;
	int start_tris = loadi(0, 28);
	int num_tris = loadi(0, 29);
	Shader shade;
	int start_scene = loadi( 0, 8 );
	BVH bvh(start_scene);
	int count = 0, num_of_photons = 110000, iterator = 0, v_p_count = 0;
	Vector bounding_plane_2(314.001007f, 456.001007f, 330.001007f), bounding_plane_1(265.f, 296.f, 0.f);
	ParticipatingVolume volume(bounding_plane_1, bounding_plane_2);
	Photon indirect_photons[num_of_photons * 2], volume_photons[20000];
//	first pass, create photon map

	Vector light_position = loadFooFromMemory(loadi(0, 12));
	Vector ray_origin = light_position;

//Okay, time to do some ray marching.. :)

	while(iterator < num_of_photons) {
		float surface_color[3] = {0.f, 0.f, 0.f};
		float shadow_color[3] = {-0.25f, -0.25f, -0.25f};
		float Kd = 0.7f;
		while(!absorbed && bounces < max_bounces) {
			bounces++;
			float attenuation_factor = 1.f;
			Vector direction = generate_random_direction();
			Vector shadow_direction;
			Photon photon(surface_color, Kd);
			HitRecord hit_record;
			Ray random_ray(ray_origin, direction);
			bvh.intersect(hit_record, random_ray);
			if (hit_record.did_hit()) {
				surface_color[0] = hit_record.obj_id().surface_color().red() * attenuation_factor;
				surface_color[1] = hit_record.obj_id().surface_color().green() * attenuation_factor;
				surface_color[2] = hit_record.obj_id().surface_color().blue() * attenuation_factor;
				if (surface_color[0] + surface_color[1] + surface_color[2] > 3) { //weird hack.. some of the color values exceed 1!!!
					surface_color[0] *= .001f;
					surface_color[1] *= .001f;
					surface_color[2] *= .001f;
				}
				photon.set_position(hit_record.hit_position(random_ray));
				if (bounces > 1)
					indirect_photons[count++] = photon;
				else {
					//it's a direct photon :P
				}
				ray_origin = hit_record.hit_position(random_ray);
			}
			if (bounces > 1) {
				if (volume.within(random_ray)) {
					volume_photons[v_p_count++] = photon;
				}
			}
			attenuation_factor /= 2.f;
		}
		iterator++;

		bounces = 0;
		absorbed = 0;
	}

int foo = 0;
//use the box intersection code to see if the ray hit the bounding volume...
trax_printf(foo);
float tnear, tfar;
	for(int pix = atomicinc(0); pix < xres*yres; pix = atomicinc(0)){
		int i = pix / xres;
		int j = pix % xres;
		float x = (float)(2.f * (j - xres/2.0f + 0.5f)/xres);
		float y = (float)(2.f * (i - yres/2.0f + 0.5f)/yres);
		result = col;
			camera.make_ray(ray, x, y);
			HitRecord hit_record;
			bvh.intersect(hit_record, ray);
			result = shade.lambertian(bvh, hit_record, ray, light, ambient_light, indirect_photons, count);
			result = result.add(shade.indirect(indirect_photons, hit_record, ray, count).times(1.f));
			if (volume.intersect(ray, tnear, tfar)) {
				result = result.add(march(ray, v_p_count, volume_photons, volume, tnear, tfar));
				image.set(i, j, result);
			}
			image.set(i, j, result);
	}

	trax_cleanup();
}
