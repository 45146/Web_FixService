<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome_model extends CI_Model
{

    public function add_member($data)
    {
        $this->db->insert('member', $data);
    }

    public function get_kategori()
    {
        $query = $this->db->get('service');
        return $query->result();
    }

    public function get_barang()
    {
        $query = $this->db->get('barang');
        return $query->result();
    }

    public function add_service($data)
    {
        $this->db->insert('service_order', $data);
    }

    public function login($username, $password)
    {
        $this->db->where('email_member', $username);
        $this->db->where('password_member', $password);
        $query = $this->db->get('member');
        if ($query->num_rows() > 0) {
            return $query->row();
        } else {
            return false;
        }
    }
    public function get_track_service()
    {
        $this->db->select('Nama_service, deskripsi, waktu_service, pegawai, status');
        $this->db->from('service');
        $this->db->join('service_order', 'service_order.service = service.ID_service');
        $this->db->where('email_client', $this->session->userdata('email'));
        $query = $this->db->get();
        return $query->result();
        var_dump($query->result());
    }
    
}
