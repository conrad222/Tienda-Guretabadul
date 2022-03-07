
<header>
    <nav class="navbar navbar-expand-lg bg-navwhite navbar-dark fixed-top">
      <div class="container-fluid">
        <a class="navbar-brand ms-3 me-3 " href="#"><img src="{{URL::asset('img/default_sin_bg.png')}}" width="45" alt="" srcset=""></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <ul class="navbar-nav">


        <li class="nav-item active">
              <a class="nav-link text-color-GureB me-3" href="#seccion_quehacemos">{!! trans('jokes.Qué hacemos') !!}</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-color-GureB me-3" href="#seccion_comolohacemos">{!! trans('jokes.Cómo lo hacemos') !!}</a>
            </li>
            <li class="nav-item">
              <a class="nav-link  text-color-GureB me-3" href="#seccion_eslogan">{!! trans('jokes.Propuestas') !!}</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-color-GureB me-3" href="#apuntate_actividades">{!! trans('jokes.Apúntate') !!}</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-color-GureB me-3" href="#section_contacto">{!! trans('jokes.Contacto') !!}</a>
            </li>
            <li class="nav-item">
              <a class="nav-link  text-color-GureB me-3" href="#section_faq">{!! trans('jokes.FAQ') !!}</a>
            </li>
            </li>
            <li class="nav-item">
              <a class="nav-link  text-color-GureB " href="#section_dondeestamos">{!! trans('jokes.Dónde estamos') !!}</a>
            </li>
            <li class="nav-item">
              <a class="nav-link  text-color-GureB me-3" href="{{route('modal_cursos.index')}}">{!! trans('jokes.Cursos') !!}</a>
            </li>
            <li class="nav-item">
              <a class="nav-link  text-color-GureB me-3" href="{{route('modal_tienda.index')}}">{!! trans('jokes.Tienda') !!}</a>
            </li>




@if(auth()->check())
        @if(Auth::user()->role_id=='1')

        <div class="dropdown">
            <a class="btn nav-link  text-color-GureB me-3 dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">

         ADMIN
            </a>
            <ul class="dropdown-menu bg-light" aria-labelledby="dropdownMenu2"  >
              <li class="nav-item" ><a class="dropdown-item" type="button"  href="{{route('modal_admin_web2.index')}}">{!! trans('jokes.adm. web') !!}</a></li>
              <li class="nav-item"><a class="dropdown-item" type="button"   href="{{route('userAdmin.index')}}">{!! trans('jokes.crear admin') !!}</a></li>
              <li class="nav-item"><a class="dropdown-item" type="button"   href="{{route('modal_admin_usermatch.index')}}">{!! trans('jokes.adm. usuarios y matchs') !!}</a></li>
              <li class="nav-item"><a class="dropdown-item" type="button"   href="{{route('cursosAdmin.index')}}">{!! trans('jokes.adm. cursos') !!}</a></li>
              <li class="nav-item"><a class="dropdown-item" type="button"   href="{{route('intercambiosAdmin.index')}}">{!! trans('jokes.adm. intercambios') !!}</a></li>
              <li class="nav-item"><a class="dropdown-item" type="button"   href=" {{route('actividadesAdmin.index')}}  ">{!! trans('jokes.adm. actividades') !!}</a></li>
              <li class="nav-item"><a class="dropdown-item" type="button"   href="{{route('modal_ver_perfiles.index')}}">{!! trans('jokes.ver perfiles') !!}</a></li>
            </ul>
          </div>
@endif


        <li class="nav-item">
              <a class="nav-link  text-color-GureB me-3" href="{{route('login.destroy')}}">{!! trans('jokes.Cerrar Sesión') !!}</a>
            </li>
            <li class="nav-item">
              <a class="nav-link  text-color-GureB me-3 d-none" href="{{route('modal_acceder.index')}}">{!! trans('jokes.Accede') !!}</a>
            </li>
            @else
            <li class="nav-item">
              <a class="nav-link  text-color-GureB me-3 d-none" href="{{route('login.destroy')}}">{!! trans('jokes.Cerrar Sesión') !!}</a>
            </li>

          <li class="nav-item">
              <a class="nav-link  text-color-GureB me-3" href="{{route('modal_acceder.index')}}">{!! trans('jokes.Accede') !!}</a>
            </li>
            @endif

            <li class="nav-item">
            @if (config('locale.status') && count(config('locale.languages')) > 0)
                    @foreach (array_keys(config('locale.languages')) as $lang)
                        @if ($lang != App::getLocale())
                            <a  class="nav-link  text-color-GureB " href="{!! route('lang.swap', $lang) !!}" style="padding-right:0px; margin-right:0px;">
                                    {!! $lang !!}/
                            </a>
            </li>
                        @endif
                    @endforeach
            @endif
            <li class="nav-item">
            @if (config('locale.status') && count(config('locale.languages')) > 0)
                    @foreach (array_keys(config('locale.languages')) as $lang)
                        @if ($lang == App::getLocale())
                            <a  class="nav-link  text-color-GureB " href="{!! route('lang.swap', $lang) !!}" style="padding-left:0px; margin-left:0px;">
                                    <strong>{!! $lang !!}</strong>
                            </a>
                        @endif
                    @endforeach
            @endif
            </li>







        </div>

      </div>
    </nav>
  </header>



<!-- -->
