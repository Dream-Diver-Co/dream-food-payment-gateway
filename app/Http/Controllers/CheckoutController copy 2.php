<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cart;
use App\Models\Order;
use App\Models\OrderItem;
use Stripe;
use Session;

class CheckoutController extends Controller
{
    public function index()
    {
        // Retrieve cart items for the authenticated user
        $cartItems = Cart::where('user_id', auth()->id())->with('product')->get();

        // Display the checkout page with cart items
        return view('frontend.checkout.index', compact('cartItems'));
    }

    public function stripe()
    {
        // Retrieve cart items for the authenticated user
        $cartItems = Cart::where('user_id', auth()->id())->with('product')->get();

        return view('frontend.page.stripe', compact('cartItems'));
    }

//         public function stripePost(Request $request)
// {
//     // Validate the request data
//     $validated = $request->validate([
//         'payment_method' => 'required|string',
//         'first_name' => 'required|string',
//         'last_name' => 'nullable|string',
//         'email' => 'required|email',
//         'mobile_no' => 'required|string',
//         'address_line1' => 'required|string',
//         'address_line2' => 'nullable|string',
//         'country' => 'required|string',
//         'city' => 'required|string',
//         'state' => 'required|string',
//         'zip_code' => 'required|string',
//         'total_amount' => 'required|numeric',
//     ]);

//     try {
//         // Create a new order in the database before payment
//         $order = Order::create([
//             'user_id' => auth()->id(),
//             'total_amount' => $validated['total_amount'],
//             'status' => 'Pending', // Initial status is 'Pending' until payment is confirmed
//             'shipping_address' => $validated['address_line1'] . ' ' . $validated['address_line2'],
//             'payment_method' => $validated['payment_method'],
//             'first_name' => $validated['first_name'],
//             'last_name' => $validated['last_name'],
//             'email' => $validated['email'],
//             'mobile_no' => $validated['mobile_no'],
//             'address_line1' => $validated['address_line1'],
//             'address_line2' => $validated['address_line2'],
//             'country' => $validated['country'],
//             'city' => $validated['city'],
//             'state' => $validated['state'],
//             'zip_code' => $validated['zip_code'],
//         ]);

//         // Retrieve cart items and create order items
//         foreach (Cart::where('user_id', auth()->id())->get() as $cartItem) {
//             OrderItem::create([
//                 'order_id' => $order->id,
//                 'product_id' => $cartItem->product_id,
//                 'quantity' => $cartItem->quantity,
//                 'price' => $cartItem->product->price,
//                 'size' => $cartItem->size,
//                 'color' => $cartItem->color,
//                 'total_price' => $cartItem->quantity * $cartItem->product->price,
//             ]);
//         }

//         // Set Stripe secret key
//         \Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
//         $amount = $validated['total_amount'] * 100; // Convert amount to cents

//         if ($validated['payment_method'] === 'ideal') {
//             // Create a PaymentIntent for iDEAL
//             $paymentIntent = \Stripe\PaymentIntent::create([
//                 'amount' => $amount,
//                 'currency' => 'eur',
//                 'payment_method_types' => ['ideal'],
//                 'description' => 'iDEAL Payment for Order #' . $order->id,
//             ]);

//             // Return iDEAL payment intent client secret
//             return response()->json([
//                 'client_secret' => $paymentIntent->client_secret,
//                 'order_id' => $order->id,
//             ]);

//         } else {
//             // Handle card payment
//             $charge = \Stripe\Charge::create([
//                 "amount" => $amount,
//                 "currency" => "usd",
//                 "source" => $request->stripeToken,
//                 "description" => "Card Payment for Order #" . $order->id,
//             ]);

//             // Update order status if payment is successful
//             if ($charge->status == 'succeeded') {
//                 $order->status = 'Completed';
//                 $order->save();

//                 // Clear the cart
//                 Cart::where('user_id', auth()->id())->delete();

//                 // Flash success message
//                 Session::flash('success', 'Payment successful! Your order has been confirmed.');

//                 // Redirect to the order confirmation page
//                 return redirect()->route('order.confirmation', $order->id);
//             } else {
//                 // Payment failed
//                 Session::flash('error', 'Payment failed. Please try again.');
//                 return back();
//             }
//         }
//     } catch (\Exception $e) {
//         // Handle errors
//         Session::flash('error', $e->getMessage());
//         return back();
//     }
// }

