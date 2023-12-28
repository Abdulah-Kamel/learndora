@extends('layouts.app')
@section('content')
    <!-- Start Home Section -->
    <section class="home py-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 d-flex justify-content-center align-items-center">
                    <div class="inner mt-4 mt-md-0">
                        <h2 class="inter mb-5">Empowering You To Build Your Future.</h2>
                        <p class="inter mb-5">Join us on this incredible learning adventure! Take the first step by exploring
                            our course catalog and discover the wonders that await you. </p>
                        <div class="d-flex justify-content-center mb-5 mb-md-0">
                            <a href="{{ route('register') }}">
                                <button class="btn-lined px-5 py-2 border-0 fw-bold btn-hw">Sign Up</button>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 px-0">
                    <img class="w-100" src="{{ asset('learndora_assets/img/home.png') }}" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- End Home Section -->

    <!-- start statics section -->
    <div class="statics py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="show-case p-4">
                        <h4 class="text-center">+
                            {{ $users->where('role_id', '=', 2)->count() }}
                        </h4>
                        <p class="text-center mb-0">Student</p>
                    </div>
                </div>
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="show-case p-4">
                        <h4 class="text-center">+ {{ $count_courses }}</h4>
                        <p class="text-center mb-0">Courses</p>
                    </div>
                </div>
                <div class="col-lg-4 mb-5 mb-lg-0">
                    <div class="show-case p-4">
                        <h4 class="text-center">+ {{ $users->where('role_id', '=', 3)->count() }}</h4>
                        <p class="text-center mb-0">Instructor</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end statics section -->

    <!-- start features section -->
    <div class="features py-5">
        <div class="container">
            <div class="row gy-4">
                <div class="col-md-6">
                    <div class="feat feat-red">
                        <div class="icon-cont rounded-50 mb-4 text-center">
                            <i class="fa-solid fa-children fa-2x red-icon"></i>
                        </div>
                        <h3 class="text-center mb-4">Kid-Friendly Interface</h3>
                        <p class="text-center">
                            with colorful visuals, playful animations, and interactive
                            features We want you to feel like you're stepping into a world of wonder every time you log in.
                        </p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="feat feat-yellow">
                        <div class="icon-cont rounded-50 mb-4 text-center">
                            <i class="fa-solid fa-calendar-days fa-2x yellow-icon"></i>
                        </div>
                        <h3 class="text-center mb-4">Flexible Learning</h3>
                        <p class="text-center">
                            with colorful visuals, playful animations, and interactive
                            features We want you to feel like you're stepping into a world of wonder every time you log in.
                        </p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="feat feat-green">
                        <div class="icon-cont rounded-50 mb-4 text-center">
                            <i class="fa-regular fa-lightbulb fa-2x green-icon"></i>
                        </div>
                        <h3 class="text-center mb-4">Engaging Content</h3>
                        <p class="text-center">
                            with colorful visuals, playful animations, and interactive
                            features We want you to feel like you're stepping into a world of wonder every time you log in.
                        </p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="feat feat-orange">
                        <div class="icon-cont rounded-50 mb-4 text-center">
                            <i class="fa-solid fa-chalkboard-user fa-2x orange-icon"></i>
                        </div>
                        <h3 class="text-center mb-4">Expert Instructors</h3>
                        <p class="text-center">
                            with colorful visuals, playful animations, and interactive
                            features We want you to feel like you're stepping into a world of wonder every time you log in.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end features section -->

    <!-- start popular-courses section -->
    <div class="popular-courses py-5">
        <div class="container">
            <div class="row">

                @foreach ($courses->take(3) as $course)
                    <div class="col-md-4">
                        <a class="links_course"
                            href="@if (!isset(auth()->user()->id)) {{ url('login') }} @elseif($course->price == 0){{ route('join', $course->slug) }} @else {{ route('payment', $course->slug) }} @endif">
                            <div class="course-info mx-2 shadow">
                                <img class="img-fluid" src="{{ Storage::disk('public')->url($course->image) }}"
                                    alt="{{ $course->title }}">
                                <div class="course-detail p-3">
                                    <div class="d-flex justify-content-between align-items-between">
                                        <div class="">
                                            <h5>{{ $course->title }}</h5>
                                            <ul class="">
                                                <li>Level: Beginner</li>
                                                <li>Grade: 6</li>
                                            </ul>
                                            <div class="reaction ms-2">
                                                <span>4.7</span>
                                                <i class="fa-solid fa-star star"></i>
                                                <i class="fa-solid fa-star star"></i>
                                                <i class="fa-solid fa-star star"></i>
                                                <i class="fa-solid fa-star star"></i>
                                                <i class="fa-regular fa-star star"></i>
                                                <span>(265,300)</span>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-column justify-content-between align-items-center">
                                            <a class="sm-button" href="#">EGP {{ $course->price }}</a>
                                            <a class="link-primary link-opacity-50-hover text-decoration-none"
                                                href="{{ route('course_details', $course->slug) }}">View Course</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
                <div class="col-md-12 d-flex justify-content-center pt-5">
                    <a href="#" class="explore-btn shadow ">Explore All Courses >></a>
                </div>
            </div>
        </div>
    </div>
    <!-- end popular-courses section -->

    {{-- start review section --}}
    <div class="review py-5">
        <div class="container">
            <h3 class="text-center title-style mb-5">Reviews</h3>
            <div class="review-text p-5 mb-3 position-relative">
                <h4 class="text-center w-75 mx-auto mb-3 second-style">“I loved every moment of the course,The teachers
                    were very helpful and I am happy with how much I developed through this course”</h4>
                <h4 class="second-style">Ahmed, Student</h4>
            </div>
            <div class="review-text p-5 position-relative">
                <h4 class="text-center w-75 mx-auto mb-3 second-style">“I'm glad I discovered Educhains, so I don't have to
                    worry about my daughter neglecting her school subjects”</h4>
                <h4 class="second-style">Hanan, Parent</h4>
            </div>
        </div>
    </div>
    {{-- end review section --}}

    {{-- start contact section --}}
    <div class="contact py-5">
        <div class="container-fluid">
            <h3 class="text-center title-style mb-5">Contact Us</h3>
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <img class="img-fluid" src="" alt="contact image">
                </div>
                <div class="col-sm-12 col-md-6">
                    <form action="{{ route('store-contact') }}" class="p-2" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group mb-4">
                                    <div class="position-relative">
                                        <span class="position-absolute input-icons">
                                            <i
                                                class="fa-regular fa-user position-absolute top-50 start-50 translate-middle input_link"></i>
                                        </span>
                                        <input type="text" class="form-control shadow-none" name="name"
                                            placeholder="Name">
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-12 col-md-12 col-lg-6 mb-4">
                                <div class="position-relative">
                                    <span class="position-absolute input-icons">
                                        <i
                                            class="fa-solid fa-phone position-absolute top-50 start-50 translate-middle input_link"></i>
                                    </span>
                                    <input type="tel" class="form-control shadow-none" name="Phone"
                                        placeholder="Phone Number">
                                </div>
                            </div>

                            <div class="col-sm-12 col-md-12 col-lg-6 mb-4">
                                <div class="position-relative">
                                    <span class="position-absolute input-icons">
                                        <i
                                            class="fa-regular fa-envelope position-absolute top-50 start-50 translate-middle input_link"></i>
                                    </span>
                                    <input type="email" class="form-control shadow-none" name="email"
                                        placeholder="Email">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <textarea class="w-100 p-3 mb-4" name="message" cols="30" rows="10" placeholder="Message Contect"></textarea>
                                <button type="submit" class="d-block w-100 text-center msg-btn">Send</button>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    {{-- end contact section --}}
@endsection

@section('scripts')
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://fastly.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper(".mySwiper", {
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            breakpoints: {
                640: {
                    slidesPerView: 1,
                    spaceBetween: 10,
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 40,
                },
                1024: {
                    slidesPerView: 3,
                    spaceBetween: 10,
                },
            }
        });
    </script>
@endsection
