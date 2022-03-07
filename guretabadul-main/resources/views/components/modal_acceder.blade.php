    <!-- Modal -->
    <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>

    <div class=" bg-gradient " id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="h-100 d-flex justify-content-center modal-dialog modal-Gure">
            <div class=" modal-content  modal-Gure bg-gradient text-color-GureO">
                <div class="modal-header-gure text-center">
                    <h5 class="modal-title " id="exampleModalLabel">Acceder</h5>
                    <a href="{{route ('home')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal"
                            aria-label="Close"></button></a>
                </div>
                <div class="modal-body text-center" >
                    <a class="fs-1 m-5" href="{{route('login.index')}}">Iniciar Sesión</a>
                    <a class="fs-1 m-5" href="{{route('register.index')}}">Registrarse</a>
                </div>
            </div>
        </div>
    </div>


    <script src="{{URL::asset('/js/bootstrap.min.js')}}"></script>
