<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Grafica extends Model
{
    use HasFactory;
    use HasFactory;
    protected $fillable = ['users'];
    public $timestamps = false;

    public function cursos(){
        return $this->hasMany(User::class,'id');
    }
}
