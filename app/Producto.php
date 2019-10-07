<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    //Relaciones
    public function marcas()
    {
     return $this->belongsTo(Marca::class);
    }
}
