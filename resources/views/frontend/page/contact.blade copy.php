@extends("frontend.layouts.master")

@section("content")

        <!-- Hero Start -->
        <div class="container-fluid bg-light mt-0">
            <div class="container text-center animated bounceInDown">
                <h1 class="display-1 mb-4">Contact</h1>
                <ol class="breadcrumb justify-content-center mb-0 animated bounceInDown">
                    <li class="breadcrumb-item"><a href="index">Home</a></li>
                    <li class="breadcrumb-item text-dark" aria-current="page">Contact</li>
                </ol>
            </div>
        </div>
        <!-- Hero End -->

        <!-- Contact Start -->
        <div class="container-fluid contact wow bounceInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="p-5 bg-wheat rounded contact-form">
                    <div class="row g-4">
                        <div class="col-12">
                            <h1 class="display-5 mb-0">Contact Us For Any Queries!</h1>
                        </div>
                        <div class="col-md-6 col-lg-7">
                            {{-- <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p> --}}
                            <form action="{{ url('usercontact') }}" method="post" enctype="multipart/form-data">
                                <input type="text" name="name" id="name" class="w-100 form-control p-3 mb-4 border-primary bg-white" placeholder="Your Name">
                                <input type="email" name="email" id="email" class="w-100 form-control p-3 mb-4 border-primary bg-white" placeholder="Enter Your Email">
                                <input type="tel" name="phone" id="phone"  class="w-100 form-control p-3 mb-4 border-primary bg-white" placeholder="Phone  Number">
                                <input type="text" name="subject" id="subject" class="w-100 form-control p-3 mb-4 border-primary bg-white" placeholder="Subject">
                                <textarea name="note" id="note" class="w-100 form-control mb-4 p-3 border-primary bg-white" rows="4" cols="10" placeholder="Your Message"></textarea>
                                <button type="submit" value="Save" class="w-100 btn btn-primary form-control p-3 border-primary bg-primary rounded-pill">Submit Now</button>
                            </form>
                            {{-- <form action="{{ url('admin/usercontact') }}" method="post" enctype="multipart/form-data">
                                @csrf --}}
                                {{-- <label>Name</label></br>
                                <input type="text" name="name" id="name" class="form-control"></br>
                                <label>email</label></br>
                                <input type="email" name="email" id="email" class="form-control"></br>
                                <label>phone</label></br>
                                <input type="text" name="phone" id="phone" class="form-control"></br>
                                <label>subject</label></br>
                                <input type="subject" name="subject" id="subject" class="form-control"></br>
                                <label>Note</label></br>
                                <input type="text" name="note" id="note" class="form-control"></br>
                                <input type="submit" value="Save" class="btn btn-success"></br> --}}
                            {{-- </form> --}}
                        </div>
                        <div class="col-md-6 col-lg-5">
                            <div>
                                <div class="d-inline-flex w-100 border border-primary p-4 rounded mb-4">
                                    <i class="fas fa-map-marker-alt fa-2x text-primary me-4"></i>
                                    <div class="">
                                        <h4>Address</h4>
                                        <p>Weena zuid 130, ext 405, 3012 NC Rotterdam, Netherlands.</p>
                                    </div>
                                </div>
                                <div class="d-inline-flex w-100 border border-primary p-4 rounded mb-4">
                                    <i class="fas fa-envelope fa-2x text-primary me-4"></i>
                                    <div class="">
                                        <h4>Mail Us</h4>
                                        <p class="mb-2">info@dreamdiver.nl</p>
                                        <p class="mb-0">dreamdiver2017@gmail.com</p>
                                    </div>
                                </div>
                                <div class="d-inline-flex w-100 border border-primary p-4 rounded">
                                    <i class="fa fa-phone-alt fa-2x text-primary me-4"></i>
                                    <div class="">
                                        <h4>Telephone</h4>
                                        <p class="mb-2">+31644215009</p>
                                        <p class="mb-0">(+704) 5555 0127 296</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->

@endsection

