<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductDetailResource;
use App\Http\Resources\ProductResource;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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

    public function store(Request $request)
    {
        $request -> validate([
            'name' => 'required|max:255',
            'price' => 'required',
            'desc' => 'required',
            'owner' => 'exists:users,id',
            'type' => 'exists:collabs,id'
        ]);

       $request['user_id'] = Auth::user()->id;
       $product = Product::create($request->all());

       return new ProductDetailResource($product->loadMissing('seller:id,firstname', 'collab:id,series'));
    }
        
}
