@php
Illuminate\Support\Facades\App::setLocale(session('idioma'));
@endphp
<script src="typed.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://unpkg.com/typeit@8.2.0/dist/index.umd.js"></script>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: rgb(52 49 49);">
    <div class="container-fluid">

        <a id="tabadul" class="navbar-brand" style="color: aquamarine;" href="{{route('home')}}"></a>
        <script>
            new TypeIt("#tabadul", {
                strings: "Gure Tabadul",
            }).go();
 </script>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>
    $(document).ready(function(){
    $('#logito').click(function(){
    $('html, body').animate({scrollTop : 0},1);
    return false;
    });
    });
</script>
 @if (Auth::check())
 <a class="nav-link active" style="font-family: 'Akaya Telivigala', cursive;">Bienvenida <b style="color: aquamarine">{{auth()->user()->name}}</b></a>
 @endif
    <style>
        .nav-link{
            background-color: transparent !important;
        }

        

    </style>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
     
        <a  href=""><img src="{{url('img/logitot.png')}}"  alt="logo" id="logito" widht="50px;" height="50px;"></a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="justify-content:right;">
            <ul style="margin-left:35%;" class="navbar-nav mr-auto">
            
               

                @if(!Auth::check())
               
                <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="{{route('cursos.index')}}">Cursos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="{{route('taller.index')}}">Taller</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="http://localhost/Tienda-Guretabadul/GureTabadulSquad/Laravel/wordpress/">Tienda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="{{route('login')}}">Inicio Sesión</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="{{route('register')}}">Registrarse</a>
                </li>
                @else 


@if (Auth::user()->role_id=="1")

                <li class="nav-item">
            <a class="nav-link active" style="color: aquamarine" id="admin" onMouseOver="this.style.cssText='color: #cc0000'" onMouseOut="this.style.cssText='color: #fff'"  aria-current="page" href="{{ route('voyager.dashboard') }}">Administradora</a></a>
            </li>
            @endif
            <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="{{route('cursos.index')}}" >Cursos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="{{route('taller.index')}}">Taller</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="http://localhost/Tienda-Guretabadul/GureTabadulSquad/Laravel/wordpress/wp-admin/">Tienda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="{{route('mensajes.index')}}">Mensajes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" style="color: aquamarine" href=""
                        onclick="event.preventDefault(); document.getElementById('logout').submit();">Cerrar sesion</a>
                    <!-- Solo usuarios identificados -->
                    <form id="logout" action="{{route('logout')}}" method="POST" style="display:none;">
                        @csrf
                    </form>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: aquamarine" aria-current="page" href="{{route('perfil.index')}}">Ver perfil</a>
                </li>
         

                @endif

            </ul>

        </div>
    </div>
</nav>
