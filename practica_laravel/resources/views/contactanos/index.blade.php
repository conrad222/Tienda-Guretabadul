@extends('layout.masterpage')
@section('titulo','Solicita Información')
@section('contenido')
<link rel="stylesheet" href="{{ URL::asset('css/style.css') }}">

        <div class="contact-form">
            <h3>Contáctanos</h3>
            <form action="">
                <p>
                    <label class="label">Nombre:</label>
                    <input type="text" name="nombre" placeholder="Tu nombre">
                </p>
                <p>
                    <label class="label">Correo:</label>
                    <input type="email" name="email" placeholder="Tu correo">
                </p>
                <p class="block">
                    <label class="label">Seleccione la tienda de la que desee la información:</label> 
                    <select class="styled-select" name="comercioElegido">
                        @foreach ($comercios as $comercio)
                        <option>{{$comercio->nombre}}</option>
                        @endforeach
                    </select> 
                    
                </p>
                <p class="block">
                    <button>
                        Solicitar información
                    </button>
                </p>
            </form>
        </div>
        
  
@endsection