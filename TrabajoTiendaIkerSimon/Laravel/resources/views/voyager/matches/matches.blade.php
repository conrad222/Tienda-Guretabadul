@extends('voyager::master');
@section('content')

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Listado de Match's</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="{{URL::asset('css/matches.css')}}">
</head>
<body>
    <div class="cajaPrincipal">
    <div class="titulo" style="text-align:center;"><h3>Listado de Match's</h3>
    </div>
    <div class="crear" style="text-align:center;">
        <a class="link" href="{{route('matches.create')}}"><button class="button"><i class="fa-solid fa-circle-plus">&nbsp;&nbsp;</i>Match</button></a>
    </div>


    <input placeholder="Buscar..." id="box" type="text"  style="margin-left:60px;" />
<div style="clear:both;"></div>

    <div class="flexbox-container" id="list" style=" margin-left:50px; margin-top: 50px; display: grid; grid-template-columns: repeat(6, 1fr); grid-gap: 70px; text-align:center;">
        @foreach ($matches as $match)
        <div class="cajaMatch connect-cat" catname="apricots" id="cajas" style="border: 3px solid #000000; border-radius: 40px; padding:50px;">
        <div class="tipo"><i class="fa-solid fa-user"></i>&nbsp;&nbsp;{{$match->nombre}}</div>
        <div class="tipo"><i class="fa-solid fa-map-location-dot"></i>&nbsp;&nbsp;{{$match->direccion}}</div>
        <div class="tipo"><i class="fa-solid fa-calendar-days"></i>&nbsp;&nbsp;{{$match->Fecha_encuentro}}</div>
        <div class="tipo"><i class=""></i>&nbsp;&nbsp;{{$match->usuario1->name}}</div>
        <div class="tipo"><i class=""></i>&nbsp;&nbsp;{{$match->usuario2->name}}</div>
            <form action="{{route('matches.destroy',$match)}}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('DELETE')
                <button class="eliminar"  type="submit"><i class="fa-solid fa-trash-can"></i></button>
            </form>
        </div>
        @endforeach
    </div>
    
    
</div>
</body>
<script>
$("#box").on('keyup', function(){
  var matcher = new RegExp($(this).val(), 'gi');
  $('.connect-cat').show().not(function(){
      return matcher.test($(this).find('.tipo').text())
  }).hide();
});

</script>
</html>










</div>

@endsection
