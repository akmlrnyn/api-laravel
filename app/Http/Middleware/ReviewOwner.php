<?php

namespace App\Http\Middleware;

use App\Models\Review;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReviewOwner
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {

        $user = Auth::user();
        $review = Review::findOrFail($request -> id);
        if($review -> user_id != $user -> id ){
            return response()->json([
                'message' => 'wrong user'
            ], 404);
        }
        return $next($request);
    }
}
