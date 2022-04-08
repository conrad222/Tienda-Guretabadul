@extends('layout.masterpage')
@section('Titulo','Talleres')
@section('contenido')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/talleres.css') }}">
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
    <div class="hide" id="contenido">

    <div class="talleres">
@foreach($talleres as $taller)

<div class="card" style="width: 18rem;">

  <a  href="{{route('taller.show',['taller'=>$taller])}}">

        @if (empty($taller->imagenes))
            @php
          $rutaImagen=$taller->imagenes->first()->ruta;
          echo '<img class="imagen" src="storage/'.$rutaImagen.'" class="card-img-top">'
          @endphp
        @else
            @php
            $rutaImagen="default.jpg";
          echo '<img class="imagen" src="storage/'.$rutaImagen.'" class="card-img-top">'
            @endphp
          @endif

</a>

    <div class="card-body" style="font-family: cursive; text-align:center;">
      <h5 class="titulo">{{$taller->Título}}</h5>
      <p class="card-text"><i class="fas fa-calendar-check"></i>
        {{$taller->Fecha_comienzo}}</p>
      <p class="card-text"><i class="fas fa-calendar-times"></i> {{$taller->Fecha_final}}</p>
      <p class="card-text"><i class="fas fa-info-circle"></i> {{$taller->Descripción}}</p>
      <p class="card-text"><i class="fas fa-coins"></i> {{$taller->Precio}}&nbsp;&nbsp;<i class="fas fa-euro-sign"></i></p>
      <p class="card-text"><i class="fas fa-female"></i> {{$taller->Capacidad}}</p>
    </div>
  </div>

@endforeach
</div>

    </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        window.addEventListener('load', () => {

            setTimeout(carga, 2000);


            function carga(){

              document.getElementById('circulo').className = 'hide';

                document.getElementById('contenido').className = 'center animated fadeInDown';
            }
          

        })

    </script>
@endsection
