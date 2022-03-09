<?php
Illuminate\Support\Facades\App::setLocale(session('idioma'));
?>
<script src="typed.js" type="text/javascript"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://unpkg.com/typeit@8.2.0/dist/index.umd.js"></script>
<nav class="navbar navbar-expand-lg navbar-light fixed-top">
    <div class="container-fluid">

        <a id="tabadul" class="navbar-brand" href="home"></a>
        <script>
            new TypeIt("#tabadul", {
                strings: "Gure Tabadul",
            }).go();

        </script>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul style="margin-left:35%;" class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('cursos.index')); ?>">Cursos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('taller.index')); ?>">Taller</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('tienda.index')); ?>">Tienda</a>
                </li>

                <?php if(!Auth::check()): ?>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('login')); ?>">Inicio Sesión</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="<?php echo e(route('register')); ?>">Registrarse</a>
                </li>
                <?php else: ?>
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
                <a class="nav-link active" style="font-family:cursive; color:#000">Bienvenida <b
                        style="color: aquamarine"><?php echo e(auth()->user()->name); ?></b></a>

                <?php endif; ?>

            </ul>

        </div>
    </div>
</nav>
<?php /**PATH D:\UniServerZ\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaPlotters-main\Laravel\resources\views/layout/nav.blade.php ENDPATH**/ ?>