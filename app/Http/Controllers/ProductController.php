<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductDetailResource;
use App\Http\Resources\ProductResource;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return  ProductDetailResource::collection($products->loadMissing(['seller:id,firstname', 'collab:id,series', 'reviews:id,product_id,user_id,review_content']));
    }

    public function show($id){
        $product = Product::with(['seller:id,firstname', 'collab:id,series', 'reviews:id,product_id,user_id,review_content'])->findOrFail($id);
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

        $image = null;
        $extensivalid = ['jpg', 'jpeg', 'png'];
        $fileName = $this -> generateRandomString();
        $extension = $request -> file -> extension();
        $image = $fileName. '.' .$extension;


        if(!in_array($extension, $extensivalid)){
            return response()->json([
                "message" => "wrong file"
            ]);
        }


        if ($request -> file) {
            Storage::putFileAs('image', $request->file, $image);
        }

        
       $request['image'] = $image;
       $request['user_id'] = Auth::user()->id;
       $product = Product::create($request->all());

       return new ProductDetailResource($product->loadMissing(['seller:id,firstname', 'collab:id,series']));
    }

    public function update(Request $request, $id)
    {
        $request -> validate([
            'name' => 'required|max:255',
            'price' => 'required',
            'desc' => 'required',
        ]);

        $image = null;
        $extensivalid = ['jpg', 'jpeg', 'png'];
        $fileName = $this -> generateRandomString();
        $extension = $request -> file -> extension();
        $image = $fileName. '.' .$extension;

        
        if(!in_array($extension, $extensivalid)){
            return response()->json([
                "message" => "wrong file"
            ]);
        }


        if ($request -> file) {
            Storage::putFileAs('image', $request->file, $image);
        }

        
        $request['image'] = $image;
        $product = Product::findOrFail($id);
        $product->update($request->all());

        return new ProductDetailResource($product->loadMissing(['seller:id,firstname', 'collab:id,series']));
     }

     public function delete(Request $request, $id)
     {
        $product = Product::findOrFail($id);
        $product -> delete();

        return response()->json([
            'message' => 'product succesfully deleted'
        ]);

        return new ProductDetailResource($product->loadMissing('seller:id,firstname', 'collab:id,series'));
     }

    public function generateRandomString($length = 20) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[random_int(0, $charactersLength - 1)];
        }
        return $randomString;
        
    }
}
