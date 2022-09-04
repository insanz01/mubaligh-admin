<?php

class PemohonModel extends CI_Model
{
  public function __construct()
  {
    parent::__construct();
  }

  public function get_pemohon()
  {
    $query = "SELECT applicants.id, applicants.name as nama, applicants.address as alamat, applicants.phone_number as kontak_person, applicants.email, applicants.potencies as potensi, applicants.created_at as tanggal_permohonan, districts.name as kabupaten, provinces.name as provinsi FROM applicants JOIN districts ON applicants.district_id = districts.id JOIN provinces ON districts.province_id = provinces.id";

    return $this->db->query($query)->result_array();
  }

  public function get_pemohon_by_id($id)
  {
    $query = "SELECT applicants.id, applicants.name as nama, applicants.address as alamat, applicants.phone_number as kontak_person, applicants.email, applicants.potencies as potensi, applicants.created_at as tanggal_permohonan, districts.name as kabupaten, provinces.name as provinsi FROM applicants JOIN districts ON applicants.district_id = districts.id JOIN provinces ON districts.province_id = provinces.id WHERE applicants.id = $id";

    return $this->db->query($query)->row_array();
  }
}
