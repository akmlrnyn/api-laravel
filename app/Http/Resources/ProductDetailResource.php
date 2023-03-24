<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductDetailResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
        'id' => $this -> id,
        'name' => $this -> name,
        'description' => $this -> desc,
        'price' => $this -> price,
        'owner_id' => $this -> owner,
        'owner' => $this -> whenLoaded('seller'),
        'collab_id' => $this -> type,
        'type' => $this -> whenLoaded('collab'),
        'reviews_total' => $this -> whenLoaded('reviews', function(){
           return count($this->reviews); 
        }),
        'reviews' => $this -> whenLoaded('reviews', function(){
            return collect($this->reviews)->each(function($reviews){
            $reviews -> reviewer;
            return $reviews;
            });
        }),
        'created_at' => date_format($this -> created_at, "Y/m/d H:i:s"),
        ];
    }
}
