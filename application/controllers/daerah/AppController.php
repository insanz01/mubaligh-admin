<?php
defined('BASEPATH') or exit('No direct script access allowed');

class AppController extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();

    if (!$this->session->userdata('SESS_MUBALIGH_NAME')) {
      redirect("auth/login");
    } else {
      if ($this->session->userdata('SESS_MUBALIGH_ROLEID') != 1) {
        redirect("wilayah/dashboard");
      }
    }

    $this->load->model("PemohonModel", "pemohon_m");
    $this->load->model("MubalikModel", "mubalik_m");
    $this->load->model("PenempatanModel", "penempatan_m");
  }

  public function index()
  {
    $this->load->view("templates/admin/panel/header");
    $this->load->view("templates/admin/panel/sidebar");
    $this->load->view("templates/admin/panel/navbar");
    $this->load->view("app/daerah/dashboard");
    $this->load->view("templates/admin/panel/footer");
  }

  public function pemohonan()
  {
    $data['pemohon'] = $this->pemohon_m->get_pemohon();

    $this->load->view("templates/admin/panel/header");
    $this->load->view("templates/admin/panel/sidebar");
    $this->load->view("templates/admin/panel/navbar");
    $this->load->view("app/daerah/pemohonan/index", $data);
    $this->load->view("templates/admin/panel/footer");
  }

  public function mubalik()
  {
    $data['mubaligh'] = $this->mubalik_m->get_mubaligh();

    $this->load->view("templates/admin/panel/header");
    $this->load->view("templates/admin/panel/sidebar");
    $this->load->view("templates/admin/panel/navbar");
    $this->load->view("app/daerah/mubalik/index", $data);
    $this->load->view("templates/admin/panel/footer");
  }

  public function update_mubalik()
  {
    $data = [
      'preacher_id' => $this->input->post('id'),
      'kompetensi' => $this->input->post('kompetensi'),
      'pendidikan' => $this->input->post('pendidikan'),
      'pengalaman' => $this->input->post('pengalaman'),
      'usia' => $this->input->post('usia'),
      'public_speaking' => $this->input->post('public_speaking'),
      'keagamaan' => $this->input->post('keagamaan')
    ];

    if ($this->mubalik_m->mubalik_update($data)) {
      $this->session->set_flashdata("pesan", "<div class='alert alert-success' role='alert'>Data mubaligh berhasil diupdate.</div>");
    } else {
      $this->session->set_flashdata("pesan", "<div class='alert alert-danger' role='alert'>Data mubaligh gagal diupdate.</div>");
    }

    redirect('daerah/mubalik');
  }

  public function penempatan()
  {
    $data['pemohon'] = $this->penempatan_m->get_pemohon();
    $data['penempatan'] = $this->penempatan_m->get_penempatan();

    $this->load->view("templates/admin/panel/header");
    $this->load->view("templates/admin/panel/sidebar");
    $this->load->view("templates/admin/panel/navbar");
    $this->load->view("app/daerah/penempatan/index", $data);
    $this->load->view("templates/admin/panel/footer");
  }

  public function add_penempatan()
  {
    $id_pemohon = $this->input->post('id_pemohon');
    $data = [
      'applicant_id' => $id_pemohon,
      'kompetensi' => $this->input->post('kompetensi') / 100,
      'pengalaman' => $this->input->post('pengalaman') / 100,
      'pendidikan' => $this->input->post('pendidikan') / 100,
      'usia' => $this->input->post('usia') / 100,
      'public_speaking' => $this->input->post('public_speaking') / 100,
      'keagamaan' => $this->input->post('keagamaan') / 100,
      'jenis_kelamin' => $this->input->post('jenis_kelamin')
    ];

    $insert_id = $this->penempatan_m->add_penempatan($data);

    if ($insert_id) {
      $this->session->set_flashdata("pesan", "<div class='alert alert-success' role='alert'>Data penempatan berhasil ditambahkan.</div>");
    } else {
      $this->session->set_flashdata("pesan", "<div class='alert alert-danger' role='alert'>Data penempatan gagal ditambahkan.</div>");
    }

    redirect("daerah/penempatan/list/" . $insert_id);
  }

  public function list_penempatan($id)
  {
    $penempatan = $this->penempatan_m->get_penempatan_by_id($id);
    $mubaligh = $this->mubalik_m->get_mubaligh_by_filter($penempatan['jenis_kelamin']);

    $rekomendasi = $this->SAW($penempatan, $mubaligh);

    $data_terpilih = [];
    foreach ($rekomendasi as $r) {
      $m = $this->mubalik_m->get_mubalik_by_id($r['mubaligh_id']);
      $temp = [
        'id' => $m['id'],
        'nama' => $m['nama'],
        'skor' => $r['skor']
      ];

      array_push($data_terpilih, $temp);
    }

    $data['mubaligh'] = $data_terpilih;
    $data['penempatan'] = $penempatan;

    $this->load->view("templates/admin/panel/header");
    $this->load->view("templates/admin/panel/sidebar");
    $this->load->view("templates/admin/panel/navbar");
    $this->load->view("app/daerah/penempatan/list", $data);
    $this->load->view("templates/admin/panel/footer");
  }

  private function normalize($data, $kriteria)
  {
    $result = [];
    if ($kriteria == "benefit") {
      $max = max($data);

      foreach ($data as $dt) {
        $calculate = $dt / $max;
        array_push($result, $calculate);
      }
    } else {
      $min = min($data);

      foreach ($data as $dt) {
        $calculate = $min / $dt;
        array_push($result, $calculate);
      }
    }

    return $result;
  }

  private function ranking($data, $w)
  {
    $result = [];

    foreach ($data as $dt) {
      $idx = 0;
      $total = 0;
      foreach ($dt['alternatif'] as $d) {
        $total += $d * $w[$idx];
        $idx++;
      }
      $temp = [
        'mubaligh_id' => $dt['mubaligh_id'],
        'skor' => $total
      ];

      array_push($result, $temp);
    }

    return $result;
  }

  private function sort_ranking($data)
  {
    $skor = array_column($data, "skor");
    array_multisort($skor, SORT_DESC, $data);

    return $data;
  }

  public function SAW($penempatan, $mubaligh)
  {
    $bobot = [
      'kompetensi' => $penempatan['kompetensi'],
      'pendidikan' => $penempatan['pendidikan'],
      'usia' => $penempatan['usia'],
      'pengalaman' => $penempatan['pengalaman'],
      'public_speaking' => $penempatan['public_speaking'],
      'keagamaan' => $penempatan['keagamaan']
    ];

    $normalisasi = [];

    // normalization
    foreach ($mubaligh as $m) {
      $skill = $this->mubalik_m->get_skill($m['id']);
      $alternatif = [$skill['kompetensi'], $skill['pendidikan'], $skill['usia'], $skill['pengalaman'], $skill['public_speaking'], $skill['keagamaan']];

      $normalize_alternatif = $this->normalize($alternatif, "benefit");

      $temp = [
        'mubaligh_id' => $m['id'],
        'alternatif' => $normalize_alternatif
      ];

      array_push($normalisasi, $temp);
    }

    // ranking
    $arr_bobot = [
      $bobot['kompetensi'],
      $bobot['pendidikan'],
      $bobot['usia'],
      $bobot['pengalaman'],
      $bobot['public_speaking'],
      $bobot['keagamaan']
    ];

    $ranking = $this->ranking($normalisasi, $arr_bobot);

    $sort_ranking = $this->sort_ranking($ranking);

    return $sort_ranking;
  }
}
