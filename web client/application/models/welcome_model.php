<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome_model extends CI_Model {

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
}