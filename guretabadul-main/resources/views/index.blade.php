<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="{{URL::asset('/css/style.css')}}" rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Guretabadul</title>
</head>
<body class="bg-gradient">
   <div class="container-fluid bg-gradient">
    @include('components.nav')
    @include('components.alert')
       <div class="row mt-5 ">
           {{-- navar --}}

           {{-- fin navar --}}
           {{-- seccion_inicio  --}}
           <div class="col-md-12 mt-5" id="seccion_inicio">
         @include("components.section_inicio")
           </div>
           {{-- fin seccion_inicio  --}}
           {{-- seccion_quehacemos --}}
           <div class="col-md-12  img-padding-0" id="seccion_quehacemos">
            @include('components.section_quehacemos')
           </div>
           {{-- fin seccion_quehacemos --}}
            {{-- seccion_comolohacemos --}}
            <div class="col-md-12 img-padding-0 " id="seccion_comolohacemos">
                @include('components.section_comolohacemos')
            </div>
            {{-- fin seccion_comolohacemos --}}
            {{-- seccion_eslogan --}}
            <div class="col-md-12" id="seccion_eslogan">
                @include('components.section_eslogan')
            </div>
            {{-- fin seccion_eslogan --}}
             {{-- seccion_propuesta --}}
             <div class="col-md-12 d-flex justify-content-center " id="seccion_propuesta">
                @include('components.section_propuesta')
            </div>
            {{-- fin seccion_propuesta --}}
             {{-- seccion_propuesta2 --}}
             <div class="col-md-12 d-flex justify-content-center " id="seccion_propuesta2">
                @include('components.section_propuesta2')
            </div>
            {{-- fin seccion_propuesta2 --}}
            {{-- section_apuntate_actividades --}}
               <div class="col-md-12 d-flex  justify-content-center " id="apuntate_actividades">
                @include('components.section_apuntate_actividades')
            </div>
            {{-- fin section_apuntate_actividades --}}
             {{-- section_contacto --}}
             <div class="col-md-12 d-flex ps-5 pe-0 justify-content-center " id="section_contacto">
                @include('components.section_contacto')
            </div>
            {{-- fin section_contacto --}}
              {{-- section_faq --}}
              <div class="col-md-12 d-flex   img-padding-0 justify-content-start " id="section_faq">
                @include('components.section_faq')
            </div>
            {{-- fin section_faq --}}
              {{-- section_dondeestamos --}}
              <div class="col-md-12 d-flex ps-5 pe-0 flex-row-reverse bd-highlight " id="section_dondeestamos">
                @include('components.section_dondeestamos')
            </div>
            {{-- fin section_dondeestamos --}}
             {{-- footer --}}
             <div class="col-md-12 d-flex img-padding-0 mt-5 align-bottom justify-content-center " id="footer">
                @include('components.footer')
            </div>
            {{-- fin footer --}}



</body>
<script>
    setTimeout(dspnone, 5000);
    var alerta = document.getElementById("alert");

    function dspnone() {
        alerta.style.display = "none";
    }

</script>
<script src="{{URL::asset('/js/bootstrap.min.js')}}"></script>
</html>
