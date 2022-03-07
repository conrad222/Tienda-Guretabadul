<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>Register</title>
</head>
<body>


    <div class=" bg-gradient " id="modalForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="h-100 d-flex justify-content-center modal-dialog modal-Gure">
            <div class=" modal-content  bg-gradient text-color-GureO" style="height: 552px; width: 852px; margin-top:50px">
                <div class="modal-header-gure text-center">
                    <h5 class="modal-title " id="exampleModalLabel">Registrarse</h5>
                    <a href="{{route ('modal_acceder.index')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal" aria-label="Close"></button></a>
                    </div>
                    <div class="modal-body text-center">
                        <div id="template-bg-1">
                            <div class="d-flex flex-column min-vh-90 justify-content-center align-items-center modal-dialog-centered">
                            <div class="card p-4 text-light bg-dark mb-5">
                                <div class="card-header">
                                    <h3>{!! trans('jokes.Registrarse') !!} </h3>
                                </div>

    <div class="card-body w-100">
                <form action="{{route('registerAdmin.store')}}"  method="POST">

        @csrf

    {{-- Nombre --}}
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    <span class="m-3"><i class="fas fa-user mt-2"></i></span>
    </div>
    <input type="text" class="form-control" placeholder="{!! trans('jokes.Nombre') !!}" id="name" name="name"></div>

    @error('name')
    <br><div class="alert alert-danger" role="alert">
        {{ $message}}
    </div>
    @enderror
    {{-- Email --}}
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    <span class="m-3"><i class="fas fa-envelope-square mt-2"></i></span>
    </div>
    <input type="text" class="form-control" placeholder="{!! trans('jokes.Correo') !!}"
    name="email" id="email">
    </div>

    @error('email')
    <br><div class="alert alert-danger" role="alert">
        {{ $message}}
    </div>
    @enderror
    {{-- Contraseña --}}
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    <span class="m-3"><i class="fas fa-key mt-2"></i></span>
    </div>
    <input type="password" class="form-control" placeholder="{!! trans('jokes.Contraseña') !!}"
    name="password" id="password">
    </div>
    @error('password')
    <br><div class="alert alert-danger" role="alert">
        {{ $message}}
    </div>
    @enderror
    {{-- Confirmar contraseña --}}
    <div class="input-group form-group mt-3">
        <div class="bg-secondary rounded-start">
        <span class="m-3"><i class="fas fa-key mt-2"></i></span>
        </div>
        <input type="password" class="form-control" placeholder="{!! trans('jokes.Confirmar contraseña') !!}"
        name="password_confirmation" id="password_confirmation">
        </div>

        <input name="role_id" id="role_id" class="input-group form-group mt-3" type="hidden" value="2">

    <div class="input-group form-group mt-3">
            <select id="id_idioma" name="id_idioma">
                @foreach ($idiomas as $idioma)
                <option value="{{$idioma->id}}">{{$idioma->nombre}}</option>
                @endforeach
            </select>
        </div>
    <div class="form-group mt-3">
    <button type="submit" action="{{route('registerAdmin.store')}}" class="btn bg-secondary float-end text-white w-100">{!! trans('jokes.Enviar') !!}</button>
    </div>
    </form>
</div>
</div>
</div>
</div>
                <script src="{{URL::asset('/js/bootstrap.min.js')}}"></script>
            </body>
        </html>
