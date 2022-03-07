
<?php $__env->startSection('titulo','Pagina Principal'); ?>
<?php $__env->startSection('contenido'); ?>
<link href="<?php echo e(URL::asset('/css/estilos.css')); ?>" rel='stylesheet'>
<table class="table text-color-w" style="border-color:white;">
                            <thead>
                                <tr>
                                    <th scope="col" style="font-size:48px;"><?php echo trans('jokes.Título Mensaje'); ?></th>
                                    <th scope="col" style="font-size:48px;"><?php echo trans('jokes.Mensajes'); ?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $__currentLoopData = $mensajes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $mensaje): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                <td style="   font-family: 'Eminenz', arial; font-size: 48px; color:yellow; text-shadow: 4px 4px 4px #aaa;"><?php echo e($mensaje->titulo_mensaje); ?></td>
                                <td style="color:#8024A0"><?php echo e($mensaje->contenido); ?></td>
                                </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                             <form action="<?php echo e(route('mensajes.store')); ?>" method="post" class="row">
                                        <?php echo csrf_field(); ?>
                                        <div class=" col-md-2 offset-md-4 fs-1 fw-bold text-color-w  ">
                                        <?php echo trans('jokes.Título'); ?>

                                            <input type="text"
                                                class=" text-start forms-control" name="titulo_mensaje" id="titulo_mensaje"
                                                required>
                                        </div>
                                        <div class=" col-md-2 offset-md-4 fs-1 fw-bold text-color-w">
                                        <?php echo trans('jokes.Contenido'); ?>

                                                <textarea rows="10" cols="54" placeholder="<?php echo trans('jokes.Escribe tu deseo'); ?>" name="contenido" id="contenido" style="font-size:16px;" required></textarea>
                                            
                                        </div>
                                    
                                        <button type="submit" class="btn fs-4 mt-5 col-2 offset-md-5" style="background-color:#8024A0; color:white; margin-bottom:50px;">Crear</button>
                            </form>
</table>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout.masterpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Iker\Desktop\UniServerZ\www\Tienda-Guretabadul\practica_laravel\resources\views/secciones/mensajes.blade.php ENDPATH**/ ?>