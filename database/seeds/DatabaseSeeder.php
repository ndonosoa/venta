<?php

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
        /*factory(App\Client::class, 10)->create()->each(function ($client) {
            $client->sale()->save(factory(App\Sale::class)->make());
        });
        factory(App\Product::class, 30)->create();*/
        factory(App\Detail::class, 60)->create();
    }
}
