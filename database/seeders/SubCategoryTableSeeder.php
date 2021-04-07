<?php

namespace Database\Seeders;

use App\Models\SubCategory;
use Illuminate\Database\Seeder;
use Faker;
class SubCategoryTableSeeder extends Seeder
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
            SubCategory::create([
                'cat_id'=>rand(1,9),
                'sub_cat'=>$faker->name,
                'status'=>'1',
            ]);
        }
    }
}
