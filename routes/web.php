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

use App\Libro;

Route::get('/productos','productosController@index')->name('productos.listar');
Route::get('/productos/{id}','productosController@verdetalle')->name('productos.verdetalle');
Route::get('/productos/detalle/{id}','productosController@detalle')->name('productos.detalle');//envia parametro recibido de la vista
Route::view('crear','productos.crear');
Route::post('/','productosController@crear')->name('productos.crear');
Route::get('/productos/editar/{id}','productosController@editar')->name('productos.editar');
Route::put('/productos/editar/{id}','productosController@update')->name('productos.update');

