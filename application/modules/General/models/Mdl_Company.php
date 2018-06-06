<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Mdl_Company extends CI_Model{
    function __construct(){
		parent::__construct();
		$this->load->database();
        $this->load->library('session');
    }
    
    public function companyUpdate($companyId,$cmpInfo){      
        $this->db->where('companyId',$companyId);
        $this->db->update('company_tbl',$cmpInfo);
    }
}

?>
