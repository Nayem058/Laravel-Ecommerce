<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory()->create();

        $this->call([
            UserSeeder::class,
            BrandSeeder::class,
            CategoryTableSeeder::class,
            SubCategoryTableSeeder::class
        ]);
    }
}
