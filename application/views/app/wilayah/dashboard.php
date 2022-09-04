<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Dashboard</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Dashboard</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">

      <div class="row">
        <div class="col-lg-12 col-12">
          <div class="row">
            <div class="col-lg-12 col-6">
              <div class="small-box bg-info text-white">
                <div class="inner">
                  <h3><?= 0 ?></h3>

                  <p>Riwayat Konsultasi</p>
                </div>
                <div class="icon">
                  <i class="fas fa-fw fa-users"></i>
                </div>
                <a href="<?= base_url('user/riwayat') ?>" class="small-box-footer">Lihat Riwayat <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>

            <div class="col-lg-12 col-6">
              <div class="small-box bg-danger text-white">
                <div class="inner">
                  <h3>HOTLINE</h3>

                  <p>Pengaduan KDRT</p>
                </div>
                <div class="icon">
                  <i class="ion ion-sad"></i>
                </div>
                <a href="<?= base_url('user/aduan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
          </div>

        </div>

      </div>
      <!-- /.row -->
    </div>
  </section>
</div>