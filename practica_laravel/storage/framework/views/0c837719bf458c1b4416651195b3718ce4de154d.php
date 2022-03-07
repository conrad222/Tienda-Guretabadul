
<?php $__env->startSection('titulo','Inicia Sesion'); ?>
<?php $__env->startSection('contenido'); ?>

<link href="<?php echo e(URL::asset('/css/estilos.css')); ?>" rel='stylesheet'>
<div id="template-bg-1">
    <div
    class="d-flex flex-column min-vh-90 justify-content-center align-items-center">
    <div class="card" style="padding: 4rem;">
    <h3 style="text-align:center;"><?php echo trans('jokes.Iniciar Sesión'); ?></h3>
    <div class="card-body w-100">
    <form name="login" action="" method="post">
        <?php echo csrf_field(); ?>
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="email" class="form-control" placeholder="<?php echo trans('jokes.Correo'); ?>"
    name="email" id="email" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
    </div>
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="password" class="form-control" placeholder="<?php echo trans('jokes.Contraseña'); ?>"
    name="password" id="password" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
    </div><br>
    <?php $__errorArgs = ['message'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
    <div class="alert alert-danger" role="alert">
        <?php echo e($message); ?>

    </div>
    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
    
    <div class="form-group mt-3">
    <input type="submit" value="Acceder"
    class="btn float-end text-white w-100" style="opacity:1; background-color:#8024A0;"
    name="login-btn">
    </div>
    </form>



  <?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.masterpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Iker\Desktop\UniServerZ\www\Tienda-Guretabadul\practica_laravel\resources\views/auth/login.blade.php ENDPATH**/ ?>