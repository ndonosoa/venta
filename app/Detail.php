<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Detail extends Model
{
    protected $table = 'detail';

    protected $primaryKey = 'id_detail';
 
    protected $fillable = ['product_id','quantity','price','sub_total', 'sale_id'];
 
 
    //Relación para acceder a los productos a través del detalle
    public function product(){
        return $this->belongsTo('App\Product', 'product_id', 'id_product');
    }

    //Relación entre la venta y sus registros de detalle, un detalle pertenece solo a una venta
    public function sale(){
        return $this->belongsTo('App\Sale', 'sale_id', 'id');
    }
}
