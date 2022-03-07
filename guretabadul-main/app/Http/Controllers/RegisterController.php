<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Idioma;

class RegisterController extends Controller
{

    public function index()
    {

        $idiomas = Idioma::all();

        return view('components.register',['idiomas' => $idiomas]);

    }

    public function create(){


    }

    public function store(Request $request){
        $datos=$request->all();

        $this->validate(request(),[
            'name'=>'required',
            'email'=>'required|email',
            'password'=>'required|confirmed',
            'role_id'=>'required',
            'id_idioma'=>'required',
        ]);

        $User= new User();
        $User->name=$datos["name"];
        $User->email=$datos["email"];
        $User->password=$datos["password"];
        $User->role_id=$datos["role_id"];
        $User->id_idioma=$datos["id_idioma"];


        $User->save();


        return \Redirect::back();


    }
}
