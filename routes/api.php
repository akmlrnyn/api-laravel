<?php

use App\Http\Controllers\AuthenticationController;
use App\Http\Controllers\PayController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ReviewController;
use App\Http\Middleware\PostOwner;
use App\Models\Product;
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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::middleware('auth:sanctum')->group(function(){
    Route::get('/products', [ProductController::class, 'index']);
    Route::get('/products/{id}', [ProductController::class, 'show']);
    Route::delete('/products/{id}', [ProductController::class, 'delete'])->middleware(['product.owner']);
    Route::patch('/products/{id}', [ProductController::class, 'update'])->middleware(['product.owner']);
    Route::get('/products/{id}', [ProductController::class, 'show']);
    Route::post('/products', [ProductController::class, 'store']);

    Route::post('/reviews', [ReviewController::class, 'store']);
    Route::delete('/reviews/{id}', [ReviewController::class, 'delete']);
    Route::patch('/reviews/{id}', [ReviewController::class, 'update'])->middleware(['review.owner']);

    Route::get('/logout', [AuthenticationController::class, 'logout']);

    Route::post('/products/{prodid}/pay', [PayController::class, 'pay']);
    Route::get('/search', [ProductController::class, 'search']);
    Route::get('/me', [AuthenticationController::class, 'me']);
});


Route::post('/login', [AuthenticationController::class, 'login']);