<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class RelacionController extends Controller
{
    public function index(){
        $productos =Producto::all();
        dd($productos);
        return view('seccion.productos', compact('productos'));
    }
}
