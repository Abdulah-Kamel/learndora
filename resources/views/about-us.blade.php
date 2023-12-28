@extends('layouts.app')
@section('page_title', __('Who We Are?'))
@section('page_info', __('About us'))

@section('content')

  {{-- start about us header --}}
  <div class="about-us-header mb-5">
    <div class="container h-100">
      <div class="row h-100">
        <div class="col-lg-6 h-100 position-relative z-2">
          <div class="d-flex flex-column justify-content-center h-100 px-5">
            <h3 class="text-center mb-3">Our journey</h3>
            <p>Our journey began with a vision to transform traditional learning methods and create an engaging and
              immersive educational experience for students worldwide.</p>
          </div>

        </div>
        <div class="col-lg-6"></div>
      </div>
    </div>
  </div>
  {{-- end about us header --}}

  {{-- start about-summary section --}}
  <div class="about-summary">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 mb-3 mb-lg-0">
          <p>
            <span>Learnadora</span> is a leading provider of innovative educational and training solutions that aim to achieve excellence in skill development
            and empower young people to achieve their full potential. Founded with a clear vision to provide a distinguished and stimulating educational
            experience that helps young people grow personally and professionally.
          </p>
          <p>
            <span>Learnadora</span> is a leading provider of innovative educational and training solutions that aim to achieve excellence in skill development
            and empower young people to achieve their full potential. Founded with a clear vision to provide a distinguished and stimulating educational
            experience that helps young people grow personally and professionally.
          </p>
        </div>
        <div class="col-lg-6">
          <div class="d-flex gap-5 flex-wrap">
            <img src="{{ asset('learndora_assets/img/About us/About us3.png') }}" alt="">
            <img src="{{ asset('learndora_assets/img/About us/About us.png') }}" alt="">
            <img src="{{ asset('learndora_assets/img/About us/About us4.png') }}" alt="">
            <img src="{{ asset('learndora_assets/img/About us/About us2.png') }}" alt="">
          </div>
        </div>
      </div>
    </div>
  </div>
  {{-- end about-summary section --}}

  {{-- start learndora-vaules section --}}

  <div class="learndora-vaules section">
    <div class="container">
      <h3 class="text-center mb-5">Learnadora values</h3>
      <div class="first-comment position-relative mb-5">
        <div class="position-absolute top-50 translate-middle left-image">
          <img class="rounded-circle" src="{{ asset('learndora_assets/img/About us/Group 769.png') }}" alt="">
        </div>
        <div class="info">
          <p class="mb-0">
            <span>Our goals:</span> is to empower learners of all ages to acquire knowledge, develop skills, and foster a lifelong love for learning.
          </p>
        </div>
      </div>
      <div class="second-comment position-relative mb-5">
        <div class="position-absolute top-50 translate-middle left-image">
          <img class="rounded-circle" src="{{ asset('learndora_assets/img/About us/Group 769.png') }}" alt="">
        </div>
        <div class="info">
          <p class="mb-0">
            <span>Our mission:</span> Learnadora empowers young people to achieve their full potential by providing them with access to high-quality educational
          </p>
        </div>
      </div>
      <div class="first-comment position-relative mb-5">
        <div class="position-absolute top-50 translate-middle left-image">
          <img class="rounded-circle" src="{{ asset('learndora_assets/img/About us/Group 769.png') }}" alt="">
        </div>
        <div class="info">
          <p class="mb-0">
            <span>Our vision:</span> envisions a world where young people can reach their full potential through education and training.
          </p>
        </div>
      </div>
    </div>
  </div>

  {{-- end learndora-vaules section --}}

  {{-- start platform --}}
  <div class="platform section">
    <div class="container">
      <h3 class="text-center mb-5">About The Platform</h3>
      <div class="row">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <p class="mb-5">
            <span>Learnadora</span> is a leading provider of innovative educational and training solutions that aim to achieve excellence in skill development
            and empower young people to achieve their full potential. Founded with a clear vision to provide a distinguished and stimulating
            educational experience that helps young people grow personally and professionally.
          </p>
          <p class="mb-5">
            <span>Learnadora</span> is an innovative educational and training initiative that aims to empower young people to acquire the skills and
            knowledge necessary to enter the labor market and succeed in it. This platform is considered a comprehensive educational
            environment that combines specialized educational content with practical training, which enables young people to
            develop their personal and professional skills and achieve excellence in various fields.
          </p>
          <p class="mb-5">
            <span>Learnadora</span> also provides professional training and workshops, which are essential elements in the journey of
            skill development and performanceimprovement in multiple fields.
            These two processes are related to providing individuals with the knowledge and skills necessary to succeed in the competitive labor market.
          </p>
        </div>
        <div class="col-lg-6">
          <img class="d-block m-auto img-fluid" src="{{ asset('learndora_assets/img/About us/Group 774.jpg') }}" alt="">
        </div>
      </div>
    </div>
  </div>

  {{-- end platform --}}

  {{-- start what we offer section --}}
  <div class="our-offer section">
    <div class="container">
      <h3 class="text-center mb-5">What We Offer</h3>
      <div class="row">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <img class="d-block m-auto img-fluid" src="{{ asset('learndora_assets/img/About us/Group 773.jpg') }}" alt="">
        </div>
        <div class="col-lg-6">
          <p class="mb-0"><span>Variety Of Educational Programs:</span></p>
          <p class="mb-5">
            We offer a variety of courses, workshops, and training in different fields, starting from academic specializations
            to modern practical and professional skills that the labor market needs inside and outside Egypt.
          </p>

          <p class="mb-0"><span>Interactive Educational Experience:</span></p>
          <p class="mb-5">
            We believe that the best learning comes from interactive educational experiences,
            so we offer rich and exciting content that includes live and indirect lectures and interactive materials.
          </p>

          <p class="mb-0"><span>Expert And Professional Trainers:</span></p>
          <p class="mb-5">
            We collaborate with a team of expert and professional trainers who combine academic knowledge with practical
            and professional experience to ensure the provision of high-quality content and increase job opportunities.
          </p>

          <p class="mb-0"><span>A Space For Communication And Sharing</span></p>
          <p class="mb-5">
            We provide an interactive environment that enables subscribers to communicate and interact with each other and with trainers,
            which contributes to the exchange of knowledge and experience.
          </p>

        </div>
      </div>
    </div>
  </div>
  {{-- end what we offer section --}}

  {{-- start why we are unique section --}}
  <div class="why-we-are section">
    <div class="container">
      <h3 class="text-center mb-5">Why We Are Unique</h3>
      <div class="row">
        <div class="col-lg-6 mb-5 mb-lg-0">

          <p class="mb-0"><span>Customization Of Programs:</span></p>
          <p class="mb-5">
            We offer customized programs according to the individual's needs, whether it is to improve current skills or acquire new skills.
          </p>

          <p class="mb-0"><span>The Balance Between Theoretical And Practical:</span></p>
          <p class="mb-5">
            We always strive to achieve a perfect balance between theoretical content and practical application to
            give subscribers a deep understanding and immediate practical skills.
          </p>

          <p class="mb-0"><span>Sustainable Learning:</span></p>
          <p class="mb-5">
            We are interested in promoting sustainable learning as we help individuals continue developing their
            skills after the end of the programs through resources, guidance, and training.
          </p>

        </div>
        <div class="col-lg-6">
          <img class="d-block m-auto img-fluid" src="{{ asset('learndora_assets/img/About us/Group 772.jpg') }}" alt="">
        </div>
      </div>
    </div>
  </div>
  {{-- end why we are unique section --}}



@endsection
