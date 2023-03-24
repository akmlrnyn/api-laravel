<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory, SoftDeletes;
    protected $fillable = [
        'name',
        'price',
        'desc',
        'owner',
        'type',
        'image'
    ];

    public function seller(): BelongsTo
    {
        return $this -> belongsTo(User::class, 'owner', 'id');
    }

    public function collab(): BelongsTo
    {
        return $this -> belongsTo(Collab::class, 'type', 'id');
    }

    public function reviews(): HasMany
    {
        return $this -> hasMany(Review::class, 'product_id', 'id');
    }
}
