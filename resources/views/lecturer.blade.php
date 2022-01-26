@extends('layouts.main')

@section('content')
<main id="main" class="main-page">
  <section id="lecturers-details" class="wow fadeIn">
    <div class="container">
      <div class="section-header">
        <h2>Lecture Profile</h2>
        <p>Praesentium ut qui possimus sapiente nulla.</p>
      </div>

      <div class="row">
        <div class="col-md-6">
          <img src="{{ $lecturer->photo->getUrl() }}" alt="{{ $lecturer->name }}" class="img-fluid">
        </div>

        <div class="col-md-6">
          <div class="details">
            <h2>{{ $lecturer->name }}</h2>
            <div class="social">
              <a href="{{ $lecturer->twitter }}"><i class="fa fa-twitter"></i></a>
              <a href="{{ $lecturer->facebook }}"><i class="fa fa-facebook"></i></a>
              <a href="{{ $lecturer->linkedin }}"><i class="fa fa-linkedin"></i></a>
            </div>
            <p>{{ $lecturer->full_description }}</p>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>
@endsection