<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\contactanosController;
use App\Http\Controllers\ActividadesController;
use App\Http\Controllers\CursosController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SessionController;
use App\Http\Controllers\AccederController;
use App\Http\Controllers\indexController;
use App\Http\Controllers\CursosAdminController;
use App\Http\Controllers\ActividadesAdminController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserAdminController;
use App\Http\Controllers\MatchAdminController;
use App\Http\Controllers\AdminWebController;
use App\Http\Controllers\VerPerfilesController;
use App\Http\Controllers\RegisterAdminController;
use App\Http\Controllers\IntercambiosAdminController;
use App\Http\Controllers\TiendaController;

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


Route::get('/',[indexController::class,'index'])->name('home');

// login
Route::get('/login',[SessionController::class,'create'])->name('login.index');
Route::post('/login', [SessionController::class,'store'])->name('login.store');
Route::get('/logout', [SessionController::class,'destroy'])->name('login.destroy');


// //Registro
Route::resource('register',RegisterController::class);
// mail
Route::get('contactanos' , [contactanosController::class, 'index'])->name(('contactanos.index'));
Route::post('contactanos' , [contactanosController::class, 'store'])->name(('contactanos.store'));

// traduccion
Route::get('lang/{lang}', [LanguageController::class, 'swap'])->name('lang.swap');
// Cuersos
Route::get('cursos', [CursosController::class,'index'])->name('modal_cursos.index');
// modal acceder
Route::get('acceder', [AccederController::class,'index'])->name('modal_acceder.index');

// modal crear admin

// Tienda

Route::get('tiendas', [TiendaController::class,'index'])->name('modal_tienda.index');

// modal usermatchs
Route::get('usermatchs', [MatchAdminController::class,'index'])->name('modal_admin_usermatch.index');
Route::post('usermatchsa', [MatchAdminController::class,'store'])->name('modal_admin_usermatch.store');
Route::post('usermatchsb', [MatchAdminController::class,'destroy'])->name('modal_admin_usermatch.destroy');

// actividades
Route::get('actividades', [ActividadesController::class,'index'])->name('model_actividades.index');

// admin web
Route::get('admin web', [AdminWebController::class,'index'])->name('modal_admin_web2.index');

// admin web
Route::get('ver perfiles', [VerPerfilesController::class,'index'])->name('modal_ver_perfiles.index');

Route::resource('user', UserController::class);


Route::group(['middleware' => ['auth']], function() {

Route::resource('cursosAdmin',CursosAdminController::class);
Route::resource('registerAdmin', RegisterAdminController::class);
Route::resource('intercambiosAdmin', IntercambiosAdminController::class);
Route::resource('userAdmin', UserAdminController::class);
Route::resource('actividadesAdmin',ActividadesAdminController::class);
});
