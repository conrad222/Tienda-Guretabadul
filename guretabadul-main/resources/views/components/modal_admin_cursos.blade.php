<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    {{-- links --}}
    <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

    {{-- end --}}
    <title>ADM Cursos</title>
</head>
<header>

    @include('components.alert')
</header>
<body class=" bg-gradient  ">
    <div class="container">
        <div id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-Gure">
                <div class="modal-content  modal-Gure bg-form-gure-smoke text-color-w text-color-GureO">
                    <div class="modal-header-gure text-center">
                        <h5 class="modal-title " id="exampleModalLabel">{!! trans('jokes.ADMINISTRAR CURSOS') !!}</h5>
                        <a href="{{route ('home')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal"
                                aria-label="Close"></button></a>
                    </div>
                    <div class="modal-body  ">
                        <table class="table text-color-w">
                            <thead>
                                <tr>
                                    <th scope="col">{!! trans('jokes.TIPO') !!}</th>
                                    <th scope="col">{!! trans('jokes.NOMBRE') !!}</th>
                                    <th scope="col">{!! trans('jokes.DESCRIPCIÓN') !!}</th>
                                    <th scope="col">{!! trans('jokes.PRECIO') !!}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($cursosAdmin as $curso)
                                <tr>
                                    <td>{{$curso->tipo}}</td>
                                    <td>{{$curso->nombre}}</td>
                                    <td>{{$curso->descripcion}}</td>
                                    <td>{{$curso->precio}}€</td>
                                    <td>
                                        <form action="{{route('cursosAdmin.destroy',['cursosAdmin'=>$curso])}}"
                                            method="post">
                                            @method('DELETE')
                                            @csrf
                                            <button type="submit" class="btn btn-small btn-dark"><i
                                                    class="fas fa-trash-alt"></i></button>
                                        </form>
                                        {{--Borrar CURSOS--}}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="container text-color-w">
                            <div class="row ">
                                <div class="col-md-12 col-sm-6 text-color-w">
                                    <div class=" fs-2  text-center fw-bold 5 ">{!! trans('jokes.crear nuevo curso') !!}
                                    </div>
                                    <div class=" fs-3 text-center fw-bold text-texto-Gure 5 text-color-w">{!!
                                        trans('jokes.Ponte en contacto con nosotras.') !!}</div>
                                    <form action="{{route('cursosAdmin.store')}}" method="post" class="row">
                                        {{ csrf_field() }}
                                        {{-- tipo + nombre --}}
                                        <div class=" col-md-2 offset-md-3 fs-1 fw-bold text-texto-Gure text-color-w  ">
                                            {!!
                                            trans('jokes.Tipo') !!}
                                            <input type="text "
                                                class=" text-start forms-control form-place-gure-white border-bottom-GureO text-texto-Gures "
                                                placeholder="{!! trans('jokes.Tipo') !!}" name="tipo" id="tipo"
                                                required>
                                        </div>
                                        <div class=" col-md-2 offset-md-2 fs-1 fw-bold text-texto-Gure text-color-w">
                                            {!! trans('jokes.Nombre') !!}
                                            <input type="text"
                                                class="  forms-control  form-place-gure-white border-bottom-GureO  "
                                                placeholder="{!! trans('jokes.Nombre') !!}" name="nombre" id="nombre"
                                                required>
                                        </div>
                                        {{-- fin tipo nombre --}}
                                        {{-- preccio + fecha + des text --}}
                                        <div class="row mt-3">
                                            <div
                                                class=" col-md-2  offset-md-1  fs-1 fw-bold text-texto-Gure  text-color-w">
                                                {!!
                                                trans('jokes.Precio') !!}</div>
                                            <div
                                                class="col-md-2   offset-md-2  fs-1 fw-bold text-texto-Gure  text-color-w ">
                                                {!!
                                                trans('jokes.Descripción') !!}</div>
                                            <div
                                                class=" col-md-2 offset-md-2  fs-1 fw-bold text-texto-Gure   text-color-w">
                                                {!!
                                                trans('jokes.Fecha') !!}</div>
                                            {{-- fin precio-fecha-descripcion --}}
                                            {{-- input precio+fecha+des --}}
                                            <div class="col-md-3 offset-md-1  ">
                                                <input type="text"
                                                    class="w-50  text-start forms-control form-place-gure-white border-bottom-GureO text-texto-Gures "
                                                    placeholder="{!! trans('jokes.Precio') !!}" name="precio"
                                                    id="precio" required>
                                            </div>
                                            <div class="col-md-3 offset-md-1 ">
                                                <input type="text"
                                                    class=" w-80  forms-control form-place-gure-white border-bottom-GureO  text-texto-Gures "
                                                    placeholder="{!! trans('jokes.descripcion') !!}" name="descripcion"
                                                    id="descripcion" required></div>
                                            <div class="col-md-3 offset-md-1 ">
                                                <input type="date" name="fecha" id="fecha"
                                                    class=" w-75 form-place-gure-white form-control border-bottom-GureO"
                                                    required>
                                            </div>
                                        </div>
                                        {{-- input precio+fecha+des fin --}}
                                        {{-- botton --}}
                                        <button type="submit" class="btn fs-4 mt-5 col-4 offset-md-4 btn-Gure "
                                            id="form-contact-submit">{!!
                                            trans('jokes.crear')
                                            !!}</button>
                                        {{-- button fin --}}
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script>
        setTimeout(dspnone, 3000);
        var alerta = document.getElementById("alert");

        function dspnone() {
            alerta.style.display = "none";
        }

    </script>
    </script>
    <script src="{{URL::asset('/js/bootstrap.min.js')}}"></script>
</body>

</html>
