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

        ///select * from user_tbl t1 inner join company_tbl t2 on t2.companyId=t1.companyId

    }
?>
