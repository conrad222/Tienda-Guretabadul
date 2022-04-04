<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ImagenesTaller extends Model
{
    use HasFactory;
    protected $table = 'imagenes_talleres';

    // protected $fillable = [
    //     'ruta','taller_id',
    // ];

    public function taller(){
        return $this->belongsTo(Taller::class,'taller_id','id');
    }
}
