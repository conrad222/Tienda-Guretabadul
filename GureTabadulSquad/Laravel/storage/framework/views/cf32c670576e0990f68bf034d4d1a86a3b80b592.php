
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
        <input type="text" name="email_user1" id="email_user1"  class="form-control" placeholder="<?php echo e(auth()->user()->email); ?>" required></input></br>
    </div>
    <div class="form-group">
        Correo Saliente
        <input type="text" name="email_user2" id="email_user2"  class="form-control" required></input></br>
    </div>
    <div class="form-group">
        Mensaje
        <textarea name="contenido" id="cz" rows="10" class="form-control" required></textarea></br>
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
<?php $__currentLoopData = $mensajes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mensaje): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<div class=""style="text-align:center;">
      
        <div class="cajaMatch connect-cat" id="cajas" style="border-radius: 40px;">
        <div class="tipo" style="float:left;padding-left:110px;"><i class="fa-solid fa-user">&nbsp;DE:</i>&nbsp;<?php echo e($mensaje->email_user1); ?></div>
        <div class="tipo" style="padding-left:70%;margin-right:10px;"><i class="fa-solid fa-user">&nbsp;PARA:</i>&nbsp;<?php echo e($mensaje->email_user2); ?></div>
        <div class="tipo" style="margin-top:15px; margin-left: 50px; margin-right:50px;"><i class="fa-solid fa-message"></i>&nbsp;<?php echo e($mensaje->contenido); ?></div>
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

<?php echo $__env->make('layout.masterpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\UniServerZ\www\Tienda-Guretabadul\GureTabadulSquad\Laravel\resources\views/secciones/mensajes.blade.php ENDPATH**/ ?>