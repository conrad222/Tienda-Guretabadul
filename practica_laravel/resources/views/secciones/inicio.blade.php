@extends('layout.masterpage')
@section('titulo','Pagina Principal')
@section('contenido')
<link href="{{URL::asset('/css/estilos.css')}}" rel='stylesheet'>
<style>
    span {
  display: inline-block;
  text-shadow: 0 0 0 #ced4da;
  -webkit-animation: smoky 2s 1ms both;
  animation: smoky 2s 1ms both;
  animation-direction: reverse;
}

.a {
  -webkit-animation-name: smoky-mirror;
  animation-name: smoky-mirror;
}

@-webkit-keyframes smoky {
  60% {
    text-shadow: 0 0 40px #ced4da;
  }
  to {
    -webkit-transform: translate3d(6rem, 0, 0) rotate(-40deg) skewX(70deg) scale(0.5);
    transform: translate3d(6rem, 0, 0) rotate(-40deg) skewX(70deg) scale(0.5);
    text-shadow: 0 0 20px #ced4da;
    opacity: 0;
  }
}

@keyframes smoky {
  60% {
    text-shadow: 0 0 40px #ced4da;
  }
  to {
    -webkit-transform: translate3d(6rem, 0, 0) rotate(-40deg) skewX(70deg) scale(0.5);
    transform: translate3d(6rem, 0, 0) rotate(-40deg) skewX(70deg) scale(0.5);
    text-shadow: 0 0 20px #ced4da;
    opacity: 0;
  }
}

@-webkit-keyframes smoky-mirror {
  60% {
    text-shadow: 0 0 40px #ced4da;
  }
  to {
    -webkit-transform: translate3d(-15rem, 0, 0) rotate(-40deg) skewX(-70deg) scale(0.5);
    transform: translate3d(-15rem, 0, 0) rotate(-40deg) skewX(-70deg) scale(0.5);
    text-shadow: 0 0 20px #ced4da;
    opacity: 0;
  }
}

@keyframes smoky-mirror {
  60% {
    text-shadow: 0 0 40px #ced4da;
  }
  to {
    -webkit-transform: translate3d(-15rem, 0, 0) rotate(-40deg) skewX(-70deg) scale(0.5);
    transform: translate3d(-15rem, 0, 0) rotate(-40deg) skewX(-70deg) scale(0.5);
    text-shadow: 0 0 20px #ced4da;
    opacity: 0;
  }
}
</style>

<h1 style="font-family: Verdana, Geneva, Tahoma, sans-serif;
font-weight: bold;
color: whitesmoke;
left: 0;text-align:center; font-size:200px; margin-top: -30px;"><span class="a">K</span><span class="a">a</span><span class="a">l</span><span class="a">p</span><span class="a">a</span><span class="a">t</span><span class="a">a</span><span class="b">r</span><span class="b">u</span></h1><br>
<p class="parrafoigualdad" style="color:#8024A0; font-size:30px;  font-family: 'Eminenz', arial; text-shadow: 4px 4px 4px #aaa;" >{!! trans('jokes.IGUALDAD') !!}</p>

<div class="img-arbol">
<img src="./img/arbolito.png" width="800px" height="800px" />
</div>
@endsection