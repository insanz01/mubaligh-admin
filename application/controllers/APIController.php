<?php

// AJAX -> ASYNCHRONOUS JAVASCRIPT AND XML
class APIController extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();

    $this->load->model("PemohonModel", "pemohon_m");
    $this->load->model("MubalikModel", "mubalik_m");
  }

  public function pemohon($id = NULL)
  {
    $result = [
      'code' => 400,
      'status' => "not_found",
      "data" => NULL
    ];

    if ($id) {
      $data = $this->pemohon_m->get_pemohon_by_id($id);

      $result = [
        'code' => 200,
        'status' => "ok",
        "data" => $data
      ];
    }

    echo json_encode($result, JSON_PRETTY_PRINT);
  }

  public function mubalik($id = NULL, $args = NULL)
  {
    $result = [
      'code' => 400,
      'status' => "not_found",
      "data" => NULL
    ];

    if ($args == "skill" && $id != NULL) {
      $data = $this->mubalik_m->get_skill($id);

      $result = [
        'code' => 200,
        'status' => "ok",
        "data" => $data
      ];
    } else if ($id) {
      $data = $this->mubalik_m->get_mubalik_by_id($id);

      $result = [
        'code' => 200,
        'status' => "ok",
        "data" => $data
      ];
    }

    echo json_encode($result, JSON_PRETTY_PRINT);
  }
}
