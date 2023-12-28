<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="Learnadora">
      <meta name="author" content="Learnadora">

      <title>{{ setting('site.title') }}</title>

      <link rel="icon" href="img/favicon.png" type="image/png">

      <!-- BASE CSS -->
      <link href="{{ asset('/') }}css/style.css" rel="stylesheet">
      <link rel="stylesheet" href="{{ asset('assets/css/styles.css') }}">
      {{-- Mahmoud Yousry Css --}}
      <link rel="stylesheet" href="{{ asset('learndora_assets/css/bootstrap.min.css') }}">
      <link rel="stylesheet" href="{{ asset('learndora_assets/css/all.min.css') }}">
      <link rel="stylesheet" href="{{ asset('learndora_assets/css/style.css') }}">
  </head>

  <body>

    {{-- navbar should be here --}}
    @include('includes.nav')

    <!-- start register -->
    <section class="register-section">
      <form action="{{ route('register') }}" method="post">
        @csrf
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <div class="inner d-flex justify-content-center align-items-center">
                <img class="w-75" src="{{ asset('learndora_assets/img/sign up.png') }}" alt="">
              </div>
              <div class="p-5" style="background:#416AD3;">
                  <h3 class="text-center mb-5 text-white">Welcome With Us</h3>
                  <p class="w-75 m-auto text-white text-center">Start Your Learning Adventure Today - Sign Up
                      and Explore Endless Possibilities</p>
              </div>
            </div>
            <div class="col-lg-6 d-flex flex-column justify-content-center align-items-center">
                <div class="w-100 p-0 p-md-5 ">
                    <!-- start register form -->
                    <form action="" method="" class="d-block w-100 mb-3">
                        <h3 class="my-3 text-center">Sign Up</h3>
                        <div class="form-group mb-4">
                            <label for="name">Name</label>
                            <div class="position-relative">
                                <span class="position-absolute input-icons">
                                    <i
                                        class="fa-regular fa-user position-absolute top-50 start-50 translate-middle input_link"></i>
                                </span>
                                <input type="text" class="form-control shadow-none" name="name">
                            </div>
                        </div>
                        <div class="form-group mb-4">
                            <label for="email">Email</label>
                            <div class="position-relative">
                                <span class="position-absolute input-icons">
                                    <i
                                        class="fa-regular fa-envelope position-absolute top-50 start-50 translate-middle input_link"></i>
                                </span>
                                <input type="email" class="form-control shadow-none" name="email">
                            </div>
                        </div>
                        <div class="form-group mb-4">
                            <label for="password">Password</label>
                            <div class="position-relative">
                                <span class="position-absolute input-icons">
                                    <i
                                        class="fa-solid fa-lock position-absolute top-50 start-50 translate-middle input_link"></i>
                                </span>
                                <input type="password" class="form-control shadow-none" name="password">
                            </div>
                        </div>


                        <div class="form-group mb-4">
                            <label for="password">Confirm Password</label>
                            <div class="position-relative">
                                <span class="position-absolute input-icons">
                                    <i
                                        class="fa-solid fa-lock position-absolute top-50 start-50 translate-middle input_link"></i>
                                </span>
                                <input type="password" name="password_confirmation" class="form-control shadow-none"
                                    id="password_confirmation" />
                            </div>
                        </div>
                        <button class="w-100 btn-lined py-3 border-0 fs-5 fw-bold text-capitalize mb-2"
                            type="submit">Sign Up</button>

                        <span>Already Have Account ? </span><a href="login.html" class="login-option">Log in</a>
                    </form>
                    <!-- end register form -->
                    <h2 class="horizontal-line w-100 mb-4"><span>OR</span></h2>
                    <div class="social-login-buttons d-flex flex-column gap-3 w-100">
                        <a class="facebook-login text-center" href="{{ route('facebook-auth') }}"><i
                                class="fa-brands fa-facebook me-2"></i>Sign Up With Facebook</a>
                        <a class="google-login text-center" href="{{ route('google-auth') }}"><i
                                class="fa-brands fa-google me-2"></i>Sign Up With Google</a>
                    </div>
                </div>
            </div>
          </div>
        </div>
      </form>
    </section>

    <!-- end register -->

    <!-- COMMON SCRIPTS -->
    <script src="{{ asset('/') }}js\jquery-2.2.4.min.js"></script>
    {{-- <script src="{{ asset('/') }}js\common_scripts.js"></script>
    <script src="{{ asset('/') }}js\main.js"></script> --}}

    <script src="{{ asset('learndora_assets/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('learndora_assets/js/all.min.js') }}"></script>
    @include('includes.scripts')

  </body>

</html>
