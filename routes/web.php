<?php

use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});


//List all products
Route::get('products', [ProductController::class, 'index'])->name('products.index');
//Store a new product
Route::post('products', [ProductController::class, 'store'])->name('products.store');

//Add a product form
Route::get('products/create', [ProductController::class, 'create'])->name('products.create');
//Route::post('products/create', [ProductController::class, 'create']);

//Show a specific product
Route::get('products/{id}', [ProductController::class, 'show'])->name('products.show');

//Show the form to edit a product
Route::get('products/{id}/edit', [ProductController::class, 'edit'])->name('products.edit');
//Update a product
Route::put('products/{id}', [ProductController::class, 'update'])->name('products.update');
//Delete a product
Route::delete('products/{id}', [ProductController::class, 'destroy'])->name('products.destroy');