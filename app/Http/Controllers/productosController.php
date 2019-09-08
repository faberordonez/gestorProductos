<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App;

class productosController extends Controller
{
    public function index() {
        $productos = App\Producto::all();
        return view('productos/listar',compact('productos'));
    }

    public function detalle($id){//recibe parametro enviado en la ruta
        $productos = App\Producto::findOrFail($id);//valida id si no redirige a 404
        //$producto captura detalles del producto con $id.
        return view ('productos.detalle',compact('productos'));//(. es igual /)

    }
    public function crear(Request $request){
      //return $request->all();#para verificar

      $request->validate([
        'nombreProd'=>'required',
        'npProd'=>'required',
        'descripcionProd'=>'required',
        'mejorasProd'=>'required',
        'precioDistProd'=>'required',
        'precioUsrProd'=>'required', 
        'precioMlProd'=>'required',
        'precioLnProd'=>'required',
        'precioExProd'=>'required',
        'inventarioProd'=>'required',
        'precioEx'=>'required',
        'tipoProducto_id'=>'required',
        'marca_id'=>'required',
      ]);

      $productoNuevo= new App\Producto;
      $productoNuevo->nombreProd = $request->nombreProd;
      $productoNuevo->npProd = $request->npProd;
      $productoNuevo->descripcionProd = $request->descripcionProd;
      $productoNuevo->mejorasProd=$request->mejorasProd;
      $productoNuevo->precioDistProd=$request->precioDistProd;
      $productoNuevo->precioUsrProd=$request->precioUsrProd;
      $productoNuevo->precioMlProd=$request->precioMlProd;
      $productoNuevo->precioLnProd=$request->precioLnProd;
      $productoNuevo->precioExProd=$request->precioExProd;
      $productoNuevo->inventarioProd=$request->inventarioProd;
      $productoNuevo->tipoProducto_id=$request->tipoProducto_id;
      $productoNuevo->marca_id=$request->marca_id;

      $productoNuevo->save();
      return back()->with('mensaje','Producto Creado Satisfactoriamente');//nombe,valor msj
    }

    public function editar($id){
      $producto = App\Producto::findOrFail($id);
      return view ('productos.editar',compact('producto'));
    }
    public function update(Request $request, $id){
        //return $request->all();#para verificar
        /* $request->validate([
          'nombreProd'=>'required',
          'npProd'=>'required',
          'descripcionProd'=>'required',
          'mejorasProd'=>'required',
          'precioDistProd'=>'required',
          'precioUsrProd'=>'required', 
          'precioMlProd'=>'required',
          'precioLnProd'=>'required',
          'precioExProd'=>'required',
          'inventarioProd'=>'required',
          'precioEx'=>'required',
          'tipoProducto_id'=>'required',
          'marca_id'=>'required',
        ]);*/

        $productoUpdate = App\Producto::findOrFail($id);
        $productoUpdate->nombreProd = $request->nombreProd;
        $productoUpdate->npProd = $request->npProd;
        $productoUpdate->descripcionProd = $request->descripcionProd;
        $productoUpdate->mejorasProd=$request->mejorasProd;
        $productoUpdate->precioDistProd=$request->precioDistProd;
        $productoUpdate->precioUsrProd=$request->precioUsrProd;
        $productoUpdate->precioMlProd=$request->precioMlProd;
        $productoUpdate->precioLnProd=$request->precioLnProd;
        $productoUpdate->precioExProd=$request->precioExProd;
        $productoUpdate->inventarioProd=$request->inventarioProd;
        $productoUpdate->tipoProducto_id=$request->tipoProducto_id;
        $productoUpdate->marca_id=$request->marca_id;
  
        $productoUpdate->save();
        return back()->with('mensajeEditar','Producto Editado Satisfactoriamente');//nombe,valor msj
    }
}
