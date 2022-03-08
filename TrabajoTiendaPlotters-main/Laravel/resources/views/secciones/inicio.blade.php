@extends('layout.masterpage')
@section('Titulo','Inicio')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/inicio.css') }}">
<link rel="stylesheet" href="{{URL::asset('css/footer.css')}}">
@endsection
@section('contenido')
<div class="slider">
    <ul>
        <li style="list-style:none"><img src="{{url('img/imagen1.png')}}" alt="hola" ></li>
        <li style="list-style:none"><img src="{{url('img/imagen2.png')}}"></li>
    </ul>

</div>
<h2></h2>
<div class="dosdivs">
    <div class="servicios" >
        <h3 class="titulo">¿A que nos dedicamos?</h3>
        <h4 class="subtitulo">INTERCAMBIOS CULTURALES</h4>
        <div class="flexbox-containerP">
        <div class="flexbox-container">
            <div class="servicio1"><label><img class="corazon" src="{{url('img/amor.png')}}"></label><h4 class="teeexto">Cultivar actitudes interculturales positivas.</h4></div>
            <div class="servicio2"><label><img class="libro" src="{{url('img/libro.png')}}"></label><h4 class="teeexto">Mejorar el autoconcepto personal, cultural <br>y académico.</h4></div>
        </div>
        <div class="flexbox-container" >
            <div class="servicio3"><label><img class="igualdad" src="{{url('img/tomados-de-la-mano.png')}}"></label><h4 class="teeexto">Fomentar la igualdad y el respeto mutuo.</h4></div>
            <div class="servicio4"><label><img class="unidad" src="{{url('img/unidad.png')}}"></label><h4 class="teeexto">Potenciar la convivencia entre mujeres de diferentes culturas.</h4></div>
        </div>
        </div>
    </div>
    <div class="nosotros" style="padding-left:50px;">
        <h3 class="titulo">¿Quienes <br>Somos?</h3>
        <h4 class="subtitulo">APRENDER Y COMPARTE</h4>
        <div class="flexbox-containerQ">
            <div class="texto">Conectamos a mujeres con inquietudes para que se enriquezcan entre ellas y así crecer como personas. Solo queremos que abras tu mente y contactes con otras mujeres de las que puedes aprender y a las que puedes enseñar.

                Estamos aquí para ayudarnos, porque podemos ser más de lo que somos solo si tenemos la intención.</div>

    </div>
</div>
</div>
<h3 class="titulo">Colaboradores</h3>
<div class="sponsors">
    @foreach($sponsors as $sponsor)
    <div class="sponsor">
        <div class="cuadroImagen">
    <img class="sponsorFoto" src="storage/{{$sponsor->ruta_img_sponsor}}">
        </div>
    <p>{{$sponsor->nombre}}</p>
    <p>{{$sponsor->descripción}}</p>
    </div>   


@endforeach
</div>
@include('layout.footer')



















 








@endsection
