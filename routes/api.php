<?php

use App\Http\Controllers\TrainerController;
use App\Http\Controllers\TrainingController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::apiResource('trainings', TrainingController::class);
Route::apiResource('trainers', TrainerController::class);
Route::apiResource('users', UserController::class);

Route::middleware('auth:api')->get('/user', function (Request $request) {
  return $request->user();
});
