<?php

namespace App\Http\Controllers;

use App\Http\Resources\ReviewResource;
use App\Models\Review;
use Illuminate\Http\Request;


class ReviewController extends Controller
{
    public function store(Request $request)
    {
        $request -> validate([
            'product_id' => 'exists:products,id',
            'review_content' => 'required',
            'rating' => 'required'
        ]);

        $request['user_id'] = auth()->user()->id;
        $review = Review::create($request->all());

        return new ReviewResource($review -> loadMissing(['reviewer:id,username']));
    }

    public function update(Request $request, $id){
        $request -> validate([
            'product_id' => 'exists:products,id',
            'review_content' => 'required',
            'rating' => 'required'
        ]);

        $review = Review::findOrFail($id);
        $review->update($request->all());


        return new ReviewResource($review -> loadMissing(['reviewer:id,username']));

    }

   
}
