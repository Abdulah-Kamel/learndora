<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}" dir="@if(app()->getLocale() == 'en') ltr  @else rtl @endif">

    @include('includes.header')

    <body class="blue-skin" style="direction: @if(app()->getLocale() == 'en') ltr  @else rtl @endif !important">

      <!-- ============================================================== -->
      <!-- Preloader - style you can find in spinners.css -->
      <!-- ============================================================== -->
      <div id="preloader"><div class="preloader"><span></span><span></span></div></div>
      <!-- ============================================================== -->
      <!-- Main wrapper - style you can find in pages.scss -->
      <!-- ============================================================== -->


      <!-- ============================================================== -->
      <!-- Top header  -->
      <!-- ============================================================== -->
      <!-- Start Navigation -->
      @include('includes.nav')
      <!-- End Navigation -->

      {{-- start page content --}}
      @yield('content')
      {{-- End page content --}}

			<!-- footer  -->
      @include('includes.footer')
			<!-- ============================ Footer End ================================== -->

      @include('includes.modals')
			<!-- End Modal -->

			<a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="ti-arrow-up"></i></a>

		<!-- ============================================================== -->
		<!-- End Wrapper -->
		<!-- ============================================================== -->

		<!-- ============================================================== -->
		<!-- All Jquery -->
		<!-- ============================================================== -->
    @include('includes.scripts')
    @yield('scripts')

    <!-- ============================================================== -->
		<!-- This page plugins -->
		<!-- ============================================================== -->

	</body>

</html>
