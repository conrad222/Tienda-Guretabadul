
<?php if($errors->any()): ?>
    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <div class="alert alert-danger" role="alert">
        <?php echo e($error); ?>

      </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>



<?php if(session('mensaje')): ?>
      <div class="alert alert-<?php echo e(session('tipoMensaje')); ?>" role="alert" style="margin-top: 4%;">
        <?php echo e(session('mensaje')); ?>

      </div>
<?php endif; ?><?php /**PATH D:\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaIkerSimon\Laravel\resources\views/layout/alertas.blade.php ENDPATH**/ ?>