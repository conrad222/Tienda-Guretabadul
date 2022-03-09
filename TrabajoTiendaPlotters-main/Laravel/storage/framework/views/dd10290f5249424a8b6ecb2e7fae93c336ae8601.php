
<?php $__env->startSection('Titulo', 'Tienda'); ?>
<?php $__env->startSection('contenido'); ?>
<?php $__env->startSection('estilos'); ?>
<link rel="stylesheet" href="<?php echo e(URL::asset('css/tienda.css')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('contenido'); ?>
<div class="slider" >
    <ul>
        <li style="list-style:none"><img src="<?php echo e(url('img/cami.png')); ?>" alt="hola" ></li>
        <li style="list-style:none"><img src="<?php echo e(url('img/bolsa online.png')); ?>"></li>
    </ul>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.masterpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaPlotters-main\Laravel\resources\views/secciones/tienda.blade.php ENDPATH**/ ?>