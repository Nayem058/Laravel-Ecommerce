<?php

use Illuminate\Support\Facades\Route;
// use App\Http\Controllers\Auth;

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

Route::get('/', 'SiteController@index')->name('index');
Route::get('/product', 'SiteController@product')->name('product');

Auth::routes();
Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::get('admin/profile', [App\Http\Controllers\HomeController::class, 'profile'])->name('profile');
    Route::get('brand/add-brand', [App\Http\Controllers\BrandController::class, 'addBrand'])->name('add-brand');
    Route::post('brand/save-brand', [App\Http\Controllers\BrandController::class, 'saveBrand'])->name('save-brand');
    Route::get('brand/manage-brand', [App\Http\Controllers\BrandController::class, 'manageBrand'])->name('manage-brand');
    Route::get('brand/delete/{id}', [App\Http\Controllers\BrandController::class, 'delete'])->name('delete-brand');
    Route::get('brand/edit/{id}', [App\Http\Controllers\BrandController::class, 'edit'])->name('edit-brand');
    Route::post('brand/update', [App\Http\Controllers\BrandController::class, 'updateBrand'])->name('update-brand');
    Route::get('brand/brandStatus/{id}/{s}', [App\Http\Controllers\BrandController::class, 'brandStatus'])->name('brandStatus');

    // Category
    Route::get('category/manage-category', [App\Http\Controllers\CategoryController::class, 'manageCategory'])->name('manage-category');
    Route::get('category/add-category', 'CategoryController@addCategory')->name('add-category');
    Route::post('category/save-category', [App\Http\Controllers\CategoryController::class, 'saveCategory'])->name('save-category');
    Route::get('category/categoryStatus/{id}/{s}', [App\Http\Controllers\CategoryController::class, 'categoryStatus'])->name('categoryStatus');
    Route::get('category/delete/{id}', [App\Http\Controllers\CategoryController::class, 'delete'])->name('delete-category');
    Route::get('category/edit/{id}', [App\Http\Controllers\CategoryController::class, 'edit'])->name('edit-category');
    Route::post('category/update', [App\Http\Controllers\CategoryController::class, 'updateCategory'])->name('update-category');

    // sub category....
    Route::get('category/manage-sub-category', [App\Http\Controllers\SubcategoryController::class, 'manageSubCategory'])->name('manage-subcategory');
    Route::get('category/add-sub-category', 'SubcategoryController@addCategory')->name('add-sub-category');
    Route::post('category/save-sub-category', [App\Http\Controllers\SubcategoryController::class, 'saveCategory'])->name('save-sub-category');
    Route::get('category/sub-category/delete/{id}', [App\Http\Controllers\SubcategoryController::class, 'delete'])->name('delete-sub-category');

    
    // sub sub category............
    Route::get('category/manage-sub-sub-category', [App\Http\Controllers\SubsubcategoryController::class, 'manageSubsubCategory'])->name('manage-subsubcategory');

});
