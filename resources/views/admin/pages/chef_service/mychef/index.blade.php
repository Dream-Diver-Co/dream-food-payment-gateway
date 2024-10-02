@extends('admin.layouts.master')

@section('title', 'Profile')
@section('content')

<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Profile</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">{{ env('APP_NAME') }}</a></li>
                    <li class="breadcrumb-item active">Profile</li>
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title -->
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h2>Admin Contact</h2>
                    </div>
                    <div class="card-body">
                        <a href="{{ url('admin/admincontact/create') }}" class="btn btn-success btn-sm" title="Add New Admincontact">
                            Add New
                        </a>
                        <br/>
                        <br/>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Image</th>
                                        <th>description</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($mychefs as $mychef)
                                    <tr>
                                        <td>{{ $mychef->name }}</td>
                                        <td><img src="{{ asset('storage/'.$mychef->image) }}" alt="{{ $mychef->name }}" width="100"></td>
                                        <td>{{ $mychef->description }}</td>
                                        <td>
                                            <a href="{{ route('mychef.show', $mychef->id) }}">View</a>
                                            <a href="{{ route('mychef.edit', $mychef->id) }}">Edit</a>
                                            <form action="{{ route('mychef.destroy', $mychef->id) }}" method="POST" style="display:inline-block;">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

