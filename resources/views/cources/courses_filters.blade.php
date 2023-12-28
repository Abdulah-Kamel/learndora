<div class="filter_wraps nmnm">
  <div class="dl">
      <div id="main2">
          <a href="javascript:void(0)" class="btn btn-theme fcv filter_open" onclick="openNav2()" id="open2">
            <span>{{ __('Filter') }}</span>
          </a>
      </div>
  </div>
</div>

<div class="container">
  <div id="filter-sidebar2" class="filter-sidebar plk">
      <div class="filt-head">
          <h4 class="filt-first">{{ __('Advance Search') }}</h4>
          <a href="javascript:void(0)" class="closebtn" onclick="closeNav2()">{{ __('Close') }}
              <i class="fa fa-close fa-fw"></i>
          </a>
      </div>

      <form class="" action="{{ route('filterCourse') }}">
          <div class="show-hide-sidebar">

              <!-- Find New Property -->
              <div class="sidebar-widgets">

                  <!-- Search Form -->
                  <input class="form-control" name="search" type="search"
                      placeholder="{{ __('Search keyword') }} ..." aria-label="Search">

                  <div class="clearfix"></div>
                  <br>


                  <h4 class="side_title">{{ __('Categories') }}</h4>
                  <ul class="no-ul-list mb-3">
                      @forelse($cats as $category)
                          <li>
                              <input id="a-{{ $category->id }}" class="checkbox-custom" name="category_id[]"
                                  value="{{ $category->id }}" type="checkbox">
                              <label for="a-{{ $category->id }}"
                                  class="checkbox-custom-label">{{ $category->name }}
                                  {{-- ({{ $category->courses->count() }})</label> --}}
                          </li>
                      @empty
                      @endforelse
                  </ul>
                  <br>

                  <h4 class="side_title">{{ __('Price') }}</h4>
                  <ul class="no-ul-list mb-3">
                      <li>
                          <label for="a-10" class="checkbox-custom-label">{{ __('From') }}</label>
                          <input style="width: 100%; height: 50px" id="a-10" class="form-control"
                              name="min_price" placeholder="{{ __('Price start from') }} .." type="text">
                      </li>
                      <li>
                          <label for="a-10" class="checkbox-custom-label">{{ __('To') }}
                          </label>
                          <input style="width: 100%; height: 50px" id="a-10" class="form-control"
                              name="max_price" placeholder="{{ __('Maximum price') }} .." type="text">
                      </li>

                  </ul>

                  <button class="btn xa full-width mb-2">{{ __('Filter Result') }}</button>

              </div>

          </div>
      </form>
  </div>
</div>
