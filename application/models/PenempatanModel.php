<?php

class PenempatanModel extends CI_Model
{
  public function __construct()
  {
    parent::__construct();
  }

  public function get_penempatan()
  {
    $query = "SELECT penempatan.id as penempatan_id, applicants.name as nama, applicants.address as alamat, applicants.phone_number as kontak_person, applicants.email, applicants.potencies as potensi, applicants.created_at as tanggal_permohonan, districts.name as kabupaten, provinces.name as provinsi FROM applicants JOIN districts ON applicants.district_id = districts.id JOIN provinces ON districts.province_id = provinces.id JOIN penempatan ON applicants.id = penempatan.applicant_id";

    return $this->db->query($query)->result_array();
  }

  public function get_pemohon()
  {
    $query = "SELECT applicants.id, applicants.name as nama, applicants.address as alamat, applicants.phone_number as kontak_person, applicants.email, applicants.potencies as potensi, applicants.created_at as tanggal_permohonan, districts.name as kabupaten, provinces.name as provinsi FROM applicants JOIN districts ON applicants.district_id = districts.id JOIN provinces ON districts.province_id = provinces.id";

    return $this->db->query($query)->result_array();
  }

  public function get_penempatan_by_id($id)
  {
    return $this->db->get_where("penempatan", ['id' => $id])->row_array();
  }

  public function add_penempatan($data)
  {
    $this->db->insert('penempatan', $data);

    return $this->db->insert_id();
  }
}
