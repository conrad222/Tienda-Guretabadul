@extends ('layout.masterpage')
@section('titulo','Registrate')
@section('contenido')
@php
$cursos=App\Models\Curso::all();
@endphp
<link href="{{URL::asset('/css/estilos.css')}}" rel='stylesheet'>
<div id="template-bg-1">
    <div
    class="d-flex flex-column min-vh-90 justify-content-center align-items-center">
    <div class="card" style="padding: 4rem;">
    <h3 style="text-align:center;">{!! trans('jokes.Registrarse') !!}</h3>
    <div class="card-body w-100">
    <form action="" method="POST">
        @csrf

    {{-- Nombre --}}
    <div class="input-group form-group mt-3">
    <div class="rounded-start">
    </div>
    <input type="text" class="form-control" placeholder="{!! trans('jokes.Nombre') !!}" id="name" name="name" style=" border-radius: 5px;
    border: 3px solid #8024A0;"></div>

    @error('name')
    <br><div class="alert alert-danger" role="alert">
        {{ $message}}
    </div>
    @enderror
    {{-- Email  --}}
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="text" class="form-control" placeholder="{!! trans('jokes.Correo') !!}"
    name="email" id="email" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
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
    name="password" id="password" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
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
        <input type="password" class="form-control" placeholder="{!! trans('jokes.Confirmar Contraseña') !!}"
        name="password_confirmation" id="password_confirmation" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
        </div>
        <div class="form-group row">
                            <label for="CodCurso" class="col-md-4 col-form-label text-md-right">Curso:</label>
                            <div class="col-md-6">
                            <select class="form-select" aria-label="Default select example" name="codCurso">
                                <option selected>Selecciona tu curso:</option>
                                @foreach($cursos as $curso)
                                <option>{{$curso->nombre}}</option>
                                @endforeach

                              </select>
                            </div>
                        </div>
    
    <div class="form-group mt-3">
    <button type="submit" class="btn  float-end text-white w-100" style="opacity:1; background-color:#8024A0;">Enviar</button>
    </div>
    </form>
  @endsection