<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Mail\ContactanosMailable;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Redirect;

use function Ramsey\Uuid\v1;

class contactanosController extends Controller
{
    public function index()
    {
     return view('contactanos.index');
    }
    
    public function store(Request $request)
    {
      \Session::flash('tipoMensaje','success');
      \Session::flash('mensaje','Correo enviado');

        $correo = new ContactanosMailable($request->all());

        Mail::to('jeanpierrc22@gmail.com')->queue($correo);

        return \Redirect::back();
      }
}
