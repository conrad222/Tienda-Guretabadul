@extends('layout.masterpage')
@section('Titulo','Mensajes')
@section('contenido')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/mensajes.css') }}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
@endsection

<div class="center section" id="circulo">
        <img src="{{url('img/logito2.png')}}"widht="200px;" height="200px;" style="margin-top:40px;">
        <style>
          img[src="{{url('img/logito2.png')}}"]{
            animation: rotation 0.7s infinite linear;
          }

          @keyframes rotation {
            from {
              transform: rotate(0deg);
            }
            to {
              transform: rotate(360deg);
            }
          }
        </style>
    </div>

    @if (Auth::check())
    <div class="hide" id="contenido">
<div class="col-md-6 offset-md-3" style="margin-bottom:20px;">
<div class="card">
<div class="card-header" style="text-align:center;">
    Administradores
</div>
<div class="card-body">
    @csrf
    <div class="form-group">
        @foreach ($usuarios as $usuario)
        <label>{{$usuario->email}}</label>
        @endforeach
    </div>
</div>
</div>
</div>

<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header" style="text-align:center;">
    Formulario de Contacto
</div>
<div class="card-body" style="text-align:left;">
<form action="{{route('mensajes.store')}}"method="POST"   enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        Tú Correo
        <input type="text" name="emailguretabul" class="form-control" placeholder="{{auth()->user()->email}}"/></br>
    </div>
    <div class="form-group">
        Correo Administradores
        <input type="text" name="emailyou" class="form-control" ></input></br>
    </div>
    <div class="form-group">
        Mensaje
        <textarea name="msg" rows="10" class="form-control"></textarea></br>
    </div>

    <button type="submit" class="btn btn-primary">Enviar</button>

</form>
</div>
</div>
</div>

<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-body" style="text-align:center;">
        <div class="cajaMatch connect-cat" id="cajas" style="border-radius: 40px; padding:50px;">
        <div class="tipo"><i class="fa-solid fa-user">&nbsp;{{auth()->user()->email}}</i>&nbsp;</div>
        <div class="tipo"><i class="fa-solid fa-user"></i>&nbsp;&nbsp;</div>
        <div class="tipo"><i class="fa-solid fa-message"></i>&nbsp;&nbsp;</div>

</div>
</div>
</div>
@endif


<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        window.addEventListener('load', () => {

          setTimeout(carga, 1000);

           

          function carga(){

              document.getElementById('circulo').className = 'hide';

              document.getElementById('contenido').className = 'center animated fadeInUp';
          }
          

        })

    </script>
@endsection
