
<?php $__env->startSection('Titulo','Inicio'); ?>
<?php $__env->startSection('estilos'); ?>
<link rel="stylesheet" href="<?php echo e(URL::asset('css/inicio.css')); ?>">
<link rel="stylesheet" href="<?php echo e(URL::asset('css/footer.css')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('contenido'); ?>
<div class="slider" >
    <ul>
        <li style="list-style:none"><img src="<?php echo e(url('img/imagen2.png')); ?>" style="margin-left: 40px;"></li>
        <li style="list-style:none"><img src="<?php echo e(url('img/imagen1.png')); ?>" style="padding-right: 55px;"></li>
    </ul>

</div>
<h2></h2>
<div class="dosdivs" style="margin-bottom:50px;">
    <div class="" >
        <h3 class="titulo" style="margin-bottom: 30px; margin-top: 20px; margin-left: -115px;">¿Qué Hacemos?</h3>
        <h4 class="subtitulo" style="margin-bottom: 100px; padding-left=20px; margin-left: -115px;">INTERCAMBIOS CULTURALES</h4>
        <div class="flexbox-containerP">
        <div class="flexbox-container">
            <div class="servicio1"><label><img class="img_servicios" src="<?php echo e(url('img/amor.png')); ?>"></label><h4 class="teeexto">Cultivar actitudes interculturales positivas.</h4></div>
            <div class="servicio2"><label><img class="img_servicios" src="<?php echo e(url('img/libro.png')); ?>"></label><h4 class="teeexto">Mejorar el autoconcepto personal, cultural <br>y académico.</h4></div>
        </div>
        <div class="flexbox-container" >
            <div class="servicio3"><label><img class="img_servicios" src="<?php echo e(url('img/tomados-de-la-mano.png')); ?>"></label><h4 class="teeexto">Fomentar la igualdad y el respeto mutuo.</h4></div>
            <div class="servicio4"><label><img class="img_servicios" src="<?php echo e(url('img/unidad.png')); ?>"></label><h4 class="teeexto">Potenciar la convivencia entre mujeres de diferentes culturas.</h4></div>
        </div>
        </div>
    </div>
    <div class="nosotros" style=" ">
        <h3 class="titulo" style="margin-bottom: 30px; margin-top: 20px; padding-left: 154px;">¿Quiénes Somos?</h3>
        <h4 class="subtitulo" style="margin-bottom: 100px; padding-left: 154px;">APRENDE Y COMPARTE</h4>
        <div class="flexbox-containerQ">
            <div class="texto" style="padding-left: 135px;">
            Somos un proyecto de ayuda a las mujeres que quieran relacionarse con otras personas para saber más acerca de sus culturas, religiones, experiencias personales y entender en la situación en la que están para apoyarlas.
            Tenemos profesionales cualificados que pueden enseñar a los clientes en los talleres y cursillos que se darán en nuestros puntos de encuentro.</div>
            

    </div>
</div>
</div>

<h3 class="titulo" style="margin-bottom:30px;margin-top:20px;">Colaboradores</h3>
<div class="sponsors" style="margin-bottom: 5%;">
    <?php $__currentLoopData = $sponsors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sponsor): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="sponsor">
        <div class="cuadroImagen">
    <img class="sponsorFoto" src="storage/<?php echo e($sponsor->ruta_img_sponsor); ?>">
        </div>
    </div>   


<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
<?php echo $__env->make('layout.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>



















 








<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.masterpage', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\UniServerZ\www\Tienda-Guretabadul\GureTabadulSquad\Laravel\resources\views/secciones/inicio.blade.php ENDPATH**/ ?>