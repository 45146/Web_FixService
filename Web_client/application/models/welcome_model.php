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
        $this->db->select('Nama_service, deskripsi, waktu_service, worker.nama_worker as pegawai, status_service.status as status');
        $this->db->from('service_order');
        $this->db->join('service', 'service_order.service = service.ID_service');
        $this->db->join('worker','worker.id_worker=service_order.pegawai');
        $this->db->join('status_service','status_service.id=service_order.status');
        $this->db->where('email_client', $this->session->userdata('email'));
        $query = $this->db->get();
        return $query->result();
        // var_dump($query->result());
    }
    
}
