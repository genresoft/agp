<section id="lecturers" class="wow fadeInUp">
  <div class="container">
    <div class="section-header">
      <h2>Lecturers</h2>
      <p>Our Lecturers Profile </p>
    </div>

    <div class="row">
      @foreach($lecturers as $lecturer)
        <div class="col-lg-4 col-md-6">
          <div class="lecturer">
            <img src="{{ $lecturer->photo->getUrl() }}" alt="{{ $lecturer->name }}" class="img-fluid">
            <div class="details">
              <h3><a href="{{ route('lecturer', $lecturer->id) }}">{{ $lecturer->name }}</a></h3>
              <p>{{ $lecturer->description }}</p>
              <div class="social">
                @if($lecturer->twitter)
                  <a href="{{ $lecturer->twitter }}"><i class="fa fa-twitter"></i></a>
                @endif
                @if($lecturer->facebook)
                  <a href="{{ $lecturer->facebook }}"><i class="fa fa-facebook"></i></a>
                @endif
                @if($lecturer->linkedin)
                  <a href="{{ $lecturer->linkedin }}"><i class="fa fa-linkedin"></i></a>
                @endif
              </div>
            </div>
          </div>
        </div>
      @endforeach
    </div>
  </div>

</section>
