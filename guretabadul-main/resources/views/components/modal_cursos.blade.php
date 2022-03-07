<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cursos</title>
    <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>
</head>
<body class="bg-gradient">
    <div class="row">
    <div class="  h-100" id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-Gure">
            <div class="modal-content  modal-Gure bg-gradient text-color-GureO">
                <div class="modal-header-gure text-center">
                    <h5 class="modal-title " id="exampleModalLabel">{!! trans('jokes.Cursos') !!}</h5>
                    <a href="{{route ('home')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal"
                        aria-label="Close"></button></a>
                    </div>
                    <div class="row ">
                        @foreach ($cursos as $curso)
                        <div class="col-md-4  col-xs-4 col-4 mt-3">
                            <h4 class="text-center"><strong>{{$curso->tipo}} </strong></h4>
                            <hr>
                            <div class="profile-card-6 ">
                                <img src="{{URL::asset('img/mujer_gure.png')}}" width="400" height="500" class="img img-responsive"/>
                                <div class="profile-name">{{$curso->nombre}}
                                    <br>GURE</div>
                                    <div class="profile-position">{{$curso->descripcion}}</div>
                                    <div class="profile-overview">
                                        <div class="profile-overview">
                                            <div class="row text-center">
                                                <div class="col-md-4">
                                                    <h3>1</h3>
                                                    <p>{!! trans('jokes.inscritos') !!}</p>
                                                </div>
                                                <div class="col-md-4">
                                                    <h3>{{$curso->plazas}}</h3>
                                                    <p>plazas</p>
                                                </div>
                                                <div class="col-md-4">
                                                    <h3>{{$curso->precio}}</h3>
                                                    <p>Precio</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <script src="{{URL::asset('/js/bootstrap.min.js')}}"></script>
            
        </body>
        </html>
            