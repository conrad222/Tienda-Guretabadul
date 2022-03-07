<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Actividades;
use App\Models\Cursos;
use App\Models\Intercambios;
use App\Models\User;

class IntercambiosAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $intercambios = Intercambios::all();


        return view('components.modal_admin_intercambios',['intercambios'=> $intercambios]);
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
            'nombre' => 'required',
            'precio' =>'required',
            'descripcion' =>'required',
            'tipo' => 'required',

           );

           $messages= array (
            'nombre.required' => 'Campo nombre es requerido',
            'precio.required' => 'Campo precio es requerido',
            'descripcion.required' => 'Campo descripción es requerido',
            'tipo.required' => 'Campo tipo es requerido',
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
                $intercambios=new Intercambios();
                $intercambios->nombre=$datos["nombre"];
                $intercambios->precio=$datos["precio"];
                $intercambios->descripcion=$datos["descripcion"];
                $intercambios->tipo=$datos["tipo"];

        try{
            //Almacenar en la BD
            $intercambios->save();
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
    public function destroy(Intercambios $intercambios)
    {
        $intercambios->delete();
        \Session::flash('tipoMensaje','info');
        \Session::flash('mensaje','Actividad borrada correctamente');
        return \Redirect::back();
    }
}
