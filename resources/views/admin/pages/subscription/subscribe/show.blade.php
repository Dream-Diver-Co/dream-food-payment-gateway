@extends('admin.layouts.master')

@section('title', 'subscribecontacts')
@section('content')

<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">subscribecontacts</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">{{ env('APP_NAME') }}</a></li>
                    <li class="breadcrumb-item active">subscribecontacts</li>
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title -->

<div class="card">
  <div class="card-header">Admincontact Details</div>
    <div class="card-body">
        <h1>{{ $subscribecontacts->name }}</h1>
        <p><strong>Description:</strong> {{ $subscribecontacts->description }}</p>
        <p><strong>Image:</strong>
            @if($subscribecontacts->image)
            <img src="{{ asset('storage/' . $subscribecontacts->image) }}" alt="subscribecontacts Image" width="300">
            @endif
        </p>

        <a href="{{ route('subscribecontacts.edit', $subscribecontacts) }}" class="btn btn-warning btn-sm action-btn">Edit</a>
        <form action="{{ route('subscribecontacts.destroy', $subscribecontacts) }}" method="POST" style="display:inline">
            {{ method_field('DELETE') }}
            {{ csrf_field() }}
            <button type="submit" class="btn btn-danger btn-sm action-btn" title="Delete subscribecontacts" onclick="return confirm('Confirm delete?')">Delete</button>
        </form>
        <a href="{{ route('subscribecontacts.index') }}" class="btn btn-secondary btn-sm action-btn" style="width: 114px">Back to Chef List</a>
    </div>
</div>
@endsection


