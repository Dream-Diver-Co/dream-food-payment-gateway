<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Subscribe;

class SubscribeController extends Controller
{
    public function index()
    {
        $subscribes = Subscribe::all();
        return view('admin.pages.subscription.subscribe.index')->with('subscribes', $subscribes);
    }

    public function create()
    {
        return view('admin.pages.subscription.subscribe.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|string|max:15',
            'subject' => 'required|string|max:255',
            'note' => 'required|string|max:500',
            'image' => 'nullable|image|max:2048',
        ]);

        $input = $request->all();

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $path = $file->store('images', 'public');
            $input['image'] = $path;
        }

        Subscribe::create($input);

        return redirect()->back()->with('flash_message', 'Your subscription has been added!');
    }

    public function show($id)
    {
        $subscribe = Subscribe::find($id);
        return view('admin.pages.subscription.subscribe.show')->with('subscribes', $subscribe);
    }

    public function edit($id)
    {
        $subscribe = Subscribe::find($id);
        return view('admin.pages.subscription.subscribe.edit')->with('subscribes', $subscribe);
    }

    public function update(Request $request, $id)
    {
        $subscribe = Subscribe::find($id);
        $input = $request->all();

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $path = $file->store('images', 'public');
            $input['image'] = $path;
        }

        $subscribe->update($input);

        return redirect('admin/subscribe')->with('flash_message', 'Subscription Updated!');
    }

    public function destroy($id)
    {
        Subscribe::destroy($id);
        return redirect('admin/subscribe')->with('flash_message', 'Subscription Deleted!');
    }
}
