<div class="content-wrapper">

  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Mubaligh</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <!-- <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">User</a></li>
            <li class="breadcrumb-item active"></li>
          </ol> -->
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row pt-4">
        <div class="col-10 mx-auto mb-2">
          <div class="card">
            <div class="card-header">
              <div class="row">
                <div class="col-6">
                  <h5>TAMBAH MUBALIGH</h5>
                </div>
                <div class="col-6">
                  <!-- <button class="btn btn-primary float-right" data-toggle="modal" data-target="#tambahModal">
                    <i class="fas fa-fw fa-plus"></i>
                  </button> -->
                </div>
              </div>
            </div>
            <div class="card-body">
              <form action="<?= base_url("daerah/mubalik/add") ?>" method="post">
                <div class="form-group">
                  <label for="">Nama Mubaligh</label>
                  <input type="text" name="name" class="form-control">
                </div>
                <div class="form-group">
                  <label for="">Email</label>
                  <input type="email" name="email" class="form-control">
                </div>
                <div class="form-group">
                  <label for="">Nomor Telepon</label>
                  <input type="text" name="phone_number" class="form-control">
                </div>
                <div class="form-group">
                  <label for="">Tempat Lahir</label>
                  <input type="text" name="birth_place" class="form-control">
                </div>
                <div class="form-group">
                  <label for="">Tanggal Lahir</label>
                  <input type="date" name="birth_date" class="form-control">
                </div>
                <div class="form-group">
                  <label for="">Umur</label>
                  <input type="number" min="18" name="age" class="form-control">
                </div>
                <div class="form-group">
                  <label for="">Alamat</label>
                  <textarea name="address" id="" cols="30" rows="10" class="form-control"></textarea>
                </div>
                <div class="form-group">
                  <label for="">Edukasi</label>
                  <select name="education_id" class="form-control" id="">
                    <?php foreach ($pendidikan as $pend) : ?>
                      <option value="<?= $pend['id'] ?>"><?= $pend['name'] ?></option>
                    <?php endforeach; ?>
                  </select>
                </div>
                <div class="form-group">
                  <label for="">Kabupaten</label>
                  <select name="districts_id" class="form-control" id="">
                    <?php foreach ($kabupaten as $kab) : ?>
                      <option value="<?= $kab['id'] ?>"><?= $kab['name'] ?></option>
                    <?php endforeach; ?>
                  </select>
                </div>
                <div class="form-group">
                  <label for="">Jenis Kelamin</label>
                  <select name="gender_id" id="" class="form-control">
                    <option value="1">Laki-laki</option>
                    <option value="2">Perempuan</option>
                  </select>
                </div>
                <div class="form-group">
                  <button class="btn btn-primary btn-block btn-lg" type="submit">TAMBAHKAN DATA MUBALIGH</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>