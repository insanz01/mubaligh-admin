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
      if ($this->session->userdata('SESS_MUBALIGH_ROLEID') != 2) {
        redirect("daerah/dashboard");
      }
    }
  }

  public function index()
  {
    $this->load->view("templates/admin/panel/header");
    $this->load->view("templates/admin/panel/sidebar");
    $this->load->view("templates/admin/panel/navbar");
    $this->load->view("app/wilayah/dashboard");
    $this->load->view("templates/admin/panel/footer");
  }

  public function pemohonan()
  {
  }

  public function mubalik()
  {
  }

  public function penempatan()
  {
  }
}
