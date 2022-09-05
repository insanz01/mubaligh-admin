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
                  <h5>MUBALIGH</h5>
                </div>
                <div class="col-6">
                  <a class="btn btn-primary float-right" href="<?= base_url('daerah/mubalik/add_show') ?>">
                    <i class="fas fa-fw fa-plus"></i>
                  </a>
                </div>
              </div>
            </div>
            <div class="card-body">
              <table class="table table-striped custom-table">
                <thead>
                  <tr>
                    <th>Nama</th>
                    <th>TTL</th>
                    <th>Umur</th>
                    <th>Kontak Person</th>
                    <th>Provinsi</th>
                    <th>Kabupaten</th>
                    <th>Kompetensi</th>
                    <th>Action</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($mubaligh as $m) : ?>
                    <tr>
                      <td><?= $m['nama'] ?></td>
                      <td><?= $m['tempat_lahir'] ?>, <?= $m['tanggal_lahir'] ?></td>
                      <td><?= $m['umur'] ?></td>
                      <td>
                        <div class="row">
                          <div class="col-12">
                            <?= $m['email'] ?>
                          </div>
                          <div class="col-12">
                            <?= $m['kontak_person'] ?>
                          </div>
                        </div>
                      </td>
                      <td><?= $m['provinsi'] ?></td>
                      <td><?= $m['kabupaten'] ?></td>
                      <td><?= $m['kompetensi'] ?></td>
                      <td>
                        <a href="#" data-id="<?= $m['id'] ?>" onclick="showEdit(this)" class="badge badge-sm badge-pill" data-toggle="modal" data-target="#editModal">
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

<!-- Modal -->
<div class="modal fade" id="tambahModal" tabindex="-1" aria-labelledby="tambahModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="tambahModalLabel">Tambah Penempatan Pemohon</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group">
          <label for="pemohon">Pemohon Penempatan</label>
          <select name="" id="" class="form-control">
            <option value="">-PILIH PEMOHON-</option>
          </select>
        </div>
        <div class="form-group">
          <ul class="list-group">
            <li class="list-group-item">
              <div class="row">
                <div class="col-6">Key</div>
                <div class="col-6">Value</div>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
        <button type="button" class="btn btn-primary">Simpan Perubahan</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="min-width: 80%">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editModalLabel">Edit Kompetensi Mubaligh</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?= base_url('daerah/mubalik/update') ?>" method="post">
        <div class="modal-body">
          <!-- <div class="form-group">
            <label for="pemohon">Pemohon Penempatan</label>
            <select name="" id="" class="form-control">
              <option value="">-PILIH PEMOHON-</option>
            </select>
          </div> -->
          <input type="hidden" name="id" id="mubalik-id">
          <div class="row">
            <div class="col-6">
              <div class="form-group">
                <label for="">Kompetensi</label>
                <input type="number" min="0" class="form-control" name="kompetensi" id="kompetensi-edit" placeholder="Jumlah kompetensi">
                <small>Jumlah kompetensi yang dimiliki dari list kompetensi di samping</small>
              </div>
              <div class="form-group">
                <label for="">Pendidikan</label>
                <select name="pendidikan" id="pendidikan-edit" class="form-control">
                  <option value="1">SD</option>
                  <option value="1">SMP</option>
                  <option value="1">SMA</option>
                  <option value="2">D1-D4</option>
                  <option value="3">S1</option>
                  <option value="4">S2</option>
                  <option value="5">S3</option>
                </select>
              </div>
              <div class="form-group">
                <label for="">Pengalaman</label>
                <input type="number" min="0" class="form-control" name="pengalaman" id="pengalaman-edit" placeholder="Jumlah pengalaman">
                <small>Jumlah pengalaman, terjun ke masyarakat</small>
              </div>
              <div class="form-group">
                <label for="">Usia</label>
                <input type="number" min="18" value="18" class="form-control" name="usia" id="usia-edit" placeholder="Usia">
              </div>
              <div class="form-group">
                <label for="">Bahasa yang dikuasai</label>
                <input type="number" min="0" class="form-control" name="public_speaking" id="public_speaking-edit" placeholder="Bahasa yang dikuasai">
                <small>Jumlah bahasa yang dimiliki dari list bahasa di samping</small>
              </div>
              <div class="form-group">
                <label for="">Paham Keagamaan</label>
                <select name="keagamaan" id="keagamaan-edit" class="form-control">
                  <option value="1">Tidak Paham</option>
                  <option value="3">Lumayan</option>
                  <option value="5">Paham</option>
                </select>
              </div>
            </div>
            <div class="col-6">
              <div class="form-group">
                <h5>Kompetensi</h5>
                <ul>
                  <li>Kesehatan</li>
                  <li>Ekonomi</li>
                  <li>Budaya</li>
                  <li>Informatika</li>
                </ul>

                <hr>

                <h5>Bahasa</h5>
                <ul>
                  <li>Bisa berbahasa daerah</li>
                  <li>Bisa berbahasa daerah (jawa)</li>
                  <li>Bisa berbahasa Indonesia dengan baik</li>
                  <li>Bisa berbahasa Arab</li>
                </ul>

                <hr>

                <h5>Paham Keagamaan</h5>
                <p>Poin yang menjadi tolak ukur paham agama adalah :</p>
                <ul>
                  <li>Bisa baca alquran</li>
                  <li>Paham sunnah nabi</li>
                  <!-- <li>Paham kemuhammadiyahan</li> -->
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
          <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  const getMubalik = async (id) => {
    return await axios.get(`<?= base_url('api/mubalik/') ?>${id}`).then(res => res.data);
  }

  const getMubalikSkill = async (id) => {
    return await axios.get(`<?= base_url('api/mubalik/') ?>${id}/skill`).then(res => res.data);
  }

  const showEdit = async (target) => {
    const id = target.getAttribute('data-id');
    const mubalikResult = await getMubalik(id);
    const skillMubalikResult = await getMubalikSkill(id);

    document.getElementById('mubalik-id').value = id;

    console.log(mubalikResult);
    console.log(skillMubalikResult);
    if (mubalikResult.status == "ok") {
      if (skillMubalikResult.code) {
        document.getElementById('usia-edit').value = skillMubalikResult.data.usia;
        document.getElementById('kompetensi-edit').value = skillMubalikResult.data.kompetensi;
        document.getElementById('keagamaan-edit').value = skillMubalikResult.data.keagamaan;
        document.getElementById('pendidikan-edit').value = skillMubalikResult.data.pendidikan;
        document.getElementById('pengalaman-edit').value = skillMubalikResult.data.pengalaman;
        document.getElementById('public_speaking-edit').value = skillMubalikResult.data.public_speaking;
      }
    }
  }
</script>