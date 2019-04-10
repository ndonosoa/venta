<?php

use App\Detail;
use Illuminate\Support\Str;
use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(Detail::class, function (Faker $faker) {
    return [
        'product_id' => $faker->numberBetween(3,32),
        'sale_id' => $faker->numberBetween(3,12),
        'quantity' => rand(1,10),
        'sub_total' => rand(100,5000),
        'price' => rand(100,5000),
    ];
});