@extends('layout.masterpage')
@section('Titulo','Cursos')
@section('contenido')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/curso.css') }}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
@endsection
<div class="hide" id="contenido">

<div class="cursos">
@foreach ($cursos as $curso)

<div class="card" style="width: 18rem;">
  <a href="{{route('cursos.show',['curso'=>$curso])}}">

    <img class="imagen" src="storage/{{$curso->imagenes()->first()->ruta}}" class="card-img-top" alt="">

    </a>
    <div class="card-body" style="font-family: cursive; text-align:center;">
      <h5 class="titulo">{{$curso->nombre}}</h5>
      <p class="card-text"><i class="fas fa-calendar-check"></i>&nbsp;&nbsp;{{$curso->Fecha_ini}}</p>
      <p class="card-text"><i class="fas fa-calendar-times"></i>&nbsp;&nbsp;{{$curso->Fecha_fin}}</p>
      <p class="card-text"><i class="fas fa-info-circle"></i> {{$curso->descripcion}}</p>
      <p class="card-text"><i class="fas fa-coins"></i>&nbsp;&nbsp;{{$curso->precio}}&nbsp;&nbsp;<i class="fas fa-euro-sign"></i></p>
      <p class="card-text"><i class="fas fa-female"></i>&nbsp;&nbsp;&nbsp;&nbsp;{{$curso->capacidad}}</p>

    </div>
  </div>

@endforeach
</div>

</div>


<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        window.addEventListener('load', () => {

          setTimeout(carga, 1000);

           

          function carga(){

              document.getElementById('contenido').className = 'center animated fadeInDown';
          }
          

        })

    </script>
@endsection
