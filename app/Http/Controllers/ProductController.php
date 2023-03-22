<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductDetailResource;
use App\Http\Resources\ProductResource;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return ProductResource::collection($products);
    }

    public function show($id){
        $product = Product::with('seller:id,firstname', 'collab:id,series')->findOrFail($id);
        return new ProductDetailResource($product);
    }
        
}
