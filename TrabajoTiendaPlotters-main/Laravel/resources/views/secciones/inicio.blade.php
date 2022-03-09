@extends('layout.masterpage')
@section('Titulo','Inicio')
@section('estilos')
<link rel="stylesheet" href="{{URL::asset('css/inicio.css') }}">
<link rel="stylesheet" href="{{URL::asset('css/footer.css')}}">
@endsection
@section('contenido')
<div class="slider" >
    <ul>
        <li style="list-style:none"><img src="{{url('img/imagen2.png')}}"></li>
    </ul>

</div>
<h2></h2>
<div class="dosdivs" style="margin-bottom:50px;">
    <div class="servicios" >
        <h3 class="titulo" style="margin-bottom: 30px; margin-top: 20px;">¿Qué Hacemos?</h3>
        <h4 class="subtitulo" style="margin-bottom: 100px;">INTERCAMBIOS CULTURALES</h4>
        <div class="flexbox-containerP">
        <div class="flexbox-container">
            <div class="servicio1"><label><img class="img_servicios" src="{{url('img/amor.png')}}"></label><h4 class="teeexto">Cultivar actitudes interculturales positivas.</h4></div>
            <div class="servicio2"><label><img class="img_servicios" src="{{url('img/libro.png')}}"></label><h4 class="teeexto">Mejorar el autoconcepto personal, cultural <br>y académico.</h4></div>
        </div>
        <div class="flexbox-container" >
            <div class="servicio3"><label><img class="img_servicios" src="{{url('img/tomados-de-la-mano.png')}}"></label><h4 class="teeexto">Fomentar la igualdad y el respeto mutuo.</h4></div>
            <div class="servicio4"><label><img class="img_servicios" src="{{url('img/unidad.png')}}"></label><h4 class="teeexto">Potenciar la convivencia entre mujeres de diferentes culturas.</h4></div>
        </div>
        </div>
    </div>
    <div class="nosotros" style="padding-left:50px; ">
        <h3 class="titulo" style="margin-bottom: 30px; margin-top: 20px;">¿Quiénes Somos?</h3>
        <h4 class="subtitulo" style="margin-bottom: 100px;">APRENDE Y COMPARTE</h4>
        <div class="flexbox-containerQ">
            <div class="texto">
            Somos un proyecto de ayuda a las mujeres que quieran relacionarse con otras personas para saber más acerca de sus culturas, religiones, experiencias personales y entender en la situación en la que están para apoyarlas.
            Tenemos profesionales cualificados que pueden enseñar a los clientes en los talleres y cursillos que se darán en nuestros puntos de encuentro.</div>
            

    </div>
</div>
</div>
<h3 class="titulo" style="margin-bottom:30px;">Colaboradores</h3>
<div class="sponsors">
    @foreach($sponsors as $sponsor)
    <div class="sponsor">
        <div class="cuadroImagen">
    <img class="sponsorFoto" src="storage/{{$sponsor->ruta_img_sponsor}}">
        </div>
    </div>   


@endforeach
</div>
@include('layout.footer')



















 








@endsection
