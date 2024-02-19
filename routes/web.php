<?php

use App\Http\Controllers\BarangController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\KategoriBarangController;
use App\Http\Controllers\SatuanBarangController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route Untuk Soal 1
Route::get('/', [HomeController::class, 'dataUser'])->name('home');
Route::get('/ambil-data', [HomeController::class, 'index'])->name('ambil-data');
Route::get('/ringkasan-profesi', [HomeController::class, 'ringkasanProfesi'])->name('ringkasan-profesi');

// Route Untuk Soal 2
Route::get('/barang', [BarangController::class, 'index'])->name('barang');
Route::get('/barang/create', [BarangController::class, 'create'])->name('barang/create');
Route::post('/barang/store', [BarangController::class, 'store'])->name('barang/store');
Route::get('/barang/edit/{id}', [BarangController::class, 'edit'])->name('barang/edit');
Route::put('/barang/update/{id}', [BarangController::class, 'update'])->name('barang/update');
Route::delete('/barang/hapus/{id}', [BarangController::class, 'destroy'])->name('barang/destroy');

Route::get('/kategori-barang', [KategoriBarangController::class, 'index'])->name('kategori');
Route::get('/kategori-barang/create', [KategoriBarangController::class, 'create'])->name('kategori-barang/create');
Route::post('/kategori-barang/store', [KategoriBarangController::class, 'store'])->name('kategori-barang/store');
Route::get('/kategori-barang/{kode}', [KategoriBarangController::class, 'edit'])->name('kategori-barang/edit');
Route::put('/kategori-barang/{kode}', [KategoriBarangController::class, 'update'])->name('kategori-barang/update');
Route::delete('/kategori-barang/{kode}', [KategoriBarangController::class, 'destroy'])->name('kategori-barang/destroy');

Route::get('/satuan-barang', [SatuanBarangController::class, 'index'])->name('satuan');
Route::get('/satuan-barang/create', [SatuanBarangController::class, 'create'])->name('satuan-barang/create');
Route::post('/satuan-barang/store', [SatuanBarangController::class, 'store'])->name('satuan-barang/store');
Route::get('/satuan-barang/{kode}', [SatuanBarangController::class, 'edit'])->name('satuan-barang/edit');
Route::put('/satuan-barang/{kode}', [SatuanBarangController::class, 'update'])->name('satuan-barang/update');
Route::delete('/satuan-barang/{kode}', [SatuanBarangController::class, 'destroy'])->name('satuan-barang/destroy');
