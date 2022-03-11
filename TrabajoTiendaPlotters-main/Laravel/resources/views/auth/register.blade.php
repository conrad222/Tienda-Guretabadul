@extends('layout.masterpage')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/registro.css') }}">
@endsection
@section('contenido')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header" style="font-weight: bold;font-family: cursive;" >{{ __('Registro') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}" style="font-weight: bold;font-family: cursive;">
                        @csrf

                        <div class="form-group row">
                            

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="Nombre" style="font-weight: bold;font-family: cursive;">

                                @error('name')
                                    <span class="invalid-feedback" role="alert" style="font-weight: bold;font-family: cursive;">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Correo" style="font-weight: bold;font-family: cursive;">

                                @error('email')
                                    <span class="invalid-feedback" role="alert" style="font-weight: bold;font-family: cursive;">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password"  placeholder="Contraseña" style="font-weight: bold;font-family: cursive;">

                                @error('password')
                                    <span class="invalid-feedback" role="alert" style="font-weight: bold;font-family: cursive;">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>

                        </div>
                        <div class="form-group row">
                            

                            <div class="col-md-6">
                                <input id="contrasenya" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password" placeholder="Confirmar contraseña" style="font-weight: bold;font-family: cursive;">
                            </div>
                        </div>

						<div class="form-group row">
                            

                           


                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Registrarse') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
