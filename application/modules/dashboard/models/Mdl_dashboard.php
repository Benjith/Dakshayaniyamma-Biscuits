<?php
defined('BASEPATH') OR exit('No direct script access allowed'); 

class Mdl_dashboard extends CI_Model {

	function __construct(){
		parent::__construct();
		$this->load->database();
        $this->load->library('session');
	}

	function sidebar_getmainmodules($userId){
		 $this->db->where('userId',$userId);
		 $this->db->where('subModule',1);
        $query=$this->db->get('mainmodule_tbl');
        return $query->result();

	}

	function get_submodule($mainmoduleid){
		$this->db->where('mainModuleId',$mainmoduleid);
		$this->db->where('isActive',1);
		$querysub = $this->db->get('submodule_tbl');
		return $querysub->result();


	}

} 
?>