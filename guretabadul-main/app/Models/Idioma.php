<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Idioma extends Model
{
    use HasFactory, Notifiable;

    protected $table ="idioma";

    public function idioma(){
        return $this->hasMany(Idioma::class,'id');
    }
    protected $fillable = [
        'id', 'cod', 'nombre',
    ];
}
