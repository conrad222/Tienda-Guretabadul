<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Mensaje;
use App\Models\User;
use App\Models\Role;
use Illuminate\Support\Facades\Validator;


class MessagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();
        $mensajes = Mensaje::all();

        $usuarios= User::where('role_id', 1)->get();

        return view('secciones.mensajes',['users'=>$users,'mensajes'=>$mensajes,'usuarios'=>$usuarios]);
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
            'email_user1' =>'required',
            'email_user2' =>'required',
            'contenido' => 'required',
       

           );

           $messages= array (
            'email_user1.required' => 'Campo email2 es requerido',
            'email_user2.required' => 'Campo email2 es requerido',
            'contenido.required' => 'Campo contenido es requerido',
           
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
                $mensajes=new Mensaje();
                $mensajes->email_user1=$datos["email_user1"];
                $mensajes->email_user2=$datos["email_user2"];
                $mensajes->contenido=$datos["contenido"];

                
              
                
        try{
            //Almacenar en la BD
            $mensajes->save();
            //Almacenar el archivo en el servidor
                //Volver al listado
                //Mensaje de OK
                \Session::flash('tipoMensaje','success');
                \Session::flash('mensaje','Mensaje creado correctamente');

        }catch(\Exception $e){
            //echo $e->getMessage();
            //Mensaje de KO
            \Session::flash('tipoMensaje','danger');
            \Session::flash('mensaje','Error al crear el mensaje');

        }
        return \Redirect::back();
    }

    }

    public function user(Request $request)
    {
        $datos=$request->all();

        $rules= array (
            'name' => 'required',
            'email' =>'required',

           );

           $messages= array (
            'name.required' => 'Campo nombre es requerido',
            'email.required' => 'Campo email es requerido',
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
                $mensajes=new User();
                $mensajes->name=$datos["name"];
                $mensajes->email=$datos["email"];

        try{
            //Almacenar en la BD
            $mensajes->save();
            //Almacenar el archivo en el servidor
                //Volver al listado
                //Mensaje de OK
                \Session::flash('tipoMensaje','success');
                \Session::flash('mensaje','Usuario creado correctamente');

        }catch(\Exception $e){
            dd($e);
            //echo $e->getMessage();
            //Mensaje de KO
            \Session::flash('tipoMensaje','danger');
            \Session::flash('mensaje','Error al crear el usuario');


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
    public function destroy($id)
    {
        //
    }
}
