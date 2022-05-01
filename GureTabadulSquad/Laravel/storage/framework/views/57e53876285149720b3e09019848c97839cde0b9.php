
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
    <ul style="display:flex; ">
        <li style="list-style:none; padding-right:370px;">Camiseta XL</li>
       
        <li style="list-style:none;  padding-right:20px;" >Bolsa XL</li>
      
    </ul>
    
</div>
<div class="slider" >
    <ul>
        <li style="list-style:none"><img src="<?php echo e(url('img/cami.png')); ?>" alt="hola" ></li>
       
        <li style="list-style:none"><img src="<?php echo e(url('img/bolsa online.png')); ?>"></li>
      
    </ul>
    <ul style="display:flex; ">
        <li style="list-style:none; padding-right:370px;">Camiseta XXL</li>
       
        <li style="list-style:none;  padding-right:20px;" >Bolsa XXL</li>
      
    </ul>
    
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.masterpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaIkerSimon\Laravel\resources\views/secciones/tienda.blade.php ENDPATH**/ ?>