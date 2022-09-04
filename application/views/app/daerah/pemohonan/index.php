<div class="content-wrapper">

  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Pemohonan</h1>
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
              <h5>PEMOHONAN UNTUK PENEMPATAN</h5>
            </div>
            <div class="card-body">
              <table class="table table-striped custom-table">
                <thead>
                  <tr>
                    <th>Tanggal Permohonan</th>
                    <th>Nama</th>
                    <th>Kontak Person</th>
                    <th>Potensi</th>
                    <th>Alamat</th>
                    <th>Kabupaten</th>
                    <th>Provinsi</th>
                    <th>Permohonan</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($pemohon as $p) : ?>
                    <tr>
                      <td><?= $p['tanggal_permohonan'] ?></td>
                      <td><?= $p['nama'] ?></td>
                      <td><?= $p['kontak_person'] ?></td>
                      <td><?= $p['potensi'] ?></td>
                      <td><?= $p['alamat'] ?></td>
                      <td><?= $p['kabupaten'] ?></td>
                      <td><?= $p['provinsi'] ?></td>
                      <td>
                        <a href="#">
                          <i class="fas fa-fw fa-book"></i>
                        </a>
                      </td>
                    </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>