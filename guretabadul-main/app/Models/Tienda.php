<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tienda extends Model
{
    use HasFactory;
    // Nombre de la tabla en la bd
    protected $table ="tienda";
    // timestamp
    public $timestamps = false;
    
    public function cursos(){
        return $this->hasMany(Tienda::class,'id');
    }
}
