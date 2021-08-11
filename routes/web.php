<?php

use Illuminate\Support\Facades\Route;

Auth::routes();
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
//Route::get('/inicio', 'App\Http\Controllers\Auth\LoginController@showLoginForm')->name('inicio');
//Route::post('/login', 'App\Http\Controllers\Auth\LoginController@login')->name('login');
//Route::post('/logout', 'App\Http\Controllers\Auth\LoginController@logout')->name('logout');

Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function () {
    // ruta de administracion
    Route::get('/main', function () {
        return view('admin.desktop');
    });

    Route::resource('/configuracion', App\Http\Controllers\Admin\ConfiguracionController::class);
    Route::resource('/categoria', App\Http\Controllers\Admin\CategoriaController::class);
    Route::resource('/producto', App\Http\Controllers\Admin\ProductoController::class);
    Route::resource('/post', App\Http\Controllers\Admin\PostController::class);
    Route::resource('/carrusel', App\Http\Controllers\Admin\CarruselController::class);
    Route::resource('/empresa', App\Http\Controllers\Admin\EmpresaController::class);
    Route::resource('/user', App\Http\Controllers\Admin\UserController::class);

});

// rutas publicas

Route::get('/', [App\Http\Controllers\FrontController::class, 'index']);
Route::get('/empresa', [App\Http\Controllers\FrontController::class, 'empresa']);
Route::get('/artesanias', [App\Http\Controllers\FrontController::class, 'artesanias']);
Route::get('/artesanias/{categoria}', [App\Http\Controllers\FrontController::class, 'categoria']);
Route::get('/artesanias/{categoria}/{producto}', [App\Http\Controllers\FrontController::class, 'producto']);
Route::get('/blog', [App\Http\Controllers\FrontController::class, 'blog']);
Route::get('/blog/{post}', [App\Http\Controllers\FrontController::class, 'post']);

Route::get('/contacto', [App\Http\Controllers\FrontController::class, 'contacto']);
Route::post('/contacto', [App\Http\Controllers\FrontController::class, 'contactoenvio']);
