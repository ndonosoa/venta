<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'product';

    protected $primaryKey = 'id_product';
 
    protected $fillable = ['name'];
 
    public $timestamps = false;
    //Relación para llamar a los detalles de venta en los cuales aparece dicho producto
    public function detail(){
        return $this->hasMany('App\Detail', 'product_id', 'id_product');
     }
}
