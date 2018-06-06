<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Mdl_Users extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
    }

    public function getCompanyByUserId($userId)
    {
        $this->db->where('userId', $userId);
        $this->db->join('company_tbl', 'company_tbl.companyId=user_tbl.companyId');
        $query = $this->db->get('user_tbl');
        return $query->result();
    }
    public function getCompanyIdByUserId($userId)
    {
        $this->db->select('companyId');
        $this->db->from('user_tbl');
        $this->db->where('userId', $userId);
        return $this->db->get()->row()->companyId;
    }
    public function userViewAll()
    {
        $this->db->where('userType is NOT NULL');
        $query = $this->db->get('user_tbl');
        return $data = $query->result();
    }
    public function userAdd($userInfo)
    {
        $this->db->insert('user_tbl', $userInfo);
    }
    public function userViewById($userId)
    {
        $this->db->where('userId', $userId);
        return $this->db->get('user_tbl')->row_array();
    }
    public function userUpdate($userId, $userInfo)
    {
        $this->db->where('userId', $userId);
        $this->db->update('user_tbl', $userInfo);
    }
    public function userDeleteById($userId)
    {
        $this->db->where('userId', $userId);
        $this->db->delete('user_tbl');
    }
}
