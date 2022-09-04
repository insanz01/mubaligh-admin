<?php

class MubalikModel extends CI_Model
{
  public function __construct()
  {
    parent::__construct();
  }

  public function get_mubaligh()
  {
    $query = "SELECT preachers.id, preachers.name as nama, preachers.email, preachers.birth_place as tempat_lahir, preachers.phone_number as kontak_person, preachers.birth_date as tanggal_lahir, preachers.address as alamat, preachers.age as umur, competences.name as kompetensi, districts.name as kabupaten, provinces.name as provinsi FROM preachers JOIN competences ON preachers.competence_id JOIN districts ON preachers.districts_id = districts.id JOIN provinces ON districts.province_id = provinces.id GROUP BY preachers.id;";

    return $this->db->query($query)->result_array();
  }

  public function get_mubalik_by_id($id)
  {
    $query = "SELECT preachers.id, preachers.name as nama, preachers.email, preachers.birth_place as tempat_lahir, preachers.phone_number as kontak_person, preachers.birth_date as tanggal_lahir, preachers.address as alamat, preachers.age as umur, competences.name as kompetensi, districts.name as kabupaten, provinces.name as provinsi FROM preachers JOIN competences ON preachers.competence_id JOIN districts ON preachers.districts_id = districts.id JOIN provinces ON districts.province_id = provinces.id WHERE preachers.id = $id";

    return $this->db->query($query)->row_array();
  }

  public function mubalik_update($data)
  {
    $updateData = [
      'kompetensi' => $data['kompetensi'],
      'pendidikan' => $data['pendidikan'],
      'pengalaman' => $data['pengalaman'],
      'usia' => $data['usia'],
      'public_speaking' => $data['public_speaking'],
      'keagamaan' => $data['keagamaan']
    ];
    $mubalikId = $data['preacher_id'];

    $exist = $this->db->get_where('preachers_skill', ['preacher_id' => $mubalikId])->row_array();

    if ($exist) {
      $this->db->set($updateData);
      $this->db->where('preacher_id', $mubalikId);
      $this->db->update('preachers_skill');

      return $this->db->affected_rows();
    } else {
      return $this->db->insert('preachers_skill', $data);
    }
  }

  public function get_mubaligh_by_filter($filter_kelamin)
  {
    $kelamin = ($filter_kelamin == "pr") ? 2 : 1; // ternary operation

    return $this->db->get_where('preachers', ['gender_id' => $kelamin])->result_array();
  }

  public function get_skill($id)
  {
    return $this->db->get_where("preachers_skill", ['preacher_id' => $id])->row_array();
  }
}
