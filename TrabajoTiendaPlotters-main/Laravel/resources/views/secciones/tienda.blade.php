@extends('layout.masterpage')
@section('Titulo', 'Tienda')
@section('contenido')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/tienda.css') }}">
@endsection
@section('contenido')
<div class="slider" >
    <ul>
        <li style="list-style:none"><img src="{{url('img/cami.png')}}" alt="hola" ></li>
        <li style="list-style:none"><img src="{{url('img/bolsa online.png')}}"></li>
    </ul>
</div>
@endsection
