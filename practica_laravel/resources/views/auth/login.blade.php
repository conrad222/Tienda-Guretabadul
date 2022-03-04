@extends ('layout.masterpage')
@section('titulo','Inicia Sesion')
@section ('contenido')

<link href="{{URL::asset('/css/estilos.css')}}" rel='stylesheet'>
<div id="template-bg-1">
    <div
    class="d-flex flex-column min-vh-90 justify-content-center align-items-center">
    <div class="card" style="padding: 4rem;">
    <h3 style="text-align:center;">{!! trans('jokes.Iniciar Sesión') !!}</h3>
    <div class="card-body w-100">
    <form name="login" action="" method="post">
        @csrf
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="email" class="form-control" placeholder="{!! trans('jokes.Correo') !!}"
    name="email" id="email" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
    </div>
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="password" class="form-control" placeholder="{!! trans('jokes.Contraseña') !!}"
    name="password" id="password" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
    </div><br>
    @error('message')
    <div class="alert alert-danger" role="alert">
        {{$message}}
    </div>
    @enderror
    
    <div class="form-group mt-3">
    <input type="submit" value="Acceder"
    class="btn float-end text-white w-100" style="opacity:1; background-color:#8024A0;"
    name="login-btn">
    </div>
    </form>



  @endsection