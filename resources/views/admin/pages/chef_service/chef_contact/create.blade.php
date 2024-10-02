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
<!-- success message -->
<div class="container">
    <div class="row">
        <div class="col-12">
            <!-- Check for success message -->
            @if(session('success'))
                <div id="success-message" class="alert alert-success">
                    {{ session('success') }}
                </div>
            @endif
        </div>
    </div>
</div>
<!-- success message -->

<div class="card">
  <div class="card-header">Create New ChefContact</div>
  <div class="card-body">

    <form action="{{ url('admin/chefcontact') }}" method="post" enctype="multipart/form-data">
        @csrf
        <label>Name</label></br>
        <input type="text" name="name" id="name" class="form-control"></br>
        <label>Email</label></br>
        <input type="email" name="email" id="email" class="form-control"></br>
        <label>Phone</label></br>
        <input type="text" name="phone" id="phone" class="form-control"></br>
        <label>Subject</label></br>
        <input type="subject" name="subject" id="subject" class="form-control"></br>
        <label>Note</label></br>
        <input type="text" name="note" id="note" class="form-control"></br>
        <input type="submit" value="Save" class="btn btn-success"></br>
    </form>

  </div>
</div>

<script>
    // Auto-hide the success message after 5 seconds
    document.addEventListener('DOMContentLoaded', function () {
        const successMessage = document.getElementById('success-message');
        if (successMessage) {
            setTimeout(() => {
                successMessage.style.display = 'none';
            }, 5000); // 5000 milliseconds = 5 seconds
        }
    });
</script>

@endsection



