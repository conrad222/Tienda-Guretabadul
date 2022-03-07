@extends('adminlte::page')

@section('title', 'Guretabadul')


@section('content_header')
    <h1>Guretabadul</h1>
@stop

@section('content')
    <p>Welcome to this beautiful admin panel.</p>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
   <script>
       Swal.fire(
  'Ha salido bien',
  '',
  'success'
)
   </script>
@stop