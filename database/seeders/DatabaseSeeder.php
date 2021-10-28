<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([
            'name' => 'Pahrurozi',
            'username' => 'pahrurozidev',
            'email' => 'pahrurozi17@gmail.com',
            'password' => bcrypt('12345')
        ]);

        User::factory(5)->create();

        Category::create([
            "name" => "Web Programming",
            "slug" => "web-programming"
        ]);

        Category::create([
            "name" => "Web Design",
            "slug" => "web-design"
        ]);

        Category::create([
            "name" => "Personal",
            "slug" => "personal"
        ]);

        Post::factory(25)->create();
    }
}
