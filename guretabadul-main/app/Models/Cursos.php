<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cursos extends Model
{
    use HasFactory;
    // Nombre de la tabla en la bd
    protected $table ="cursos";
    // timestamp
    public $timestamps = false;
    
    public function cursos(){
        return $this->hasMany(Cursos::class,'id');
    }}