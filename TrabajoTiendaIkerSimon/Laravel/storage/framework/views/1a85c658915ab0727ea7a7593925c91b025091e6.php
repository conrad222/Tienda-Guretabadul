
<?php $__env->startSection('Titulo','Mensajes'); ?>
<?php $__env->startSection('contenido'); ?>
<?php $__env->startSection('estilos'); ?>
<link rel="stylesheet" href="<?php echo e(URL::asset('css/mensajes.css')); ?>">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
<?php $__env->stopSection(); ?>

<div class="center section" id="circulo">
        <img src="<?php echo e(url('img/logito2.png')); ?>"widht="200px;" height="200px;" style="margin-top:40px;">
        <style>
          img[src="<?php echo e(url('img/logito2.png')); ?>"]{
            animation: rotation 0.7s infinite linear;
          }

          @keyframes  rotation {
            from {
              transform: rotate(0deg);
            }
            to {
              transform: rotate(360deg);
            }
          }
        </style>
    </div>

    <?php if(Auth::check()): ?>
    <div class="hide" id="contenido">
<div class="col-md-6 offset-md-3" style="margin-bottom:20px;">
<div class="card">
<div class="card-header" style="text-align:center;">
    Administradores
</div>
<div class="card-body">
    <?php echo csrf_field(); ?>
    <div class="form-group">
        <?php $__currentLoopData = $usuarios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $usuario): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <label><?php echo e($usuario->email); ?></label>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</div>
</div>
</div>

<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header" style="text-align:center;">
    Formulario de Contacto
</div>
<div class="card-body" style="text-align:left;">
<form action="<?php echo e(route('mensajes.store')); ?>" method="POST"   enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <div class="form-group">
        Tú Correo
        <input type="text" name="emailguretabul" class="form-control" placeholder="<?php echo e(auth()->user()->email); ?>" required/></br>
    </div>
    <div class="form-group">
        Correo Administradores
        <input type="text" name="emailyou" class="form-control" required></input></br>
    </div>
    <div class="form-group">
        Mensaje
        <textarea name="msg" rows="10" class="form-control" required></textarea></br>
    </div>

    <button type="submit" class="btn btn-primary">Enviar</button>

</form>
</div>
</div>
</div>
<?php endif; ?>


<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header" style="text-align:center;">
Mensajes
</div>
<?php $__currentLoopData = $conversacion; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $conv): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<div class="card-body"style="text-align:center;">
      
        <div class="cajaMatch connect-cat" id="cajas" style="border-radius: 40px;">
        <div class="tipo" style="text-align:left;">Fecha:&nbsp;<?php echo e($conv->fecha); ?></div>
        <div class="tipo"  style="text-align:left;">Hora:&nbsp;<?php echo e($conv->hora); ?></div>
        <div class="tipo"><i class="fa-solid fa-user">&nbsp;De:</i>&nbsp;<?php echo e($conv->email_user1); ?></div>
        <div class="tipo"><i class="fa-solid fa-user">&nbsp;Para:</i>&nbsp;<?php echo e($conv->email_user2); ?></div>
        <div class="tipo"><i class="fa-solid fa-message"></i>&nbsp;<?php echo e($conv->ContenidoMensaje); ?></div>
        <hr style="background-color: grey;"></hr>
      </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
</div>
</div>





<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        window.addEventListener('load', () => {

          setTimeout(carga, 1000);

           

          function carga(){

              document.getElementById('circulo').className = 'hide';

              document.getElementById('contenido').className = 'center animated fadeInUp';
          }
          

        })

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.masterpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaIkerSimon\Laravel\resources\views/secciones/mensajes.blade.php ENDPATH**/ ?>