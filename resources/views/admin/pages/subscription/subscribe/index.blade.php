@extends('admin.layouts.master')

@section('title', 'subscribecontact')
@section('content')

<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">subscribecontact</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                    <li class="breadcrumb-item active">subscribecontact</li>
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

<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h2>subscribecontact List</h2>
                </div>
                <div class="card-body">
                    <a href="{{ route('subscribecontact.create') }}" class="btn btn-success btn-sm" title="Add New Hero">
                        Create subscribecontact
                    </a>
                    <br/><br/>
                    <div class="table-responsive">
                        <table>
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Subject</th>
                                    <th>Note</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($subscribecontacts as $subscribecontact)
                                <tr>
                                    <td>{{ $subscribecontact->name }}</td>
                                    <td>{{ $subscribecontact->email }}</td>
                                    <td>{{ $subscribecontact->phone }}</td>
                                    <td>{{ $subscribecontact->subject }}</td>
                                    <td>{{ $subscribecontact->note }}</td>
                                    <td>
                                        <a href="{{ route('subscribecontact.show', $subscribecontact->id) }}">View</a>
                                        <a href="{{ route('subscribecontact.edit', $subscribecontact->id) }}">Edit</a>
                                        <form action="{{ route('subscribecontact.destroy', $subscribecontact->id) }}" method="POST">
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

