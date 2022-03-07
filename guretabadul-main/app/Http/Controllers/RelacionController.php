<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class RelacionController extends Controller
{
    public function index(){
       
    }
    public function actividades(){
        $actividades =Actividad::all();
        dd($actividades);
        return view('seccion.productos', compact('actividades'));
    }
    public function intercambios(){
        $intercambios =Intercambios::all();
        dd($productos);
        return view('seccion.productos', compact('productos'));
    }
    public function cursos(){
        $cursos =Cursos::all();
        dd($cursos);
        return view('seccion.productos', compact('cursos'));
    }

}
