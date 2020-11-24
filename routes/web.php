<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
	$filePaths = [];
    return view('welcome', compact('filePaths'));
});

Route::get('/file/read', 'HomeController@readFile');
Route::get('/file/search', 'HomeController@searchWord');