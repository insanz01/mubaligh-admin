<div class="content-wrapper">

  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Penempatan</h1>
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
              <h5>PENEMPATAN</h5>
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
                        <th>Tanggal</th>
                        <th>Nama Pemohon</th>
                        <th>Kabupaten</th>
                        <th>Provinsi</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php foreach ($penempatan as $p) : ?>
                        <tr>
                          <td><?= $p['tanggal_permohonan'] ?></td>
                          <td><?= $p['nama'] ?></td>
                          <td><?= $p['kabupaten'] ?></td>
                          <td><?= $p['provinsi'] ?></td>
                          <td>
                            <a href="<?= base_url('daerah/penempatan/list/') . $p['penempatan_id'] ?>" class="badge badge-sm badge-pill" role="button">
                              <i class="fas fa-fw fa-eye"></i>
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

<!-- Modal -->
<div class="modal fade" id="tambahModal" tabindex="-1" aria-labelledby="tambahModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="min-width: 80%">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="tambahModalLabel">Tambah Penempatan Pemohon</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?= base_url("daerah/penempatan/add") ?>" method="post">
        <div class="modal-body">
          <div class="row">
            <div class="col-6">
              <div class="form-group">
                <label for="pemohon">Pemohon Penempatan</label>
                <select name="id_pemohon" id="" class="form-control" onchange="pilihPemohon(this)">
                  <option value="">-PILIH PEMOHON-</option>
                  <?php foreach ($pemohon as $pohon) : ?>
                    <option value="<?= $pohon['id'] ?>"><?= $pohon['nama'] ?></option>
                  <?php endforeach ?>
                </select>
              </div>
              <div class="form-group">
                <div class="card">
                  <div class="card-body">
                    <h5>DATA PEMOHON PENEMPATAN</h5>
                    <table class="table">
                      <thead>
                        <tr>
                          <th>Key</th>
                          <th>Value</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Tanggal Permohonan</td>
                          <td id="pemohon-tanggal"></td>
                        </tr>
                        <tr>
                          <td>Nama</td>
                          <td id="pemohon-nama"></td>
                        </tr>
                        <tr>
                          <td>Alamat</td>
                          <td id="pemohon-alamat"></td>
                        </tr>
                        <tr>
                          <td>Kabupaten</td>
                          <td id="pemohon-kabupaten"></td>
                        </tr>
                        <tr>
                          <td>Provinsi</td>
                          <td id="pemohon-provinsi"></td>
                        </tr>
                        <tr>
                          <td>Email</td>
                          <td id="pemohon-email"></td>
                        </tr>
                        <tr>
                          <td>Nomor HP</td>
                          <td id="pemohon-hp"></td>
                        </tr>
                        <tr>
                          <td>Potensi</td>
                          <td id="pemohon-potensi"></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-6">
              <h4>DATA MUBALIGH YANG DIINGINKAN</h4>
              <div class="form-group">
                <label for="">Kompetensi Mubaligh</label>
                <input type="number" class="form-control" name="kompetensi">
                <!-- <select name="kompetensi" id="" class="form-control">
                  <option value="1">Sangat tidak dibutuhkan</option>
                  <option value="2">Tidak dibutuhkan</option>
                  <option value="3">Cukup dibutuhkan</option>
                  <option value="4">Dibutuhkan</option>
                  <option value="5">Sangat dibutuhkan</option>
                </select> -->
              </div>
              <div class="form-group">
                <label for="">Pengalaman Mubaligh</label>
                <input type="number" class="form-control" name="pengalaman">
                <!-- <select name="pendidikan" id="" class="form-control">
                  <option value="1">1 - 2 Kemasyarakatan</option>
                  <option value="2">3 - 4 Kemasyarakatan</option>
                  <option value="3">5 - 6 Kemasyarakatan</option>
                  <option value="4">7 - 8 Kemasyarakatan</option>
                  <option value="5">Diatas 9 Kemasyarakatan</option>
                </select> -->
              </div>
              <div class="form-group">
                <label for="">Pendidikan Mubaligh</label>
                <input type="number" class="form-control" name="pendidikan">
                <!-- <select name="pendidikan" id="" class="form-control">
                  <option value="1">SD</option>
                  <option value="1">SMP</option>
                  <option value="1">SMA</option>
                  <option value="2">D1-D4</option>
                  <option value="3">S1</option>
                  <option value="4">S2</option>
                  <option value="5">S3</option>
                </select> -->
              </div>
              <div class="form-group">
                <label for="">Usia Mubaligh</label>
                <input type="number" class="form-control" name="usia">
                <!-- <select name="usia" id="" class="form-control">
                  <option value="1">&gt; 30</option>
                  <option value="2">27 &ge; X &le; 30</option>
                  <option value="3">24 &ge; X &le; 26</option>
                  <option value="4">21 &ge; X &le; 23</option>
                  <option value="5">18 &ge; X &le; 20</option>
                </select> -->
              </div>
              <div class="form-group">
                <label for="">Fasih Berbicara Mubaligh</label>
                <input type="number" class="form-control" name="public_speaking">
                <!-- <select name="public_speaking" id="" class="form-control">
                  <option value="1">Sangat tidak dibutuhkan</option>
                  <option value="2">Tidak dibutuhkan</option>
                  <option value="3">Cukup dibutuhkan</option>
                  <option value="4">Dibutuhkan</option>
                  <option value="5">Sangat dibutuhkan</option>
                </select> -->
              </div>
              <div class="form-group">
                <label for="">Paham Keagamaan</label>
                <input type="number" class="form-control" name="keagamaan">
                <!-- <select name="keagamaan" id="" class="form-control">
                  <option value="1">Sangat tidak dibutuhkan</option>
                  <option value="2">Tidak dibutuhkan</option>
                  <option value="3">Cukup dibutuhkan</option>
                  <option value="4">Dibutuhkan</option>
                  <option value="5">Sangat dibutuhkan</option>
                </select> -->
              </div>

              <!-- jenis kelamin hanya untuk filter -->
              <div class="form-group">
                <label for="">Jenis Kelamin</label>
                <select name="jenis_kelamin" id="" class="form-control">
                  <option value="lk">Laki-laki</option>
                  <option value="pr">Perempuan</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  const getPemohon = async (id) => {
    return axios.get(`<?= base_url('api/pemohon/') ?>${id}`).then(res => res.data);
  }

  const pilihPemohon = async (target) => {
    const id = target.value;
    const result = await getPemohon(id);

    console.log(result);
    if (result.status == "ok") {
      document.getElementById('pemohon-tanggal').innerText = result.data.tanggal_permohonan;
      document.getElementById('pemohon-nama').innerText = result.data.nama;
      document.getElementById('pemohon-alamat').innerText = result.data.alamat;
      document.getElementById('pemohon-kabupaten').innerText = result.data.kabupaten;
      document.getElementById('pemohon-provinsi').innerText = result.data.provinsi;
      document.getElementById('pemohon-email').innerText = result.data.email;
      document.getElementById('pemohon-hp').innerText = result.data.kontak_person;
      document.getElementById('pemohon-potensi').innerText = result.data.potensi;
    }
  }
</script>