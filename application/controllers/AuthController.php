<?php

class AuthController extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();

    $this->load->model("AuthModel", 'auth_m');
  }

  public function index()
  {
    redirect('auth/login');
  }

  public function login()
  {
    if ($this->session->userdata("SESS_MUBALIGH_NAME")) {
      if ($this->session->userdata('SESS_MUBALIGH_ROLEID') == 1) {
        redirect("daerah/dashboard");
      } else {
        redirect("wilayah/dashboard");
      }
    }

    $this->load->view("templates/admin/auth/header");
    $this->load->view("auth/login");
    $this->load->view("templates/admin/auth/footer");
  }

  public function do_login()
  {
    $data = [
      'email' => $this->input->post('email'),
      'password' => $this->input->post('password')
    ];

    if ($this->auth_m->login($data)) {
      if ($this->session->userdata('SESS_MUBALIGH_ROLEID') == 1) {
        redirect("daerah/dashboard");
      } else {
        redirect("wilayah/dashboard");
      }
    } else {
      redirect("auth/login");
    }
  }

  // public function register()
  // {
  // }

  public function logout()
  {
    $this->session->unset_userdata("SESS_MUBALIGH_NAME");
    $this->session->unset_userdata("SESS_MUBALIGH_EMAIL");
    $this->session->unset_userdata("SESS_MUBALIGH_ROLEID");

    redirect("auth/login");
  }
}
