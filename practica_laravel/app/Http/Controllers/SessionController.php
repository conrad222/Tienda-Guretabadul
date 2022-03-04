<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class SessionController extends Controller
{public function create(){
    return view('auth.login');

}
public function store(){
    if(auth()->attempt(request(['email','password'])) ==false ) {
        return back()->withErrors([
            'message' => 'El correo o la contraseña son incorrectos, revise los datos'
        ]);
    }return redirect()->to('/');
}

public function destroy(){
    auth()->logout();

    return redirect()->to('/');
}
}
