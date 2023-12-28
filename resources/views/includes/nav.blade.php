<!-- navbar -->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container">
        <a class="navbar-brand" href="{{ route('home') }}">
          <img class="me-3" src="{{ asset('learndora_assets/img/icon/Group 2.svg') }}" alt="Learnadora">Learnadora
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto my-4 my-lg-0 align-items-center align-items-lg-start ">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('home') }}">Home</a>
                </li>
                <li class="nav-item @if (\Route::currentRouteName() == 'courses') active @endif">
                    <a class="nav-link" href="{{ url('courses') }}">{{ __('Courses') }}</a>
                </li>
                <li class="nav-item @if (\Route::currentRouteName() == 'about') active @endif">
                    <a class="nav-link" href="{{ route('about') }}">{{ __('About us') }}</a>
                </li>
                <li class="nav-item @if (\Route::currentRouteName() == 'get-contact') active @endif">
                    <a class="nav-link" href="{{ route('get-contact') }}">{{ __('Contact us') }}</a>
                </li>
            </ul>
            @guest
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0 align-items-center align-items-lg-start">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Sign in') }}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn-lined px-4" href="{{ route('register') }}">{{ __('Sign up') }}</a>
                    </li>
                </ul>
            @endguest
            @auth
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0 align-items-center align-items-lg-start">
                    <li class="nav-item">
                        <form action="{{ route('logout') }}" method="post">
                        @csrf
                        <button class="nav-link">Logout</button>
                        </form>
                    </li>
                </ul>
            @endauth
        </div>
    </div>
</nav>
<!-- end navbar -->
