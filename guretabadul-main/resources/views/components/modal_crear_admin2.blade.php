<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Crear Administrador</title>
    <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<header>
    @include('components.alert')
</header>
<body class="bg-gradient">
        <div class="modal-dialog modal-Gure">
            <div class="modal-content  modal-Gure bg-form-gure-smoke text-color-GureO">
                <div class="modal-header-gure text-center">
                    <h5 class="modal-title " id="exampleModalLabel">{!! trans('jokes.CREAR ADMINISTRADOR') !!}</h5>
                    <a href="{{route ('home')}}"><button type="button" class="btn-close" sdata-bs-dismiss="modal"
                            aria-label="Close"></button></a>
                </div>
                <div class="modal-body  ">
                <table class="table t   ext-color-w">
                <thead >
                    <tr>
                    <th scope="col">{!! trans('jokes.NOMBRE') !!}</th>
                    <th scope="col">{!! trans('jokes.EMAIL') !!}</th>
                    <th scope="col">{!! trans('jokes.ROL') !!}</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($users as $user)
                <tr>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <td>{{$user->role_id}}</td>
                    <td>
                    <form action="{{route('userAdmin.destroy',['userAdmin'=>$user])}}"
                                        method="post">
                                        @method('DELETE')
                                        @csrf
                                        <button type="submit" class="btn btn-small btn-danger"><i
                                                class="fas fa-trash-alt"></i></button>
                                    </form>
                        {{--Borrar actividad--}}
                    </td>
                </tr>
                 @endforeach
                </tbody>
                </table>

                <div
    class="d-flex flex-column min-vh-90 justify-content-center align-items-center modal-dialog-centered">
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

        <div class="input-group form-group mt-3">
        <select id="role_id" name="role_id">
        @foreach ($roles as $role)
            <option value="{{$role->id}}">{{$role->NombreRol}}</option>
        @endforeach
    </select>
    </div>
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


</body>
<script src="{{URL::asset('/js/bootstrap.min.js')}}"></script>
</html>

