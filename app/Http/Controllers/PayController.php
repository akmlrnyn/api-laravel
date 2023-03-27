<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PayController extends Controller
{
    public function pay(Request $request , $prodid)
    {

        $product = Product::findOrFail($prodid);
        $user = Auth::user();

        if ($user -> balance < $product -> price) {
            return response()->json([
                "Message" => "your balance is not enough to buy this item"
            ]);
        }
        $user -> balance -= $product -> price;
        $user->update($request->all());

        return response()->json([
            "message" => "Your item is succesfully paid"
        ]);
    }
}
