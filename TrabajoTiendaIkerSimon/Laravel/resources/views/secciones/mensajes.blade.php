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
<form action="{{route('mensajes.store')}}" method="POST"   enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        Tú Correo
        <input type="text" name="emailguretabul" class="form-control" placeholder="{{auth()->user()->email}}" required/></br>
    </div>
    <div class="form-group">
        Correo Administradores
        <input type="text" name="emailyou" class="form-control" required></input></br>
    </div>
    <div class="form-group">
        Mensaje
        <textarea name="msg" rows="10" class="form-control" required></textarea></br>
    </div>

    <button type="submit" class="btn btn-primary">Enviar</button>

</form>
</div>
</div>
</div>
@endif


<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header" style="text-align:center;">
Mensajes
</div>
@foreach($conversacion as $conv)
<div class="card-body"style="text-align:center;">
      
        <div class="cajaMatch connect-cat" id="cajas" style="border-radius: 40px;">
        <div class="tipo" style="text-align:left;">Fecha:&nbsp;{{$conv->fecha}}</div>
        <div class="tipo"  style="text-align:left;">Hora:&nbsp;{{$conv->hora}}</div>
        <div class="tipo"><i class="fa-solid fa-user">&nbsp;De:</i>&nbsp;{{$conv->email_user1}}</div>
        <div class="tipo"><i class="fa-solid fa-user">&nbsp;Para:</i>&nbsp;{{$conv->email_user2}}</div>
        <div class="tipo"><i class="fa-solid fa-message"></i>&nbsp;{{$conv->ContenidoMensaje}}</div>
        <hr style="background-color: grey;"></hr>
      </div>
@endforeach
</div>
</div>
</div>





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
