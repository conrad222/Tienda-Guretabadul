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
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>
    $(document).ready(function(){
    $('#logito').click(function(){
    $('html, body').animate({scrollTop : 0},1);
    return false;
    });
    });
</script>
 <?php if(Auth::check()): ?>
 <a class="nav-link active" style="font-family: 'Akaya Telivigala', cursive;">Bienvenida <b style="color: aquamarine"><?php echo e(auth()->user()->name); ?></b></a>
 <?php endif; ?>
    <style>
        .nav-link{
            background-color: transparent !important;
        }

        

    </style>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
     
        <a  href=""><img src="<?php echo e(url('img/logitot.png')); ?>"  alt="logo" id="logito" widht="50px;" height="50px;"></a>
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
                    <a class="nav-link" aria-current="page" href="http://localhost/Tienda-Guretabadul/TrabajoTiendaIkerSimon/Laravel/wordpress/wp-admin/index.php">Tienda</a>
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
            <a class="nav-link active" id="admin" onMouseOver="this.style.cssText='color: #cc0000'" onMouseOut="this.style.cssText='color: #fff'"  aria-current="page" href="<?php echo e(route('voyager.dashboard')); ?>">Administradora</a></a>
            </li>
            <?php endif; ?>
            <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('cursos.index')); ?>" >Cursos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('taller.index')); ?>">Taller</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('tienda.index')); ?>">Tienda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('mensajes.index')); ?>">Mensajes</a>
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
<?php /**PATH C:\Users\Iker\Desktop\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaIkerSimon\Laravel\resources\views/layout/nav.blade.php ENDPATH**/ ?>