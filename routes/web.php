<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Ruta para el retorno de la venta según su id
Route::get('venta/{id_venta}', 'SaleController@generar_venta');
Route::post('new/sale', 'SaleController@store');
Route::post('new/product', 'ProductController@store');
Route::post('new/client', 'ClientController@store');
