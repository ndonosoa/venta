<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Client;

class ClientController extends Controller
{
   public function store(Request $request){
       $requestdata = $request->all();
       Client::create($requestdata);
   }
}
