@php
    Illuminate\Support\Facades\App::setLocale(session('idioma'));
@endphp
<script src="typed.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://unpkg.com/typeit@8.2.0/dist/index.umd.js"></script>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background: repeating-linear-gradient(45deg, #4e9b7a, #6f8ba7 100px); font-weight: bold; font-family: cursive;
">
  <div class="container-fluid">
    
    <a id="tabadul" class="navbar-brand" href="home"></a>
    <script>
                    new TypeIt("#tabadul", {
                      strings: "Gure Tabadul",
                    }).go();
                  </script>
 
 


    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul style="margin-left:35%;" class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" aria-current="page" href="{{route('inicio.index')}}">Inicio</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{route('cursos.index')}}">Cursos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="{{route('taller.index')}}">Taller</a>
          </li>

        @if(!Auth::check())
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{route('login')}}">Inicio Sesion</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{route('register')}}">Registrarse</a>
        </li>
        @else
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="" onclick="event.preventDefault(); document.getElementById('logout').submit();">Cerrar sesion</a>
          <!-- Solo usuarios identificados -->
          <form id="logout" action="{{route('logout')}}" method="POST" style="display:none;">
          @csrf
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{route('tienda.index')}}">Tienda</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="{{route('perfil.index')}}">Ver perfil</a>
        </li>

        @endif

      </ul>

    </div>
  </div>
</nav>

