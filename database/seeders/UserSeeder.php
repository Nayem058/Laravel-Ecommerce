<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Faker;
use Illuminate\Validation\Rules\Unique;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->defaultUserInsert();
        $faker = Faker\Factory::create();
        
        foreach (range(1,9) as $index){
            User::create([
                'name'=>$faker->name,
                'email'=>$faker->unique()->email,
                'password'=>bcrypt($faker->password)
           ]);

        }
        
    }
    public function defaultUserInsert(){
        User::create([
            'name'=>'admin',
            'email'=>'admin@gmail.com',
            'password'=>bcrypt('12345678')
        ]);
    }
}
