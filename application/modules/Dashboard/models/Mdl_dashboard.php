<?php
defined('BASEPATH') OR exit('No direct script access allowed'); 

class Mdl_dashboard extends CI_Model {

	function __construct(){
		parent::__construct();
		$this->load->database();
        $this->load->library('session');
	}

	function sidebar_getmodules($usertype){
		/* $this->db->where($usertype,'1');
        $query=$this->db->get('tbl_modules');
        return $query->result();*/

	}

} 
?>