<header id="header"@if(Route::current()->getName() != 'home') class="header-fixed"@endif>
  <div class="container">

    <div id="logo" class="pull-left">
      <h1>
        <a href="{{ route('home') }}#intro">
          <span><img src="../img/logo.png" alt="Politeknik AGP"></span>
          {{ env('APP_NAME', 'Politeknik AGP') }}
        </a>
      </h1>
    </div>

    <nav id="nav-menu-container">
      <ul class="nav-menu">
        <li class="menu-active"><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#intro">Home</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#about">About</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#lecturers">Lecturers</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#schedule">Schedule</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#venue">Seminar</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#classrooms">Classroom</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#gallery">Gallery</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#supporters">Sponsors</a></li>
        <li><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#contact">Contact</a></li>
        <li class="buy-tickets"><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#buy-tickets"><i class="fa fa-id-card"></i> PMB</a></li>
		<li class="buy-tickets"><a href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}login" target="_blank"><i class="fa fa-user"></i> Admin</a></li>
      </ul>
    </nav>
  </div>
</header>
