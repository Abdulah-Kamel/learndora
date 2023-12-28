@extends('layouts.app')

@section('content')
    {{-- start main header --}}
    <div class="course-details-main-header">
        <div class="container h-100 p-0">
            <div class="course-info h-100 p-5">
                <h3 class="mb-5 text-capitalize">{{ $course_details->getTranslatedAttribute('title') }}</h3>
                <p class="mb-4">{{ strip_tags($course_details->description) }}</p>
                <p class="mb-5 specs">1,033,071 already enrolled</p>
                <a class="btn-lined px-5 py-2 fs-5"
                    href="@if (!isset(auth()->user()->id)) {{ url('login') }} @elseif($course->price == 0){{ route('join', $course_details->slug) }} @else {{ route('payment', $course->slug) }} @endif">Enroll</a>
            </div>
        </div>

    </div>
    {{-- end main header --}}

    {{-- start courses details --}}
    <div class="course-details-infos">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-7">
                    <div class="teachings mb-5">
                        <h2 class="lead mb-5">What you'll learn</h2>
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <div class="specs-info">
                                    {{ strip_tags($course_details->learn) }}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="edu_wraper border">
                        <h4 class="edu_title">{{ __('Course Circullum') }}</h4>
                        <div id="accordionExample" class="accordion shadow circullum">

                            <!-- Part 1 -->
                            <div class="card">
                                <div id="headingOne" class="card-header bg-white shadow-sm border-0">
                                    <h6 class="mb-0 accordion_title"><a href="#" data-toggle="collapse"
                                            data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"
                                            class="d-block position-relative text-dark collapsible-link py-2">

                                            {{ __('Lessons of this course') }} </a></h6>
                                </div>
                                <div id="collapseOne" aria-labelledby="headingOne" data-parent="#accordionExample"
                                    class="collapse show">
                                    <div class="card-body pl-3 pr-3">
                                        <ul class="lectures_lists">
                                            @foreach ($lesson_data as $key => $lesson)
                                                @if (isset($applicant) && $applicant->approve == 1)
                                                    @php
                                                        $video = \App\Video::where('lesson_id', $lesson->id)
                                                            ->where('group_id', $applicant->group_id)
                                                            ->first();
                                                    @endphp


                                                    {{--                                                <a href="{{$video->link??'#'}}"><li class="view"> --}}
                                                    <a href="{{ route('lesson', [$lesson->slug, $lesson->course->slug]) }}">
                                                        <li class="view">
                                                            <div class="lectures_lists_title"><i
                                                                    class="ti-control-play"></i>{{ __('Lecture') }}:
                                                                {{ $key + 1 }}
                                                            </div>{{ $lesson->getTranslatedAttribute('title') }}
                                                        </li>
                                                    </a>
                                                @else
                                                    <li class="unview">
                                                        <div class="lectures_lists_title"><i
                                                                class="ti-control-play"></i>{{ __('Lecture') }}:
                                                            {{ $key + 1 }}
                                                        </div>{{ $lesson->getTranslatedAttribute('title') }}
                                                    </li>
                                                @endif
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="requirements mb-5">
                        <h2 class="lead mb-5">Requirements</h2>
                        <div class="row">
                            <div class="col-md-12">
                                <li>{{ strip_tags($course_details->requirements, '<br>') }}</li>
                            </div>
                        </div>
                    </div>

                    <div class="course-content mb-5">
                        <h2 class="lead mb-5">Course content</h2>
                        <ul>
                            <li class="d-inline">• 13 sections</li>
                            <li class="d-inline">• 89 lectures</li>
                            <li class="d-inline">• 12h 13m total length</li>
                        </ul>
                    </div>

                    <ul class="list-group mb-5">
                        <li class="list-group-item p-3">
                            <h4>First week</h4>
                            <p class="mb-0">8 lectures • 6 Hour</p>
                        </li>
                        <li class="list-group-item">
                            <h4>Second week</h4>
                            <p class="mb-0">5 lectures • 1 Hour</p>
                        </li>
                        <li class="list-group-item">
                            <h4>third week</h4>
                            <p class="mb-0">9 lectures • 4 Hour</p>
                        </li>
                        <li class="list-group-item">
                            <h4>week 4</h4>
                            <p class="mb-0">8 lectures • 6 Hour</p>
                        </li>
                        <li class="list-group-item">
                            <h4>week 5</h4>
                            <p class="mb-0">8 lectures • 6 Hour</p>
                        </li>
                    </ul>

                    <div class="instructors mb-5">
                        <h2 class="lead mb-5">Instructors</h2>

                        <div class="d-flex align-items-center gap-3 mb-5">
                            <img class="instructor-avatar rouneded"
                                src="{{ asset('learndora_assets/img/avatars/karim.png') }}" alt="">
                            <div>
                                <h4>Karim Ahmed</h4>
                                <p>Computer Science degree from Case Western Reserve University</p>
                            </div>
                        </div>
                        <br>
                        <div class="d-flex align-items-center gap-3">
                            <img class="instructor-avatar rouneded"
                                src="{{ asset('learndora_assets/img/avatars/sara.png') }}" alt="">
                            <div>
                                <h4>Sara Ahmed</h4>
                                <p>Computer Science degree from Case Western Reserve University</p>
                            </div>
                        </div>
                    </div>

                    {{-- start review section --}}
                    <div class="review py-5">
                        <h2 class="lead mb-5">Reviews</h2>
                        <div class="review-text p-5 mb-3 position-relative">
                            <h4 class="text-center w-75 mx-auto mb-3 second-style">“I loved every moment of the course,The
                                teachers
                                were very helpful and I am happy with how much I developed through this course”</h4>
                            <h4 class="second-style">Ahmed, Student</h4>
                        </div>
                        <div class="review-text p-5 position-relative">
                            <h4 class="text-center w-75 mx-auto mb-3 second-style">“I'm glad I discovered Educhains, so I
                                don't have to
                                worry about my daughter neglecting her school subjects”</h4>
                            <h4 class="second-style">Hanan, Parent</h4>
                        </div>
                    </div>
                    {{-- end review section --}}


                </div>
                <div class="col-lg-5">
                    <div class="preview-card">
                        <div class="video-panel d-flex justify-content-center align-items-center position-relative">
                            <div class="play-icon">
                                <i class="fa-solid fa-play d-block fa-2x"></i>
                            </div>
                            <div
                                class="video-ad-title text-center fw-bold position-absolute bottom-0 d-flex justify-content-center align-items-center">
                                Course Preview</div>
                        </div>
                        <div class="info-panel py-3">
                            <p class="text-center price">EGP 800</p>
                            <div class="row px-4">
                                <div class="col-xl-6">
                                    <a class="btn-lined d-block mb-3 mb-xl-0 text-center"
                                        href="@if (!isset(auth()->user()->id)) {{ url('login') }} @elseif($course->price == 0){{ route('join', $course_details->slug) }} @else {{ route('payment', $course->slug) }} @endif">Buy
                                        Now</a>
                                </div>
                                {{-- <div class="col-xl-6">
                                    <a class="btn-not-lined d-block mb-3 mb-xl-0 text-center"
                                        href="{{ route('addOneItemtoCart', $course->id) }}">Add To
                                        Cart</a>
                                </div> --}}
                            </div>
                        </div>
                        <hr>
                        <div class="course-statics">
                            <div class="row px-4 py-3">
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <i class="fa-solid fa-chart-simple"></i>
                                        <span class="ms-2">Level: Beginner</span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-solid fa-users"></i>
                                        <span class="ms-2">Age: 12 </span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-regular fa-clock"></i>
                                        <span class="ms-2">Time: 4 weeks of study</span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-solid fa-film"></i>
                                        <span class="ms-2">12 hours video</span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-regular fa-newspaper"></i>
                                        <span class="ms-2">14 articles</span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-solid fa-rss"></i>
                                        <span class="ms-2">4 graded assessment</span>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <i class="fa-solid fa-globe"></i>
                                        <span class="ms-2">language: Arabic</span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-regular fa-closed-captioning"></i>
                                        <span class="ms-2">Subtitles: English</span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-regular fa-calendar"></i>
                                        <span class="ms-2">Last updated 6/2023</span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-solid fa-book"></i>
                                        <span class="ms-2">Created by Educhains</span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-solid fa-infinity"></i>
                                        <span class="ms-2">Full lifetime access</span>
                                    </div>
                                    <div class="mb-2">
                                        <i class="fa-solid fa-certificate"></i>
                                        <span class="ms-2">Certificate of completion</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- end courses details --}}
@endsection

@section('scripts')
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    @if (Session::has('success'))
        <script type="text/javascript">
            swal({
                title: 'Success!',
                text: "{{ Session::get('success') }}",
                timer: 5000,
                type: 'success'
            }).then((value) => {
                //location.reload();
            }).catch(swal.noop);
        </script>
    @endif
@endsection
