@extends('layout.masterpage')
@section('titulo','Pagina Principal')
@section('contenido')
<link href="{{URL::asset('/css/estilos.css')}}" rel='stylesheet'>
        <div class="modal-dialog ">
            <div class="modal-content ">
                <div class="text-center">
                    <h5 class="modal-title " id="exampleModalLabel"><strong>{!! trans('jokes.CREAR ADMINISTRADOR') !!}</strong></h5>
                </div>
                <div class="modal-body">
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
                                        <button type="submit" class="btn btn-small btn-danger" style=" background-color:#8024A0;"><i
                                                class="fas fa-trash-alt"></i></button>
                                    </form>
                        {{--Borrar actividad--}}
                    </td>
                </tr>
                 @endforeach
                </tbody>
                </table>
                <a class="nav-link active" aria-current="page" href="{{ route('chartjs.index') }}" style="text-align:center; color:white; background-color: #8024A0; margin-bottom: 20px; border-radius: 5px;">{!! trans('jokes.Gráfica de Usuarios') !!}</a></a>
                <div
    class="d-flex flex-column min-vh-90 justify-content-center align-items-center modal-dialog-centered">
    <div class="card" style="padding: 3rem; padding-bottom:0px">
    <h3 style="text-align:center;">{!! trans('jokes.Registrarse') !!} </h3>
    <div class="card-body w-100">
                <form action="{{route('registerAdmin.store')}}"  method="POST">

        @csrf

    {{-- Nombre --}}
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="text" class="form-control" placeholder="{!! trans('jokes.Nombre') !!}" id="name" name="name" style=" border-radius: 5px;
    border: 3px solid #8024A0;"
></div>

    @error('name')
    <br><div class="alert alert-danger" role="alert">
        {{ $message}}
    </div>
    @enderror
    {{-- Email --}}
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="text" class="form-control" placeholder="{!! trans('jokes.Correo') !!}"
    name="email" id="email" style=" border-radius: 5px; border: 3px solid #8024A0;"
>
    </div>

    @error('email')
    <br><div class="alert alert-danger" role="alert">
        {{ $message}}
    </div>
    @enderror
    {{-- Contraseña --}}
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="password" class="form-control" placeholder="{!! trans('jokes.Contraseña') !!}"
    name="password" id="password" style=" border-radius: 5px; border: 3px solid #8024A0;"
>
    </div>
    @error('password')
    <br><div class="alert alert-danger" role="alert">
        {{ $message}}
    </div>
    @enderror
    {{-- Confirmar contraseña --}}
    <div class="input-group form-group mt-3">
        <div class="bg-secondary rounded-start">
        </div>
        <input type="password" class="form-control" placeholder="{!! trans('jokes.Confirmar contraseña') !!}"
        name="password_confirmation" id="password_confirmation" style=" border-radius: 5px; border: 3px solid #8024A0;"
>
        </div>

        <div class="input-group form-group mt-3">
        <select id="role_id" name="role_id">
        @foreach ($roles as $role)
            <option value="{{$role->id}}">{{$role->NombreRol}}</option>
        @endforeach
    </select>
    </div>
    <div class="form-group mt-3">
    <button type="submit" action="{{route('registerAdmin.store')}}" class="btn float-end text-white w-100" style="opacity:1; background-color:#8024A0; margin-top:70px;">{!! trans('jokes.Enviar') !!}</button>
    </div>
    </form>
                </div>
            </div>

        @endsection


