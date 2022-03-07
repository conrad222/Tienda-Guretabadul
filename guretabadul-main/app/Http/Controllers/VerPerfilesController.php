<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Actividades;
use App\Models\Cursos;
use App\Models\Intercambios;
use App\Models\User;

class VerPerfilesController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();

        return view('components.modal_ver_perfiles',['users'=> $users]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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

           );

           $messages= array (
            'name.required' => 'Campo nombre es requerido',
            'email.required' => 'Campo email es requerido',
            'password.required' => 'Campo password es requerido',
            'role_id.required' => 'Campo role_id es requerido',
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

        try{
            //Almacenar en la BD
            $users->save();
            //Almacenar el archivo en el servidor
                //Volver al listado
                //Mensaje de OK
                \Session::flash('tipoMensaje','success');
                \Session::flash('mensaje','Actividad creada correctamente');

        }catch(\Exception $e){
            //echo $e->getMessage();
            //Mensaje de KO
            \Session::flash('tipoMensaje','danger');
            \Session::flash('mensaje','Error al crear la actividad');


        }
        return \Redirect::back();
    }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $users)
    {
        $users->delete();
        \Session::flash('tipoMensaje','info');
        \Session::flash('mensaje','Actividad borrada correctamente');
        return \Redirect::back();
    }
}