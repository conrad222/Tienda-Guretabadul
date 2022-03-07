<div class="row position-relative">
    <div class=" fs-1 fw-bold text-color-GureO position-absolute top-Gure-30  start-Gure-15">{!! trans('jokes.¿A QUÉ ESPERAS?') !!}</div>
    <div class=" fs-3 fw-bold text-texto-Gure position-absolute top-Gure-35  start-Gure-15">{!! trans('jokes.Ponte en contacto con nosotras.') !!}</div>
    <form  action="{{route('contactanos.store')}}" method="post">
        @csrf
    <div class=" fs-1 fw-bold text-color-GureO position-absolute top-Gure-25  start-Gure-50">{!! trans('jokes.Nombre') !!}</div>
        <input type="text"  class="forms-control border-bottom-GureO position-absolute top-Gure-30  start-Gure-50" placeholder="{!! trans('jokes.Nombre') !!}" name="name" id="name">
    <div class=" fs-1 fw-bold text-color-GureO position-absolute top-Gure-25 start-Gure-70">{!! trans('jokes.Email') !!}</div>
    <input type="text"  class="forms-control border-bottom-GureO position-absolute top-Gure-30  start-Gure-70"  placeholder="{!! trans('jokes.Correo') !!}"name="email" id="email">
    <div class=" fs-1 fw-bold text-color-GureO position-absolute top-Gure-40 start-Gure-60">{!! trans('jokes.Mensaje') !!}</div>
        <textarea class="forms-control  textarea-Gure position-absolute top-Gure-45 start-Gure-55" name="message" id="message"  cols="32" rows="12"></textarea>
        <div class="position-absolute top-Gure-57 start-Gure-62">
            <button class="btn  btn-Gure" id="form-contact-submit">{!! trans('jokes.Enviar correo') !!}</button>
        </div>
</form> 
<svg width="1845" height="1562" viewBox="0 0 1845 1562" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M1473.52 85.5001C747.382 218.872 -55.4824 114.935 3.01758 454.026C134.067 736.388 642.018 1085.57 1294.02 1386.57C1481.2 1472.98 1671.22 1547.11 1844.02 1561.47L1844.01 0.00012207C1736.24 28.9363 1613.23 59.8378 1473.52 85.5001Z" fill="#EEE3E3" style="mix-blend-mode:luminosity"/>
    </svg>
</div>
