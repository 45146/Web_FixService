<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('welcome_model');
	}

	public function index()
	{
		$data = array(
			'kategori' => $this->welcome_model->get_kategori()
		);
		$this->load->view('welcome_message', $data);
	}

	public function shop()
	{
		$data = array(
			'barang' => $this->welcome_model->get_barang()
		);
		$this->load->view('shop', $data);
	}

	public function member_daftar()
	{
		$data = array(
			'nama_member' => $this->input->post('name'),
			'no_telpon_member' => $this->input->post('nohp'),
			'email_member' => $this->input->post('email'),
			'password_member' => $this->input->post('password'),
		);

		$this->welcome_model->add_member($data);
		redirect('');
	}

	public function service_daftar()
	{
		$sts = 0;
		$data = array(
			'ID_order'  => $this->input->post(''),
			'nama_client' => $this->input->post('name'),
			'no_telpon_client' => $this->input->post('nohp'),
			'email_client' => $this->input->post('email'),
			'alamat_service' => $this->input->post('alamat'),
			'waktu_service' => $this->input->post('waktu'),
			'service' => $this->input->post('kategori'),
			'deskripsi' => $this->input->post('deskripsi'),
			'status' => ($sts)
		);

		$this->welcome_model->add_service($data);
		redirect('');	
	}
}
