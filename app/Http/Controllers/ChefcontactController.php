<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ChefContact;

class ChefContactController extends Controller
{
    public function index()
    {
        $chefcontacts = ChefContact::all();
        return view('admin.pages.chef_service.chef_contact.index')->with('chefcontacts', $chefcontacts);
    }

    public function create()
    {
        return view('admin.pages.chef_service.chef_contact.create');
    }

    public function store(Request $request)
    {
        // Validate the request
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'phone' => 'required|string|max:15',
            'subject' => 'required|string|max:255',
            'note' => 'required|string|max:500',
            'image' => 'nullable|image|max:2048', // Optional image validation
        ]);

        // Get all the request data
        $input = $request->all();

        // Handle the image file upload if there is one
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $path = $file->store('images', 'public');
            $input['image'] = $path;
        }

        // Save the data to the database
        ChefContact::create($input);

        // Redirect back with a success message
        return redirect()->back()->with('success', 'chef created successfully!');
    }

    public function show($id)
    {
        $chefcontact = ChefContact::find($id);
        return view('admin.pages.chef_service.chef_contact.show')->with('chefcontacts', $chefcontact);
    }

    public function edit($id)
    {
        $chefcontact = ChefContact::find($id);
        return view('admin.pages.chef_service.chef_contact.edit')->with('chefcontacts', $chefcontact);
    }

    public function update(Request $request, $id)
    {
        $chefcontact = ChefContact::find($id);
        $input = $request->all();
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $path = $file->store('images', 'public');
            $input['image'] = $path;
        }
        $chefcontact->update($input);
        return redirect('admin/chefcontact')->with('flash_message', 'ChefContact Updated!');
    }

    public function destroy($id)
    {
        ChefContact::destroy($id);
        return redirect('admin/chefcontact')->with('flash_message', 'ChefContact Deleted!');
    }
}
