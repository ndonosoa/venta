<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sale;

class SaleController extends Controller
{
    public function store (Request $request){
        $sell = new Sale;

        $sell->client_id = $request->client_id;
        $total = 0;

        //Ciclo que recoge las id de los productos vendidos y genera el detalle de la compra
        //Además, se suman los subtotales para calcular el precio total de la compra
        foreach($request->product_id as $p_id){
          $detail = new Detail;
          $detail->product_id = $p_id;
          $detail->quantity = $request->quantity;
          $detail->price = $request->price;
          $detail->sub_total = $detail->quantity*$detail->price;
          $detail->sale_id = $sell->id;
          $detail->save();
          $total = $total + $detail->sub_total;
        }
        $sell->total = $total;
        $sell->save();
    }

    public function generar_venta($sell_id){
        $sell = Sale::find($sell_id);
        
        if($sell){
            $id = $sell->id;
            $client = $sell->client;
            $detail = Collect();

            //El ciclo recorre cada uno de los productos y se agrega el nombre del producto en particular
            foreach($sell->detail as $s_d){
                $agregar = $s_d->only('quantity','price','sub_total');
                $agregar["product"] = $s_d->product->name;
                $detail->push($agregar,'detail');
            }
            $total = $sell->total;
            return compact('id', 'client', 'detail', 'total');
        }
    }
}
