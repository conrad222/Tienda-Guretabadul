<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        //Verificar si el usuario que esta intentando acceder al recurso es administrador
        if(Auth::check() && Auth::user()->usuario->role_id=="2"){
            //Puede pasar
            return $next($request);
        }else{
            \Session::flash('tipoMensaje','danger');
            \Session::flash('mensaje','No tiene sufucientes privilegios para acceder a este recurso');
            return \Redirect::back();
        }
        

        
    }
}