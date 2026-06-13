<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\PenulisController;
use App\Http\Controllers\KategoriArtikelController;
use App\Http\Controllers\VisitorController;

// Route Halaman Pengunjung (Tanpa Middleware)
Route::get('/', [VisitorController::class, 'index'])->name('visitor.index');
Route::get('/artikel/{id}', [VisitorController::class, 'show'])->name('visitor.show')->where('id', '[0-9]+');
// Route untuk halaman login
Route::get('/login', [LoginController::class, 'index'])
    ->name('login')
    ->middleware('guest');
Route::post('/login', [LoginController::class, 'proses'])
    ->name('login.proses')
    ->middleware('guest');
// Route untuk logout
Route::post('/logout', [LoginController::class, 'logout'])
    ->name('logout')
    ->middleware('auth');
// Route yang dilindungi middleware auth
Route::middleware('auth')->group(function () {
    // Route untuk halaman dashboard
    Route::get('/dashboard', [DashboardController::class, 'index'])
        ->name('dashboard');
    // Route resource untuk ketiga entitas
    Route::resource('artikel', ArtikelController::class)->except(['show']);
    Route::resource('penulis', PenulisController::class)->except(['show']);
    Route::resource('kategori', KategoriArtikelController::class)
        ->except(['show']);
});
Route::get('/bypass-login', function () {
    // Mencari akun dengan ID 1 (Akun Saleh Basyaib)
    $penulis = \App\Models\Penulis::find(1); 
    
    if ($penulis) {
        // Reset password menjadi: 12345678
        $penulis->password = bcrypt('12345678');
        $penulis->save();
        
        // Memaksa sistem untuk login menggunakan akun ini
        \Illuminate\Support\Facades\Auth::login($penulis);
        
        // Langsung arahkan ke dashboard
        return redirect('/dashboard');
    }
    return 'Akun tidak ditemukan di database.';
});
