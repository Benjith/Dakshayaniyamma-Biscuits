<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mdl_login extends CI_Model {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        
    }


 function Login_check(){

 	$username = $this->input->post('UserName');
 	$password = $this->input->post("PassWord");
	
	$this->db->where('Name',$username);
	$this->db->where('Password',$password);
	$this->db->where('Status',1);
	$qry_getuserdata = $this->db->get('tbl_users');

	if($qry_getuserdata->num_rows() > 0){
		$this->session->set_userdata('usertype',$username);
		
		
		return true;
	}
	else {
		return false;
	}


 }

}
