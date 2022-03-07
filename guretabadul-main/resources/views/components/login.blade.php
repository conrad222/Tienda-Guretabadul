
<?php echo '<link rel="stylesheet" type="text/css" href="../public/css/style.css">' ?>

<div class=" bg-gradient " id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="h-100 d-flex justify-content-center modal-dialog modal-Gure">
            <div class=" modal-content bg-gradient text-color-GureO" style="height: 502px; width: 852px; margin-top:50px">
                <div class="modal-header-gure text-center">
                    <h5 class="modal-title " id="exampleModalLabel">Iniciar sesión</h5>
                    <a href="{{route ('modal_acceder.index')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal"
                            aria-label="Close"></button></a>
                </div>
                <div class="modal-body text-center" >
                    <div id="template-bg-1">
        <div class="d-flex flex-column min-vh-90 justify-content-center align-items-center modal-dialog-centered">
        <div class="card p-4 text-light bg-dark mb-5">
        <div class="card-header">
        <h3>{!! trans('jokes.Iniciar Sesion') !!} </h3>
        </div>
        <div class="card-body w-100">
        <form name="login" action="" method="post">
            @csrf
        <div class="input-group form-group mt-3">
        <div class="bg-secondary rounded-start">
        <span class="m-3"><i class="fas fa-user mt-2"></i></span>
        </div>
        <input type="email" class="form-control" placeholder="{!! trans('jokes.Correo') !!}"
        name="email" id="email">
        </div>
        <div class="input-group form-group mt-3">
        <div class="bg-secondary rounded-start">
        <span class="m-3"><i class="fas fa-key mt-2"></i></span>
        </div>
        <input type="password" class="form-control" placeholder="{!! trans('jokes.Contraseña') !!}"
        name="password" id="password">
        </div><br>
        @error('message')
        <div class="alert alert-danger" role="alert">
            {{$message}}
        </div>
        @enderror

        <div class="form-group mt-3">
        <input type="submit" value="{!! trans('jokes.Acceder') !!}"
        class="btn bg-secondary float-end text-white w-100"
        name="login-btn">
    </div>
    </form>
                </div>
            </div>
        </div>
    </div>





