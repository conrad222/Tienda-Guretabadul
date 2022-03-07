<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Actividades extends Model
{
    use HasFactory;
    protected $table ="actividades";
    public $timestamps = false;

    public function actividades(){
        return $this->hasMany(Actividad::class,'id');
    }}
