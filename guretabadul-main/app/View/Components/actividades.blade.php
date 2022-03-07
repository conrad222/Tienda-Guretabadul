@extends ('layout.masterpage')
@section('titulo','Actividades')
@section ('contenido')
<?php echo '<link rel="stylesheet" type="text/css" href="../public/css/actividades.css">' ?>
<li class="nav-item">
                <a class="nav-link active" aria-current="page"  style="font-size: 60px;width:425px;" href="{{ route('actividades.index') }}">{!! trans('jokes.Actividades') !!}</a></a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" style="font-size: 60px; width:425px;" href="{{ route('inter.index') }}">{!! trans('jokes.Intercambios') !!}</a></a>
              </li>

<h3 style="color: aquamarine"></h3>
<button style="font-weight: bold" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
{!! trans('jokes.Añadir') !!}
  </button><br><br>

<table class="table table-dark">
    <thead>
      <tr>
        <th scope="col">{!! trans('jokes.Tipo') !!}</th>
        <th scope="col">{!! trans('jokes.Nombre') !!}</th>
        <th scope="col">{!! trans('jokes.Precio') !!}</th>
        <th scope="col">{!! trans('jokes.Descripción') !!}</th>
        <th scope="col">{!! trans('jokes.Eliminar') !!}</th>
      </tr>
    </thead>
    <tbody>
      @foreach($actividades as $actividades)
      <tr>

        <td>{{$actividades->tipo}}</td>
        <td>{{$actividades->nombre}}</td>
        <td>{{$actividades->precio}}</td>
        <td>{{$actividades->descripcion}}</td>
          <td>
          <form action="{{route('actividades.destroy', $actividades->id)}}" method="POST" enctype="multipart/form-data">

            @method('delete')
            @csrf
            <button type="submit" style="background-color: crimson; border-radius: 16px; font-weight: bold;display: block"><i class="fas fa-trash-alt"></i></button>
          </form>
           {{--Borrar Actividades--}}
          </td>

        @endforeach
      </tr>
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <form class="row g-3" action="{{route('actividades.store')}}" method="POST"  enctype="multipart/form-data">
          {{csrf_field()}}
          <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">{!! trans('jokes.Introduce la actividad') !!}</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">


                  <label for="tipo" class="form-label">{!! trans('jokes.Tipo') !!}</label>
                  <input type="text" class="form-control" id="tipo" name="tipo" required>
                </div>
                <div class="col-md-6">
                  <label for="nombre" class="form-label">{!! trans('jokes.Nombre') !!}</label>
                  <input type="text" class="form-control" id="nombre" name="nombre" required>
                </div>

                <div class="col-md-6">
                  <label for="precio" class="form-label">{!! trans('jokes.Precio') !!}</label>
                  <input type="text" class="form-control" id="precio" name="precio" required>
                </div>
                <div class="col-12">
                  <label for="descripcion" class="form-label">{!! trans('jokes.Descripcion') !!}</label>
                  <input type="text" class="form-control" id="descripcion" name="descripcion" placeholder="Introduce la descripción del producto" required>
                </div>
                  <input type="hidden" name="idComercio" value="{{$actividades->id}}">

                <div class="col-12">
                  <div class="form-check">
                  </div>
                </div>
                </div>


            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">{!! trans('jokes.cancelar') !!}</button>
              <button type="submit" class="btn btn-primary">{!! trans('jokes.Crear') !!}</button>
            </div>
          </form>
      </div>

    </tbody>
@endsection
