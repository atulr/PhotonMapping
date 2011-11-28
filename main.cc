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

int bar = 0;

inline PointLight loadLightFromMemory(int addr) {
  return PointLight(loadFooFromMemory(addr), Color(1.f, 1.f, 1.f));
}

int main()
{	//might have to change the tree impl..
	trax_setup();
	int xres = loadi( 0, 1 );
	int yres = loadi( 0, 4 );
	int start_fb = GetFrameBuffer();
	float inv_width = loadf(0, 2);
	float inv_height = loadf(0, 5);
	int num_of_samples = 5, depth = 0, max_depth = 5, max_bounces = 6, absorbed = 0, bounces = 0;
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
	int count = 0, num_of_photons = 1000, iterator = 0;
	float Kd = 0.7f;
	Photon indirect_photons[num_of_photons * 4], indirect_heap[num_of_photons];
//	first pass, create photon map

//use the hemisphere thing for photon generation..

	Vector light_position = loadFooFromMemory(loadi(0, 12));
	Vector ray_origin = light_position;

	while(iterator < num_of_photons) { //move this to a function..this doesn't feel right!!
		while(!absorbed && bounces < max_bounces) {
			bounces++;
			Vector direction = generate_random_direction();
			Photon photon;
			Ray ray(ray_origin, direction);
			HitRecord hit_record;
			bvh.intersect(hit_record, ray);
			if (hit_record.did_hit()) {
				//flip the normal..
				Kd = hit_record.obj_id().Kd();
				photon.set_power(Kd);//find a way to get the material's Kd value and color... assigning the color of the material to the photon doesn't seem right... what's the use of the flux then ?????
				photon.set_position(hit_record.hit_position(ray));
				map.store(photon);
				ray_origin = hit_record.hit_position(ray);
			}
		}
		iterator++;

		bounces = 0;
		absorbed = 0;
	}

	map.balance();

//figure out a way to bounce photons around... and multiply the photons with the Kd of the material they intersect

	//map.generate(indirect_photons, indirect_heap, count, 0);
//
int foo = 0;
	for(int pix = atomicinc(0); pix < xres*yres; pix = atomicinc(0)){
		int i = pix / xres;
		int j = pix % xres;
		float x = (float)(2.f * (j - xres/2.0f + 0.5f)/xres);
		float y = (float)(2.f * (i - yres/2.0f + 0.5f)/yres);
		result = col;
//		for (int i = 0; i < num_of_samples; i++) {
//			attenuation = Color(1.f, 1.f, 1.f);
//			x_off = (trax_rand() - .5f) * 2.f;
//			y_off = (trax_rand() - .5f) * 2.f;
//			x_off *= inv_width;
//			y_off *= inv_height;
			camera.make_ray(ray, x, y);
			HitRecord hit_record;
			bvh.intersect(hit_record, ray);

//			result = shade.lambertian(bvh, hit_record, ray, light, ambient_light, indirect_photons, count);
			result = shade.indirect_illumination(hit_record, ray, map);


//		}
//			trax_printf(foo++);
//		result = result.times(1.f/num_of_samples);
			image.set(i, j, result);
	}

	trax_cleanup();
}
