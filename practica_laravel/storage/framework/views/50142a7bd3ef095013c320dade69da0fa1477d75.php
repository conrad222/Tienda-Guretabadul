
<?php $__env->startSection('titulo','Registrate'); ?>
<?php $__env->startSection('contenido'); ?>
<?php
$cursos=App\Models\Curso::all();
?>
<link href="<?php echo e(URL::asset('/css/estilos.css')); ?>" rel='stylesheet'>
<div id="template-bg-1">
    <div
    class="d-flex flex-column min-vh-90 justify-content-center align-items-center">
    <div class="card" style="padding: 4rem;">
    <h3 style="text-align:center;"><?php echo trans('jokes.Registrarse'); ?></h3>
    <div class="card-body w-100">
    <form action="" method="POST">
        <?php echo csrf_field(); ?>

    
    <div class="input-group form-group mt-3">
    <div class="rounded-start">
    </div>
    <input type="text" class="form-control" placeholder="<?php echo trans('jokes.Nombre'); ?>" id="name" name="name" style=" border-radius: 5px;
    border: 3px solid #8024A0;"></div>

    <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
    <br><div class="alert alert-danger" role="alert">
        <?php echo e($message); ?>

    </div>
    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
    
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="text" class="form-control" placeholder="<?php echo trans('jokes.Correo'); ?>"
    name="email" id="email" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
    </div>

    <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
    <br><div class="alert alert-danger" role="alert">
        <?php echo e($message); ?>

    </div>
    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
    
    <div class="input-group form-group mt-3">
    <div class="bg-secondary rounded-start">
    </div>
    <input type="password" class="form-control" placeholder="<?php echo trans('jokes.Contraseña'); ?>"
    name="password" id="password" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
    </div>
    <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
    <br><div class="alert alert-danger" role="alert">
        <?php echo e($message); ?>

    </div>
    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
    
    <div class="input-group form-group mt-3">
        <div class="bg-secondary rounded-start">
        </div>
        <input type="password" class="form-control" placeholder="<?php echo trans('jokes.Confirmar Contraseña'); ?>"
        name="password_confirmation" id="password_confirmation" style=" border-radius: 5px;
    border: 3px solid #8024A0;">
        </div>
        <div class="form-group row">
                            <label for="CodCurso" class="col-md-4 col-form-label text-md-right">Curso:</label>
                            <div class="col-md-6">
                            <select class="form-select" aria-label="Default select example" name="codCurso">
                                <option selected>Selecciona tu curso:</option>
                                <?php $__currentLoopData = $cursos; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $curso): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option><?php echo e($curso->nombre); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                              </select>
                            </div>
                        </div>
    
    <div class="form-group mt-3">
    <button type="submit" class="btn  float-end text-white w-100" style="opacity:1; background-color:#8024A0;">Enviar</button>
    </div>
    </form>
  <?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.masterpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Iker\Desktop\UniServerZ\www\Tienda-Guretabadul\practica_laravel\resources\views/auth/register.blade.php ENDPATH**/ ?>