@extends('layout.masterpage')
@section('titulo','Pagina Principal')
@section('contenido')
<link href="{{URL::asset('/css/estilos.css')}}" rel='stylesheet'>
<table class="table text-color-w" style="border-color:white;">
                            <thead>
                                <tr>
                                <th scope="col" style="font-size:48px;">{!! trans('jokes.Título Mensaje') !!}</th>
                                    <th scope="col" style="font-size:48px;">{!! trans('jokes.Mensajes') !!}</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($mensajes as $mensaje)
                                <tr>
                                    <td style="   font-family: 'Eminenz', arial; color:yellow; font-size: 48px; text-shadow: 4px 4px 4px #aaa;">{{$mensaje->titulo_mensaje}}</td>
                                    <td style="color:#8024A0">{{$mensaje->contenido}}</td>
                                    <td>
                                    <form action="{{route('mensajesadmin.destroy', ['mensajesadmin'=>$mensaje])}}" method="post">
                                                        {{ csrf_field() }}
                                                        <button type="submit" class="btn btn-small btn-danger" style=" background-color:#8024A0;"><i class="fas fa-trash-alt"></i></button>
                                                    </form>
                                        {{--Borrar actividad--}}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                             <form action="{{route('mensajesadmin.store')}}" method="post" class="row">
                                        @csrf
                                        <div class=" col-md-2 offset-md-4 fs-1 fw-bold text-color-w  ">
                                        {!! trans('jokes.Título') !!}
                                            <input type="text"
                                                class=" text-start forms-control " name="titulo_mensaje" id="titulo_mensaje"
                                                required>
                                        </div>
                                        <div class=" col-md-2 offset-md-4 fs-1 fw-bold text-color-w">
                                        {!! trans('jokes.Contenido') !!}
                                                <textarea rows="10" cols="54" placeholder="{!! trans('jokes.Escribe tu deseo') !!}" name="contenido" id="contenido" style="font-size:16px;" required></textarea>
                                            
                                        </div>
                                    
                                        <button type="submit" class="btn fs-4 mt-5 col-2 offset-md-5 " style="background-color:#8024A0; color:white; margin-bottom:50px;">Crear</button>
                            </form>
</table>

@endsection