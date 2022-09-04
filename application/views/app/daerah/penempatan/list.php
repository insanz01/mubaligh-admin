<div class="content-wrapper">

  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Penempatan Mubaligh</h1>
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
              <h5>MUBALIGH PENEMPATAN</h5>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-12">
                  <button class="btn btn-primary float-right" data-toggle="modal" data-target="#tambahModal">
                    <i class="fas fa-fw fa-plus"></i>
                  </button>
                </div>
                <div class="col-12 mt-2">
                  <table class="table table-striped custom-table">
                    <thead>
                      <tr>
                        <th>ID Mubaligh</th>
                        <th>Nama Mubaligh</th>
                        <th>Acc Kabupaten</th>
                        <th>Acc Wilayah</th>
                        <th>Skor</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php foreach ($mubaligh as $m) : ?>
                        <tr>
                          <td><?= $m['id'] ?></td>
                          <td><?= $m['nama'] ?></td>
                          <td class="text-center">
                            <span>❌</span>
                          </td>
                          <td class="text-center">
                            <span>✅</span>
                          </td>
                          <td><?= $m['skor'] ?></td>
                          <td>
                            <a href="#" class="badge badge-sm badge-pill">
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
      </div>
    </div>
  </section>
</div>