<section id="classrooms" class="section-with-bg wow fadeInUp">
  <div class="container">
    <div class="section-header">
      <h2>Classrooms</h2>
      <p>Jenjang Program Studi (Prodi)</p>
    </div>

    <div class="row">
      @foreach($classrooms as $classroom)
        <div class="col-lg-4 col-md-6">
          <div class="classroom">
            <div class="classroom-img">
              <img src="{{ $classroom->photo->getUrl() }}" alt="{{ $classroom->name }}" class="img-fluid">
            </div>
            <h3><a href="#">{{ $classroom->name }}</a></h3>
            <div class="stars">
              @for($i = 0; $i < $classroom->rating; $i++)
                <i class="fa fa-star"></i>
              @endfor
            </div>
            <p>{{ $classroom->description }}</p>
          </div>
        </div>
      @endforeach
    </div>
  </div>

</section>
