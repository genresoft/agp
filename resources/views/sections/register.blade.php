<section id="buy-tickets" class="section-with-bg wow fadeInUp">
  <div class="container">

    <div class="section-header">
      <h2>PMB</h2>
      <p>Penerimaan Mahasiswa Baru</p>
    </div>

    <div class="row">
	     <div class="col-lg-4">
          <div class="card mb-5 mb-lg-0">
            <div class="card-body">
              <h5 class="card-title text-muted text-uppercase text-center">TAHAPAN & Biaya</h5>
              <h6 class="card-pmb text-center">PMB</h6>
              <hr>
              <ul class="fa-ul">
                
                  <li>
                    <span class="fa-li"><i class="fa fa-circle-o"></i></span> Pendaftaran
                  </li>
                  <li>
                    <span class="fa-li"><i class="fa fa-circle-o"></i></span> Ujian Saringan Masuk
                  </li>
                  <li>
                    <span class="fa-li"><i class="fa fa-circle-o"></i></span> Pengumuman
                  </li>
                  <li>
                    <span class="fa-li"><i class="fa fa-circle-o"></i></span> Registrasi & Perwalian
                  </li>
                  <li>
                    <span class="fa-li"><i class="fa fa-circle-o"></i></span> Pengembangan Sarana Pendidikan
                  </li>
                  <li>
                    <span class="fa-li"><i class="fa fa-circle-o"></i></span> Perkuliahan Semester Awal
                  </li>
                  <li>
                    <span class="fa-li"><i class="fa fa-circle-o"></i></span> Kemahasiswaan
                  </li>
              </ul>
              <hr>
              <div class="text-center">
				<a type="button" class="btn" href="{{ Route::current()->getName() != 'home' ? route('home') : '' }}#contact">Contact Admin</a>
              </div>
            </div>
          </div>
        </div>
      @foreach($pmbs as $pmb)
        <div class="col-lg-4">
          <div class="card mb-5 mb-lg-0">
            <div class="card-body">
              <h5 class="card-title text-muted text-uppercase text-center">{{ $pmb->name }}</h5>
              <h6 class="card-pmb text-center">Rp. {{ number_format($pmb->cost, 0, ',', '.') }}</h6>
              <hr>
              <ul class="fa-ul">
                @foreach($amenities as $amenity)
                  <li @if(!$pmb->amenities->contains($amenity->id))class="d-none"@endif>
                    <span class="fa-li"><i class="fa fa-{{ $pmb->amenities->contains($amenity->id) ? 'check' : 'times' }}"></i></span>{{ $amenity->name }}
                  </li>
                @endforeach
              </ul>
              <hr>
              <div class="text-center">
                <button type="button" class="btn" data-toggle="modal" data-target="#buy-ticket-modal" data-ticket-type="{{ Str::slug($pmb->name) }}">Register Now</button>
              </div>
            </div>
          </div>
        </div>
      @endforeach
  </div>

  <!-- Modal Order Form -->
  <div id="buy-ticket-modal" class="modal fade">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h6 class="modal-title"><i class="fa fa-address-card"></i> &nbsp;Registrasi Mahasiswa Baru</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form method="POST" action="#">
            <div class="form-group">
              <input type="text" class="form-control" name="your-name" placeholder="Your Name">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="your-email" placeholder="Your Email">
            </div>
            <div class="form-group">
              <select id="ticket-type" name="ticket-type" class="form-control" >
                <option value="">-- Pilih Gelombang PMB --</option>
                @foreach($pmbs as $pmb)
                  <option value="{{ Str::slug($pmb->name) }}">{{ $pmb->name }}</option>
                @endforeach
              </select>
            </div>
            <div class="text-center">
              <button type="submit" class="btn">Register</button>
            </div>
          </form>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->

</section>
