    <!-- Modal -->
    <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>

    <div class=" bg-gradient " id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-Gure">
            <div class="modal-content  modal-Gure bg-gradient text-color-GureO">
                <div class="modal-header-gure text-center">
                    <h5 class="modal-title " id="exampleModalLabel">Cursos</h5>
                    <a href="{{route ('home')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal"
                            aria-label="Close"></button></a>
                </div>
                <div class="modal-body  ">
                    @foreach ($cursos as $curso)
                            <div class="col-md-4">
                                <h4 class="text-center"><strong>{{$curso->tipo}} </strong></h4>
                                <hr>
                                <div class="profile-card-6"><img src="{{URL::asset('img/mujer_gure.png')}}" width="400" height="500"  class="img img-responsive">
                                    <div class="profile-name">{{$curso->nombre}} 
                                        <br>GURE</div>
                                    <div class="profile-position">{{$curso->descripcion}}</div>
                                    <div class="profile-overview">
                                        <div class="profile-overview">
                                            <div class="row text-center">
                                                <div class="col-md-4">
                                                    <h3>1</h3>
                                                    <p>inscritos</p>
                                                </div>
                                                <div class="col-md-4">
                                                    <h3>50</h3>
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
    <script src="{{URL::asset('/js/bootstrap.min.js')}}"></script>
