<footer id="footer">
  <div class="footer-top">
    <div class="container">
      <div class="row">

        <h3 class="col-lg-3 col-md-6 footer-info text-danger">
          <img src="../img/logo.png" alt="Politeknik AGP">
		  <span>POLGETA AGP</span>
          <p class="text-justify">{{ $settings['footer_description'] ?? '' }}</p>
        </h3>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="fa fa-angle-right"></i> <a href="#">Home</a></li>
            <li><i class="fa fa-angle-right"></i> <a href="#">About us</a></li>
            <li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
            <li><i class="fa fa-angle-right"></i> <a href="#">Terms of service</a></li>
            <li><i class="fa fa-angle-right"></i> <a href="#">Privacy policy</a></li>
            @guest
              <li><i class="fa fa-angle-right"></i> <a href="{{ route('login') }}">Login</a></li>
            @endguest
            @auth
              <li><i class="fa fa-angle-right"></i> <a href="{{ route('admin.home') }}">Admin Panel</a></li>
            @endauth
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Useful Links</h4>
          <ul>
            <li><i class="fa fa-angle-right"></i> <a href="#">Home</a></li>
            <li><i class="fa fa-angle-right"></i> <a href="#">About us</a></li>
            <li><i class="fa fa-angle-right"></i> <a href="#">Services</a></li>
            <li><i class="fa fa-angle-right"></i> <a href="#">Terms of service</a></li>
            <li><i class="fa fa-angle-right"></i> <a href="#">Privacy policy</a></li>
            @guest
              <li><i class="fa fa-angle-right"></i> <a href="{{ route('login') }}">Login</a></li>
            @endguest
            @auth
              <li><i class="fa fa-angle-right"></i> <a href="{{ route('admin.home') }}">Admin Panel</a></li>
            @endauth
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-contact">
          <h4>Contact Us</h4>
          <p>
            {!! $settings['footer_address'] ?? '' !!}<br>
            <strong>Phone:</strong> {{ $settings['contact_phone'] }}<br>
            <strong>Email:</strong> {{ $settings['contact_email'] }}<br>
          </p>

          <div class="social-links">
            <a href="{{ $settings['footer_twitter'] ?? '' }}" class="twitter"><i class="fa fa-twitter"></i></a>
            <a href="{{ $settings['footer_facebook'] ?? '' }}" class="facebook"><i class="fa fa-facebook"></i></a>
            <a href="{{ $settings['footer_instagram'] ?? '' }}" class="instagram"><i class="fa fa-instagram"></i></a>
            <a href="{{ $settings['footer_googleplus'] ?? '' }}" class="google-plus"><i class="fa fa-google-plus"></i></a>
            <a href="{{ $settings['footer_linkedin'] ?? '' }}" class="linkedin"><i class="fa fa-linkedin"></i></a>
          </div>

        </div>

      </div>
    </div>
  </div>

  <div class="container">
    <div class="copyright">
		Copyright &copy; <strong>{{ trans('panel.site_title') }}</strong> 2007 - <?= date('Y') ?>. All Rights Reserved
    </div>
    <div class="credits">
      Developed by <a href="#">Genre Riset Teknologi</a>
    </div>
  </div>
</footer><!-- #footer -->
