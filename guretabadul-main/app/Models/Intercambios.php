<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Intercambios extends Model
{
    use HasFactory;
    protected $table ="intercambios";

    public function intercambios(){
        return $this->hasMany(Intercambios::class,'id');
    }}
