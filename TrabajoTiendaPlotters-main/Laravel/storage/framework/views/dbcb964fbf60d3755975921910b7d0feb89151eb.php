<style>
img[alt="logo"]{
  animation: rotation 3s infinite linear;
}

@keyframes  rotation {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

img[alt="logo"]:hover{
  transform: rotate(100deg);
}

.nav-link:hover{
        background-color: #311bbf;
        color: white!important;
        border-radius: 100%;
    }

   .nav-link {
    transition: background-color 1s;
    border-radius:100%;
    display: block;
    padding: 0.5rem 1rem;
    color: #64a19d;
    text-decoration: none;
    -webkit-animation: colorchange 20s infinite alternate;
}

.nav-link:hover, .nav-link:focus {
  color: #50817e;
}

.nav-link.disabled {
  color: #6c757d;
  pointer-events: none;
  cursor: default;
}

@-webkit-keyframes colorchange {
  0% {
    color: grey;
  }
  
  
  20% {
    color: #d35400;
  }
  40% {
    color: #924444;
  }
  60% {
    color: crimson;
  }
 
  
  80% {
    color: #f1c40f;
  }
  100% {
    color: chartreuse;
  }

}

@media (prefers-reduced-motion: reduce) {
  .nav-link {
    -webkit-transition: none;
    transition: none;
  }
}

.container-f{
padding-right: 0.75rem;
padding-left: 0.75rem;
margin-right: auto;
margin-left: auto;
}

.colores {
    transition: background-color 1s;
    border-radius:100%;
    padding: 0.5rem 1rem;
    color: #64a19d;
    text-decoration: none;
    -webkit-animation: colorchange 20s infinite alternate;
}

.colores.disabled {
  color: #6c757d;
  pointer-events: none;
  cursor: default;
}

@-webkit-keyframes colorchange {
  0% {
    color: grey;
  }
  10% {
    color: #8e44ad;
  }
  20% {
    color: #1abc9c;
  }
  30% {
    color: #d35400;
  }
  40% {
    color: #924444;
  }
  50% {
    color: crimson;
  }
  60% {
    color: blue;
  }
  70% {
    color: #2980b9;
  }
  80% {
    color: #f1c40f;
  }
  90% {
    color: chartreuse;
  }
  100% {
    color: pink;
  }
}

@media (prefers-reduced-motion: reduce) {
  .colores{
    -webkit-transition: none;
    transition: none;
  }
}
@import  url(https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic);
/* <i class="material-icons"></i> */
.main-wrapper {
    border-radius: 4px;
    background-color: white;
    padding: 20px;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23);
    position: relative;
}

i.material-icons {
    font-size: 1.5rem;
    color: white;
    position: relative;
    border-radius: 50%;
    padding: 5px;
    margin: 30px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
    transition: color 0.2s ease, background-color 0.2s ease, transform 0.3s ease;
}

i.material-icons:after {
    content: "";
    width: 120%;
    height: 120%;
    border: solid 2px;
    transform: scale(0.8);
    position: absolute;
    top: -2px;
    left: -2px;
    border-radius: 50%;
    transition: all 0.3s ease;
}

i.material-icons:hover:after {
    transform: scale(1);
    box-shadow: 10px 0 20px rgba(0, 0, 0, 0.19), 6px 0 6px rgba(0, 0, 0, 0.23);
}

i.material-icons:nth-of-type(1) {
    background-color: white;
}

i.material-icons:nth-of-type(1):hover {
    color: white;
}

i.material-icons:nth-of-type(1):after {
    border-color: white;
}

i.material-icons:hover {
    background-color: white;
    transform: rotate(90deg);
    cursor: pointer;
    box-shadow: none;
}


@media (min-width:601px) {
  i.material-icons {
    padding:10px;
    margin:5px;
    font-size:2rem;
  }
}

@media (min-width:993px) {
  i.material-icons {
    padding:20px;
    margin:10px;
    font-size:4rem;
  }
  i.material-icons:after {
    border-width:3px;
    top:-3px;
    left:-3px;
  }
}

</style><?php /**PATH D:\UniServerZ\www\Tienda-Guretabadul\TrabajoTiendaPlotters-main\Laravel\resources\views/layout/estilos.blade.php ENDPATH**/ ?>