<?php

namespace Database\Seeders;

use App\Models\Brand;
use Illuminate\Database\Seeder;
use Faker;

class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();

        foreach (range(1,20) as $index){
        Brand::create([
            'brand_name'=>$faker->name,
            'brand_slug'=>$faker->name,
            'status'=>'1',
        ]);
      }
    }
}
