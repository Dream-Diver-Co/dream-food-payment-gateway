<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function add(Request $request)
    {
        // Ensure the user is authenticated
        if (!auth()->check()) {
            return redirect()->route('login')->with('error', 'You must be logged in to add items to the cart.');
        }

        $request->validate([
            'product_id' => 'required|exists:products,id',
            'quantity' => 'required|integer|min:1',
            'size' => 'nullable|string',
            'color' => 'nullable|string',
        ]);

        $cart = Cart::updateOrCreate(
            [
                'user_id' => auth()->id(),
                'product_id' => $request->product_id,
                'size' => $request->size,
                'color' => $request->color,
            ],
            [
                'quantity' => $request->quantity,
            ]
        );

        return redirect()->back()->with('success', 'Product added to cart');
    }

    public function show()
    {
        $cartItems = Cart::where('user_id', auth()->id())
            ->with('product')
            ->get();

        return view('frontend.cart.show', compact('cartItems'));
    }

    public function update(Request $request)
    {
        $cart = Cart::where('user_id', auth()->id())
            ->where('product_id', $request->product_id)
            ->first();

        if ($cart) {
            $cart->update(['quantity' => $request->quantity]);

            $itemTotal = $cart->product->price * $cart->quantity;
            $overallTotal = Cart::where('user_id', auth()->id())
                ->get()
                ->sum(fn($item) => $item->product->price * $item->quantity);
            $overallQuantity = Cart::where('user_id', auth()->id())->sum('quantity');

            return response()->json([
                'success' => true,
                'itemTotal' => $itemTotal,
                'overallTotal' => $overallTotal,
                'overallQuantity' => $overallQuantity,
            ]);
        }

        return response()->json(['success' => false, 'message' => 'Item not found in cart'], 404);
    }

    public function remove(Request $request)
    {
        $cart = Cart::where('user_id', auth()->id())
            ->where('product_id', $request->product_id)
            ->first();

        if ($cart) {
            $cart->delete();
            return response()->json(['message' => 'Product removed from cart']);
        }

        return response()->json(['message' => 'Item not found in cart'], 404);
    }
}
