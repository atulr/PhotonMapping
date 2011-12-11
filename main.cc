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

inline bool in_volume(Ray ray) {
	Vector ray_vector = ray.get_origin().add(ray.get_direction());
	if (ray_vector.getx() > 90 && ray_vector.getx() < 300 && ray_vector.gety() > 80 && ray_vector.gety() < 300 && ray_vector.getz() > 300 && ray_vector.getz() < 350) {
		return true;
	}
		return false;
}

int bar = 0;

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
	int count = 0, num_of_photons = 125000, iterator = 0;
	Photon indirect_photons[num_of_photons * 2];
//	first pass, create photon map

	Vector light_position = loadFooFromMemory(loadi(0, 12));
	Vector ray_origin = light_position;
//Okay, time do some ray marching.. :)
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
			if (bounces > 1) {
				if (in_volume(random_ray)) {

				}
			}
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
			attenuation_factor /= 2.f;
		}
		iterator++;

		bounces = 0;
		absorbed = 0;
	}

int foo = 0;
	for(int pix = atomicinc(0); pix < xres*yres; pix = atomicinc(0)){
		int i = pix / xres;
		int j = pix % xres;
		float x = (float)(2.f * (j - xres/2.0f + 0.5f)/xres);
		float y = (float)(2.f * (i - yres/2.0f + 0.5f)/yres);
		result = col;
			camera.make_ray(ray, x, y);
			HitRecord hit_record;
			bvh.intersect(hit_record, ray);
//			trax_printf(foo++);
			result = shade.lambertian(bvh, hit_record, ray, light, ambient_light, indirect_photons, count);
			result = result.add(shade.temp(indirect_photons, hit_record, ray, count).times(1.f));

			image.set(i, j, result);
	}

	trax_cleanup();
}
