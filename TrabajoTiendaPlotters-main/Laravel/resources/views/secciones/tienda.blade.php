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
    <ul style="display:flex; ">
        <li style="list-style:none; padding-right:370px;">Camiseta XL</li>
       
        <li style="list-style:none;  padding-right:20px;" >Bolsa XL</li>
      
    </ul>
    
</div>
<div class="slider" >
    <ul>
        <li style="list-style:none"><img src="{{url('img/cami.png')}}" alt="hola" ></li>
       
        <li style="list-style:none"><img src="{{url('img/bolsa online.png')}}"></li>
      
    </ul>
    <ul style="display:flex; ">
        <li style="list-style:none; padding-right:370px;">Camiseta XXL</li>
       
        <li style="list-style:none;  padding-right:20px;" >Bolsa XXL</li>
      
    </ul>
    
</div>
@endsection
