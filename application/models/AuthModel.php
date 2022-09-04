<?php

class AuthModel extends CI_Model
{
  public function __construct()
  {
    parent::__construct();
  }

  public function login($data)
  {
    $user = $this->db->get_where("users", ["email" => $data['email']])->row_array();

    if (password_verify($data['password'], $user['password'])) {
      $role_id = $user['role_id'];
      $this->session->set_userdata("SESS_MUBALIGH_NAME", $user['name']);
      $this->session->set_userdata("SESS_MUBALIGH_EMAIL", $user['email']);
      $this->session->set_userdata("SESS_MUBALIGH_ROLEID", $role_id);

      return true;
    } else {
      return false;
    }
  }
}
