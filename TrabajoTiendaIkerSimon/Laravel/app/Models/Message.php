<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    use HasFactory;
    protected $table = 'conversacion';

    public function mensajes(){
        return $this->hasMany(Message::class,'id');
    }
}
