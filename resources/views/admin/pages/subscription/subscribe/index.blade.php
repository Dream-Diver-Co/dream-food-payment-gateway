@extends('admin.layouts.master')

@section('title', 'subscribe')
@section('content')

<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">subscribe</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                    <li class="breadcrumb-item active">subscribe</li>
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
                    <h2>subscribe List</h2>
                </div>
                <div class="card-body">
                    <a href="{{ route('subscribe.create') }}" class="btn btn-success btn-sm" title="Add New Hero">
                        Create subscribe
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
                                @foreach($subscribes as $subscribe)
                                <tr>
                                    <td>{{ $subscribe->name }}</td>
                                    <td>{{ $subscribe->email }}</td>
                                    <td>{{ $subscribe->phone }}</td>
                                    <td>{{ $subscribe->subject }}</td>
                                    <td>{{ $subscribe->note }}</td>
                                    <td>
                                        <a href="{{ route('subscribe.show', $subscribe->id) }}">View</a>
                                        <a href="{{ route('subscribe.edit', $subscribe->id) }}">Edit</a>
                                        <form action="{{ route('subscribe.destroy', $subscribe->id) }}" method="POST">
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

