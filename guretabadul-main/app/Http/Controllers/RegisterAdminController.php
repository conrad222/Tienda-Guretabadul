<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Idioma;
use App\Models\User;

class RegisterAdminController extends Controller
{
    //{

    public function index()
    {

        $idiomas = Idioma::all();

        return view('components.modal_crear_admin2',['idiomas' => $idiomas]);

    }

    public function create(){


    }

    public function store(Request $request)
    {
        $datos=$request->all();

        $this->validate(request(),[
            'name'=>'required',
            'email'=>'required|email',
            'password'=>'required|confirmed',
            'role_id'=>'required',
            'id_idioma'=>'required',
        ]);

        $nuevoUser= new User();
        $nuevoUser->name=$datos["name"];
        $nuevoUser->email=$datos["email"];
        $nuevoUser->password=$datos["password"];
        $nuevoUser->role_id=$datos["role_id"];
        $nuevoUser->id_idioma=$datos["id_idioma"];


        $nuevoUser->save();


        return \Redirect::back();

    }
}
