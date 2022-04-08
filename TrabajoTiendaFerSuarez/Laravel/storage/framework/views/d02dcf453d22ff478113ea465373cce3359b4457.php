
<?php $__env->startSection('Titulo','Talleres'); ?>
<?php $__env->startSection('contenido'); ?>
<?php $__env->startSection('estilos'); ?>
<link rel="stylesheet" href="<?php echo e(URL::asset('css/talleres.css')); ?>">
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
    <div class="hide" id="contenido">

    <div class="talleres">
<?php $__currentLoopData = $talleres; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $taller): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

<div class="card" style="width: 18rem;">

  <a  href="<?php echo e(route('taller.show',['taller'=>$taller])); ?>">

        <?php if(empty($taller->imagenes)): ?>
            <?php
          $rutaImagen=$taller->imagenes->first()->ruta;
          echo '<img class="imagen" src="storage/'.$rutaImagen.'" class="card-img-top">'
          ?>
        <?php else: ?>
            <?php
            $rutaImagen="default.jpg";
          echo '<img class="imagen" src="storage/'.$rutaImagen.'" class="card-img-top">'
            ?>
          <?php endif; ?>

</a>

    <div class="card-body" style="font-family: cursive; text-align:center;">
      <h5 class="titulo"><?php echo e($taller->Título); ?></h5>
      <p class="card-text"><i class="fas fa-calendar-check"></i>
        <?php echo e($taller->Fecha_comienzo); ?></p>
      <p class="card-text"><i class="fas fa-calendar-times"></i> <?php echo e($taller->Fecha_final); ?></p>
      <p class="card-text"><i class="fas fa-info-circle"></i> <?php echo e($taller->Descripción); ?></p>
      <p class="card-text"><i class="fas fa-coins"></i> <?php echo e($taller->Precio); ?>&nbsp;&nbsp;<i class="fas fa-euro-sign"></i></p>
      <p class="card-text"><i class="fas fa-female"></i> <?php echo e($taller->Capacidad); ?></p>
    </div>
  </div>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>

    </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        window.addEventListener('load', () => {

            setTimeout(carga, 2000);


            function carga(){

              document.getElementById('circulo').className = 'hide';

                document.getElementById('contenido').className = 'center animated fadeInDown';
            }
          

        })

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.masterpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaPlotters-main\Laravel\resources\views/secciones/Talleres.blade.php ENDPATH**/ ?>