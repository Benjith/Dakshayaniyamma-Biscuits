<?php
defined('BASEPATH') OR exit('No direct script access allowed');
    class Mdl_Users extends CI_Model{

        function __construct(){
            parent::__construct();
            $this->load->database();
            $this->load->library('session');
        }

        function getCompanyByUserId($userId){
            $this->db->where('userId',$userId);
            $this->db->join('company_tbl','company_tbl.companyId=user_tbl.companyId');
            $query=$this->db->get('user_tbl');
            return $query->result();
        }
        function getCompanyIdByUserId($userId){
            $this->db->select('companyId');
            $this->db->from('user_tbl');
            $this->db->where('userId',$userId);
            return $this->db->get()->row()->companyId;
        }        
    }
?>
