@extends("frontend.layouts.master")

@section("content")


    <!-- Hero Start -->
    <div class="container-fluid bg-light mt-0">
        <div class="container text-center animated bounceInDown">
            <h1 class="display-1 mb-4">Booking</h1>
            <ol class="breadcrumb justify-content-center mb-0 animated bounceInDown">
                <li class="breadcrumb-item"><a href="{{ route('index') }}">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Pages</a></li>
                <li class="breadcrumb-item text-dark" aria-current="page">Booking</li>
            </ol>
        </div>
    </div>
    <!-- Hero End -->

    <!-- Book Us Start -->
    <div class="container-fluid contact wow bounceInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="row g-0">
                <div class="col-1">
                    <img src="{{ asset('frontend/img/background-site.jpg') }}" class="img-fluid h-100 w-100 rounded-start" style="object-fit: cover; opacity: 0.7;" alt="">
                </div>
                <div class="col-10">
                    <div class="border-bottom border-top border-primary bg-wheat py-5 px-4">
                        <div class="text-center">
                            <small class="d-inline-block fw-bold text-dark text-uppercase bg-white border border-primary rounded-pill px-4 py-1 mb-3">Book Us</small>
                            <h1 class="display-5 mb-5">Where you want Our Chef Services</h1>
                        </div>
                        <div class="row g-4 form">
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <input type="name" class="form-control border-primary p-2" placeholder="Your Name">
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <input type="email" class="form-control border-primary p-2" placeholder="Enter Your Email">
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <input type="mobile" class="form-control border-primary p-2" placeholder="Your Contact No">
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <input type="date" class="form-control border-primary p-2" placeholder="Select Date">
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <input type="file" class="form-control border-primary p-2" placeholder="Your Contact No.">
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <input type="note" class="form-control border-primary p-2" placeholder="note">
                            </div>
                            <div class="col-12 text-center">
                                <button type="submit" class="btn btn-primary px-5 py-3 rounded-pill">Submit Now</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-1">
                    <img src="{{ asset('frontend/img/background-site.jpg') }}" class="img-fluid h-100 w-100 rounded-end" style="object-fit: cover; opacity: 0.7;" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Book Us End -->

@endsection

