@extends('layouts.main')

@section('content')
@include('sections.intro')

<main id="main">
  @include('sections.about')

  @include('sections.lecturers')

  @include('sections.schedule')

  @include('sections.venues')

  @include('sections.classrooms')

  @include('sections.gallery')

  @include('sections.sponsors')

  @include('sections.faq')

  @include('sections.subscribe')

  @include('sections.register')

  @include('sections.contact')
</main>
@endsection