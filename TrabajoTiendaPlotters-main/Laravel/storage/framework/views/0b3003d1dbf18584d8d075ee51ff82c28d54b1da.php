<?php
Illuminate\Support\Facades\App::setLocale(session('idioma'));
?>
<script src="typed.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://unpkg.com/typeit@8.2.0/dist/index.umd.js"></script>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: rgba(0,0,0,0.5);">
    <div class="container-fluid">

        <a id="tabadul" class="navbar-brand" href="<?php echo e(route('home')); ?>"></a>
        <script>
            new TypeIt("#tabadul", {
                strings: "Gure Tabadul",
            }).go();
 </script>
 <?php if(Auth::check()): ?>
 <a class="nav-link active" style="font-family: 'Akaya Telivigala', cursive;">Bienvenida <b style="color: aquamarine"><?php echo e(auth()->user()->name); ?></b></a>
 <?php endif; ?>
  
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
     
        <img src="<?php echo e(url('img/logos2.png')); ?>" widht="50px;" height="50px;">
        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="justify-content:right;">
            <ul style="margin-left:35%;" class="navbar-nav mr-auto">
               

                <?php if(!Auth::check()): ?>
               
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('cursos.index')); ?>">Cursos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('taller.index')); ?>">Taller</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('tienda.index')); ?>">Tienda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('login')); ?>">Inicio Sesión</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('register')); ?>">Registrarse</a>
                </li>
                <?php else: ?> 


<?php if(Auth::user()->role_id=="1"): ?>

                <li class="nav-item">
            <a class="nav-link active" id="admin" onMouseOver="this.style.cssText='color: #cc0000'" onMouseOut="this.style.cssText='color: #fff'"  aria-current="page" href="<?php echo e(route('voyager.dashboard')); ?>"><?php echo trans('jokes.Administradora'); ?></a></a>
            </li>
            <?php endif; ?>
            <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('cursos.index')); ?>">Cursos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('taller.index')); ?>">Taller</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('tienda.index')); ?>">Tienda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href=""
                        onclick="event.preventDefault(); document.getElementById('logout').submit();">Cerrar sesion</a>
                    <!-- Solo usuarios identificados -->
                    <form id="logout" action="<?php echo e(route('logout')); ?>" method="POST" style="display:none;">
                        <?php echo csrf_field(); ?>
                    </form>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('perfil.index')); ?>">Ver perfil</a>
                </li>
         

                <?php endif; ?>

            </ul>

        </div>
    </div>
</nav>
<?php /**PATH D:\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaPlotters-main\Laravel\resources\views/layout/nav.blade.php ENDPATH**/ ?>