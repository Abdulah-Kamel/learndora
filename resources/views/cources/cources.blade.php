@extends('layouts.app')
@section('page_title', __('Courses'))
@section('page_info', __('Courses'))

@section('content')

    {{-- start top-search --}}
    <section class="top-search">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="inner">
                        <h3 class="text-center title-style mb-5">Empowering Young Minds Through our courses</h3>
                        <h5 class="text-center title-style mb-5">start your journey now</h5>
                        <form action="{{ route('searchCourse') }}" method="GET">
                            @csrf
                            <div class="position-relative">
                                <input type="text" name="search" placeholder="Search" id="search">
                                <button class="btn m-0"><i
                                        class="fa-solid fa-magnifying-glass position-absolute top-50 translate-middle fa-2x"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-5 d-none d-lg-block">
                    <img class="position-absolute bottom-0"
                        src="{{ asset('learndora_assets/img/courses/courses_girl.png') }}" alt="main courses section Image">
                </div>
            </div>
        </div>
    </section>
    {{-- end top-search --}}

    {{-- start courses swipper --}}
    <section class="courses-cards-swipper py-5">
        <div class="container">
            <div class="inner p-5">
                <div class="tabs mb-4">
                    <button class="popular-tab px-3 py-2 mx-2 active">Most Popular</button>
                    <button class="new-tab px-3 py-2 mx-2">New</button>
                </div>
                <div class="swiper most-popular-courses">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        @foreach ($courses_popular as $courses_popular)
                            <div class="swiper-slide">
                                <div class="course-info mx-2 shadow">
                                    <img class="img-fluid" src="@if ($courses_popular->image != null ? asset($courses_popular->image) : asset('learndora_assets/img/courses/course-1.jpeg')) @endif" alt="img info course">
                                    <div class="course-detail p-3">
                                        <div class="d-flex justify-content-between align-items-between">
                                            <div class="">
                                                <h5>{{ $courses_popular->title }}</h5>
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
                                                <a class="link-primary link-opacity-50-hover"
                                                    href="{{ route('course_details', $courses_popular->slug) }}">View
                                                    Course</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>

                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
                <div class="swiper new-courses">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        @foreach ($courses as $course)
                            <div class="swiper-slide">
                                <div class="course-info mx-2 shadow">
                                    <img class="img-fluid" src="{{ asset($course->image) }}" alt="img info course">
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
                                                <a class="link-primary link-opacity-50-hover"
                                                    href="{{ route('course_details', $course->slug) }}">View Course</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>

                </div>
            </div>
        </div>
    </section>
    {{-- end courses swipper --}}

    {{-- start options cards --}}
    <div class="container mb-4">
        <div class="row">
            <div class="col-md-6">
                <h2 class="third-style text-center text-md-start">All Courses</h2>
            </div>
        </div>
    </div>
    {{-- end courses cards --}}

    {{-- start courses cards --}}
    <div class="courses-cards">
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    {{-- Start filter Courses --}}
                    <h4 class="font-mont med-size mb-3">Filter By</h4>
                    <form action="{{ route('filterCourse') }}">
                        @csrf

                        <!-- Search Form -->
                        <div class="mb-4">
                            <input class="form-control" name="search" type="search"
                                placeholder="{{ __('Search keyword') }} ..." aria-label="Search">
                        </div>

                        <div class="mb-4">
                            <h3>{{ __('Categories') }}</h3>
                            <ul class="list-unstyled">
                                @forelse($cats as $category)
                                    <li class="text-capitalize">
                                        <input id="a-{{ $category->id }}" type="checkbox" name="category_id[]"
                                            value="{{ $category->id }}">
                                        <label for="a-{{ $category->id }}">{{ $category->name }}</label>
                                    </li>
                                @empty
                                @endforelse
                            </ul>
                        </div>

                        <div class="mb-4">
                            <h3>{{ __('Price') }}</h3>
                            <ul class="list-unstyled">
                                <li class="mb-2">
                                    <label class="checkbox-custom-label" for="a-10">{{ __('From') }}</label>
                                    <input class="w-100 form-control" id="a-10" type="text" name="min_price"
                                        placeholder="{{ __('Price start from') }} ..">
                                </li>
                                <li class="mb-2">
                                    <label class="checkbox-custom-label" for="a-10">{{ __('To') }}</label>
                                    <input class="w-100 form-control" id="a-10" type="text" name="max_price"
                                        placeholder="{{ __('Maximum price') }} ..">
                                </li>
                            </ul>
                        </div>

                        <button class="btn btn-primary w-100 mb-2">{{ __('Filter Result') }}</button>
                    </form>
                    {{-- End filter Courses --}}
                </div>
                <div class="col-md-10">
                    {{-- start course-slide second grid system --}}
                    <div class="row">
                        @foreach ($all_cources as $course)
                            <div class="col-md-6 col-xl-12">
                                <div class="course-slide border rounded overflow-hidden mb-3">
                                    <div class="card-info d-flex flex-column flex-xl-row">
                                        <img width="320px" src="{{ asset($course->image) }}" alt="">
                                        <div class="p-4 w-100">
                                            <h3 class="mb-3 head-title">{{ $course->title }}</h3>
                                            <p class="p-text">{{ strip_tags($course->description) }}</p>
                                            <ul>
                                                <li class="p-text">Level: Beginner</li>
                                                <li class="p-text">Grade: 3</li>
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
                                        <div
                                            class="price-area d-flex flex-column justify-content-between align-items-center py-4 px-2 gap-3">
                                            <a class="sm-button font-inter" href="#">EGP {{ $course->price }}</a>
                                            <a class="link-primary link-opacity-50-hover font-inter"
                                                href="{{ route('course_details', $course->slug) }}">
                                                Read More <i class="fa fa-chevron-right"></i><i
                                                    class="fa fa-chevron-right"></i>

                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        <div class="d-flex justify-content-center  w-100 ">
                            {!! $all_cources->links() !!}
                        </div>
                    </div>
                    {{-- end course-slide second grid system --}}
                </div>
            </div>
        </div>
    </div>
    {{-- end courses cards --}}

@endsection

@section('scripts')

    <script>
        const swiper = new Swiper('.swiper', {
            // Optional parameters
            loop: true,
            // slidesPerView: 3,
            // spaceBetween: 10,

            // Responsive breakpoints
            breakpoints: {
                // when window width is >= 320px
                320: {
                    slidesPerView: 1,
                    spaceBetween: 10
                },
                // when window width is >= 480px
                480: {
                    slidesPerView: 1,
                    spaceBetween: 10
                },
                // when window width is >= 640px
                640: {
                    slidesPerView: 1,
                    spaceBetween: 10
                },
                // when window width is >= 768px
                768: {
                    slidesPerView: 1,
                    spaceBetween: 10
                },
                // when window width is >= 992px
                992: {
                    slidesPerView: 2,
                    spaceBetween: 10
                },
                // when window width is >= 1190px
                1190: {
                    slidesPerView: 3,
                    spaceBetween: 10
                }

            },

            // Navigation arrows
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },

        });
    </script>

    <script>
        // start courses swipper
        $('.new-courses').hide();
        $('.popular-tab').click(function() {
            $(this).addClass('active').siblings().removeClass('active');
            // hide the new courses and show the most popular courses
            $('.new-courses').slideUp();
            $('.most-popular-courses').slideDown();
        });

        $('.new-tab').click(function() {
            $(this).addClass('active').siblings().removeClass('active');
            $('.new-courses').slideDown();
            $('.most-popular-courses').slideUp();
        });
        // end courses swipper
    </script>
@endsection
