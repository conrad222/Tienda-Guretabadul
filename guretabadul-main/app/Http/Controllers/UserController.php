<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Actividades;
use App\Models\Cursos;
use App\Models\Intercambios;
use App\Models\User;
use App\Models\Role;
use App\Models\Idioma;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();
        $roles = Role::all();
        $idiomas = Idioma::all();

        return view('components.modal_crear_admin2',['users'=> $users,'roles'=> $roles, 'idiomas'=> $idiomas,]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $datos=$request->all();

        $rules= array (
            'name' => 'required',
            'email' =>'required',
            'password' =>'required',
            'role_id' =>'required',
            'id_idioma' =>'required',

           );

           $messages= array (
            'name.required' => 'Campo nombre es requerido',
            'email.required' => 'Campo email es requerido',
            'password.required' => 'Campo password es requerido',
            'role_id.required' => 'Campo rol es requerido',
            'id_idioma.required' => 'Campo idioma es requerido',
           );

           $validador= Validator::make($datos,$rules,$messages);
           if($validador->fails()){
            $errors=$validador->messages();
            $errors->add('mierror','Se ha cancelado la creación de la actividad.');
            \Session::flash('tipoMensaje','danger');
            \Session::flash('mensaje','Error, no se cumplen las validaciones. Compruebe todos los campos');
            //Volver con los errores

            return \Redirect::back()->withInput()->withErrors($validador);
        }else{
                 //Generar actividad
                $users=new User();
                $users->name=$datos["name"];
                $users->email=$datos["email"];
                $users->password=$datos["password"];
                $users->role_id=$datos["role_id"];
                $users->id_idioma=$datos["id_idioma"];

        try{
            //Almacenar en la BD
            $users->save();
            //Almacenar el archivo en el servidor
                //Volver al listado
                //Mensaje de OK
                \Session::flash('tipoMensaje','success');
                \Session::flash('mensaje','Usuario creado correctamente');

        }catch(\Exception $e){
            //echo $e->getMessage();
            //Mensaje de KO
            \Session::flash('tipoMensaje','danger');
            \Session::flash('mensaje','Error al crear el usuario');


        }
        return \Redirect::back();
    }
    }


}
