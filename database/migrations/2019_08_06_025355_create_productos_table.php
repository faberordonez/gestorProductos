<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('npProd')->unique();
            $table->string('nombreProd');
            $table->string('descripcionProd')->nullable();
            $table->string('mejorasProd')->nullable();
            $table->integer('precioDistProd')->nullable();
            $table->integer('precioUsrProd')->nullable();
            $table->integer('precioMlProd')->nullable();
            $table->integer('precioLnProd')->nullable();
            $table->integer('precioExProd')->nullable();
            $table->integer('inventarioProd')->nullable();
            $table->integer('tipoProducto_id')->nullable();
            $table->integer('marca_id')->nullable();

            //$table->foreign('tipoProducto_id')->references('id')->on('tipoProducto');
            //$table->foreign('marca_id')->references('id')->on('marcas');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('productos');
    }
}
