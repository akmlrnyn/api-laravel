<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ReviewResource extends JsonResource
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
            'product_id' => $this -> product_id,
            'review_content' => $this -> review_content,
            'reviewer' => $this -> whenLoaded('reviewer'),
            'rating' => $this -> rating
        ];
    }
}
