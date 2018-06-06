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
	
	$this->db->where('userName',$username);
	$this->db->where('password',$password);	
	$qry_getuserdata = $this->db->get('user_tbl');
	
	if($qry_getuserdata->num_rows() > 0){
	$result=  $qry_getuserdata->result();
	$userid=  $result[0]->userId;
	$usertype=$result[0]->userType; 
		$this->session->set_userdata('userName',$username);
		$this->session->set_userdata('userId',$userid);
		$this->session->set_userdata('userType',$usertype);
		return true;
	}
	else {
		return false;
	}


 }

}

