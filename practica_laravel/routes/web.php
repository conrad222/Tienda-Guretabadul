<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\InicioController;
use App\Http\Controllers\RegisterAdminController;
use App\Http\Controllers\AdminWebController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserAdminController;
use App\Http\Controllers\ChartJsController;
use App\Http\Controllers\MensajesController;
use App\Http\Controllers\CursosController;
use App\Http\Controllers\CursosAdminController;
use App\Http\Controllers\MensajesAdminController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/index', function () {
//     return view('welcome');
// });

Route::get('/', function(){
    return view('secciones.inicio');
})->middleware('auth');

//Sesiones

Route::get('/login',[SessionController::class,'create'])->name('login.index');
Route::post('/login', [SessionController::class,'store'])->name('login.store');
Route::get('/logout', [SessionController::class,'destroy'])->name('login.destroy');


//Registro
Route::get('/register',[RegisterController::class,'create'])->name('register.index');
Route::post('/register',[RegisterController::class,'store'])->name('register.store');

//Contacto por correo

Route::get('/inicio',[InicioController::class,'index'])->name('secciones.inicio');


Route::get('lang/{lang}', [LanguageController::class, 'swap'])->name('lang.swap');

Route::get('chartjs', [ChartJsController::class, 'index'])->name('chartjs.index');


//Controlador productos

Route::resource('productos' , productoController::class);

Route::resource('userAdmin', UserAdminController::class);

Route::resource('registerAdmin', RegisterAdminController::class);

Route::resource('mensajes', MensajesController::class);

Route::resource('mensajesadmin', MensajesAdminController::class);

Route::resource('cursos', CursosAdminController::class);

Route::resource('cursosadmin', CursosAdminController::class);

//Route::get('/comercios/{id}', 'App\Http\Controllers\RelacionController@index');

//Route::delete('comercios/{comercio}', [App\Http\Controllers\comercioController::class, 'destroy'])->name('comercios.destroy');
