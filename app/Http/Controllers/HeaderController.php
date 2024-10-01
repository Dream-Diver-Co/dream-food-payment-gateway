<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\CartItem;
use App\Models\Cart;

class HeaderController extends Controller
{

    // public function index() {
    //     $cartItems = Auth::check() ? Cart::where('user_id', Auth::id())->get() : collect();
    //     return view('frontend.partials.header', compact('cartItems'));
    // }

    public function index() {
        $cartItems = Auth::check() ? Cart::where('user_id', Auth::id())->get() : collect();
        $totalQuantity = $cartItems->sum('quantity');
        return view('frontend.partials.header', compact('cartItems', 'totalQuantity'));
    }


}





