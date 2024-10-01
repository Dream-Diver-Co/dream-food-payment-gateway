@extends("frontend.layouts.master")

@section("content")

<!-- Hero End -->
<div class="container-fluid bg-light mt-0">
    <div class="container">
        <div class="row g-5 align-items-center bg-light hero-border">
            <div class="col-lg-7 col-md-12">
                {{-- <small class="d-inline-block fw-bold text-dark text-uppercase bg-light border border-primary rounded-pill px-4 py-1 mb-4 animated zoomIn">Welcome to Chef-At-Home</small> --}}
                <h1 class="display-1 mb-4 animated zoomIn">Take Our<span class="text-primary">Chef At Home</span>And Prepare Favourite Food!</h1>
                {{-- <a href="booking.html" class="btn btn-primary border-0 rounded-pill py-3 px-4 px-md-5 me-4 animated zoomIn">Book Now</a> --}}

            </div>
            <div class="col-lg-5 col-md-12">
                <div class="slideshow-container animated zoomIn">
                    <div class="mySlides fade">
                      <img src="{{ asset('frontend/img/Shef2.png') }}" class="img-fluid rounded">
                    </div>

                    <div class="mySlides fade">
                      <img src="{{ asset('frontend/img/Shef3.png') }}" class="img-fluid rounded">
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>

<!-- Service Start -->
<div class="container-fluid service py-6">
    <div class="container">
        <div class="text-center wow bounceInUp" data-wow-delay="0.1s">
            <h1 class="display-5 mb-5">Shef Services</h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp" data-wow-delay="0.1s">
                <div class="bg-wheat rounded menu-2">
                    <div class="service-content d-flex align-items-center justify-content-center p-4">
                        <div class="service-content-icon text-center">
                            <img src="{{ asset('frontend/img/Shef1.png') }}" class="img-fluid rounded animated zoomIn" alt="">
                            <h4 class="mb-3">Mr.Nehal Chef</h4>
                            <p class="mb-4">Contrary to popular belief, ipsum is not simply random.</p>
                            <a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInRight" data-wow-delay="0.3s">
                <div class="bg-wheat rounded menu-2">
                    <div class="service-content d-flex align-items-center justify-content-center p-4">
                        <div class="service-content-icon text-center">
                            <img src="{{ asset('frontend/img/Shef2.png') }}" class="img-fluid rounded animated zoomIn" alt="">
                            <h4 class="mb-3">Mr.Zozo Chef</h4>
                            <p class="mb-4">Contrary to popular belief, ipsum is not simply random.</p>
                            <a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInLeft" data-wow-delay="0.5s">
                <div class="bg-wheat rounded menu-2">
                    <div class="service-content d-flex align-items-center justify-content-center p-4">
                        <div class="service-content-icon text-center">
                            <img src="{{ asset('frontend/img/Shef3.png') }}" class="img-fluid rounded animated zoomIn" alt="">
                            <h4 class="mb-3">Mr.Jhon Chef</h4>
                            <p class="mb-4">Contrary to popular belief, ipsum is not simply random.</p>
                            <a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 wow bounceInUp" data-wow-delay="0.7s">
                <div class="bg-wheat rounded menu-2">
                    <div class="service-content d-flex align-items-center justify-content-center p-4">
                        <div class="service-content-icon text-center">
                            <img src="{{ asset('frontend/img/Shef1.png') }}" class="img-fluid rounded animated zoomIn" alt="">
                            <h4 class="mb-3">Mr.Leo Chef</h4>
                            <p class="mb-4">Contrary to popular belief, ipsum is not simply random.</p>
                            <a href="#" class="btn btn-primary px-4 py-2 rounded-pill">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->

<!-- Book Us Start -->
<div class="container-fluid contact py-6 wow bounceInUp" data-wow-delay="0.1s">
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

