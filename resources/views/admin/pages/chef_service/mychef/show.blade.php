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

<div class="card">
  <div class="card-header">Admincontact Details</div>
  <div class="card-body">
    <h1>{{ $mychef->name }}</h1>
    <p><img src="{{ asset('storage/'.$mychef->image) }}" alt="{{ $mychef->name }}" width="200"></p>
    <p>{{ $mychef->description }}</p>
  </div>
  <a href="{{ route('mychef.index') }}">Back to list</a>
</div>
@endsection


