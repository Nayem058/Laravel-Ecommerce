<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;
use Faker;

class CategoryTableSeeder extends Seeder
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
        Category::create([
            'category'=>$faker->name,
            'category_slug'=>$faker->name,
            'status'=>'1',
        ]);
      }
    }
}
