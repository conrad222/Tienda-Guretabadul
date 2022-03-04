<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class CursosNumero extends Model
{
    use HasFactory, Notifiable;

    protected $table ="cursos";

    public function cn(){
        return $this->hasMany(CursosNumero::class,'id');
    }
    protected $fillable = [
        'id', 'id_curso', 'nombre',
    ];
}
