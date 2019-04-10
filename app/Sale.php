<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Sale extends Model
{
    protected $table = 'sale';

    //protected $primaryKey = 'id'; Utiliza el campo "id" por defecto
 
    protected $fillable = ['client_id', 'total'];
 
     public $timestamps = false;
 
 
    /*public function detail(){
       return $this->hasMany('App\Detail', 'sale_id', 'id')->with(['product' => function($q){
          $q->select('name','id_product');
       }]);
    }*/

    public function detail(){
        return $this->hasMany('App\Detail', 'sale_id', 'id');
     }

    public function client(){
        return $this->belongsTo('App\Client', 'client_id', 'id_client')->select('name','last_name');
    }
    
}
