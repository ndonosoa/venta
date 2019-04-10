<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Product extends Controller
{
    public function store(Request $request){
        $requestdata = $request->all();
        Product::create($requestdata);
    }
}
