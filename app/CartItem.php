<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class CartItem extends Model
{
    protected $fillable = ['qty'];
    protected $appends = ['final_price'];
    public function cart()
    {
        $this->belongsTo(Cart::class, 'cart_id');
    }

    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id');
    }

    public function getFinalPriceAttribute()
    {
        $product = Product::findOrFail($this->product_id);

        if ($product) {

            $price = $product->price * $this->qty;

            return $price;
        }
        return false;
    }
}