    public function stripePost(Request $request)
    {
        // Validate the request data
        $validated = $request->validate([
            'payment_method' => 'required|string',
            'first_name' => 'required|string',
            'last_name' => 'nullable|string',
            'email' => 'required|email',
            'mobile_no' => 'required|string',
            'address_line1' => 'required|string',
            'address_line2' => 'nullable|string',
            'country' => 'required|string',
            'city' => 'required|string',
            'state' => 'required|string',
            'zip_code' => 'required|string',
            'total_amount' => 'required|numeric', // Validate the total amount
        ]);

        // Set Stripe secret key
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

        try {
            // Get the total amount (in cents)
            $amount = $validated['total_amount'] * 100; // Convert to cents

            if ($validated['payment_method'] === 'ideal') {
                // Create a PaymentIntent for iDEAL
                $paymentIntent = Stripe\PaymentIntent::create([
                    'amount' => $amount,
                    'currency' => 'eur', // iDEAL requires EUR currency
                    'payment_method_types' => ['ideal'], // Specify iDEAL as payment method
                    'description' => 'iDEAL Payment',
                ]);

                // Capture the payment status
                $paymentIntent = Stripe\PaymentIntent::retrieve($paymentIntent->id);
                if ($paymentIntent->status === 'succeeded') {
                    // Create a new order
                    $order = Order::create([
                        'user_id' => auth()->id(),
                        'total_amount' => $validated['total_amount'],
                        'status' => 'Pending', // You can set to 'Completed' if you want
                        'shipping_address' => $validated['address_line1'] . ' ' . $validated['address_line2'],
                        'payment_method' => $validated['payment_method'],
                        'first_name' => $validated['first_name'],
                        'last_name' => $validated['last_name'],
                        'email' => $validated['email'],
                        'mobile_no' => $validated['mobile_no'],
                        'address_line1' => $validated['address_line1'],
                        'address_line2' => $validated['address_line2'],
                        'country' => $validated['country'],
                        'city' => $validated['city'],
                        'state' => $validated['state'],
                        'zip_code' => $validated['zip_code'],
                    ]);

                    // Retrieve cart items for the authenticated user and create order items
                    foreach (Cart::where('user_id', auth()->id())->get() as $cartItem) {
                        OrderItem::create([
                            'order_id' => $order->id,
                            'product_id' => $cartItem->product_id,
                            'quantity' => $cartItem->quantity,
                            'price' => $cartItem->product->price,
                            'size' => $cartItem->size, // Include size if applicable
                            'color' => $cartItem->color, // Include color if applicable
                            'total_price' => $cartItem->quantity * $cartItem->product->price,
                        ]);
                    }

                    // Clear the cart for the authenticated user
                    Cart::where('user_id', auth()->id())->delete();

                    // Success message
                    Session::flash('success', 'Payment successful!');

                    // Redirect to the order confirmation page
                    return redirect()->route('order.confirmation', $order->id);
                } else {
                    // Payment failed
                    Session::flash('error', 'Payment failed. Please try again.');
                    return back();
                }
            } else {
                // Handle card payment
                Stripe\Charge::create([
                    "amount" => $amount, // Use the total amount
                    "currency" => "usd", // Set currency to USD for card payments
                    "source" => $request->stripeToken, // Token received from Stripe.js
                    "description" => "Card Payment",
                ]);

                // Create a new order (similar to iDEAL)
                $order = Order::create([
                    'user_id' => auth()->id(),
                    'total_amount' => $validated['total_amount'],
                    'status' => 'Pending', // You can set to 'Completed' if you want
                    'shipping_address' => $validated['address_line1'] . ' ' . $validated['address_line2'],
                    'payment_method' => $validated['payment_method'],
                    'first_name' => $validated['first_name'],
                    'last_name' => $validated['last_name'],
                    'email' => $validated['email'],
                    'mobile_no' => $validated['mobile_no'],
                    'address_line1' => $validated['address_line1'],
                    'address_line2' => $validated['address_line2'],
                    'country' => $validated['country'],
                    'city' => $validated['city'],
                    'state' => $validated['state'],
                    'zip_code' => $validated['zip_code'],
                ]);

                // Retrieve cart items and create order items (same as above)
                foreach (Cart::where('user_id', auth()->id())->get() as $cartItem) {
                    OrderItem::create([
                        'order_id' => $order->id,
                        'product_id' => $cartItem->product_id,
                        'quantity' => $cartItem->quantity,
                        'price' => $cartItem->product->price,
                        'size' => $cartItem->size,
                        'color' => $cartItem->color,
                        'total_price' => $cartItem->quantity * $cartItem->product->price,
                    ]);
                }

                // Clear the cart for the authenticated user
                Cart::where('user_id', auth()->id())->delete();

                // Success message
                Session::flash('success', 'Payment successful!');

                // Redirect to the order confirmation page
                return redirect()->route('order.confirmation', $order->id);
            }
        } catch (\Exception $e) {
            // Handle errors
            Session::flash('error', $e->getMessage());
            return back();
        }
    }




    public function createPaymentIntent(Request $request)
    {
        // Set Stripe secret key
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

        // Create the PaymentIntent for iDEAL payments
        $paymentIntent = Stripe\PaymentIntent::create([
            'amount' => $request->amount,  // Amount in cents
            'currency' => 'eur',           // iDEAL requires EUR
            'payment_method_types' => ['ideal'],
            'description' => 'iDEAL Test Payment',
        ]);

        // Return the client secret for Stripe.js to use
        return response()->json([
            'client_secret' => $paymentIntent->client_secret
        ]);
    }

    public function paymentSuccess()
    {
        return view('frontend.checkout.success'); // Point this to your success page
    }
}
