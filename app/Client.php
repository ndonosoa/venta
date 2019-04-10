<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Client extends Model
{
    protected $table = 'client';

    protected $primaryKey = 'id_client';
 
    protected $fillable = ['name','last_name'];
 
    //Relación para obtener las ventas realizadas hacia cada cliente
    public function sale(){
        return $this->hasMany('App\Sale', 'client_id', 'id_client');
     }
}
