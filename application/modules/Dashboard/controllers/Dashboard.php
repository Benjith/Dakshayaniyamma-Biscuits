<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('mdl_login');
    }

	public function index()
	{
		//redirect to dashboard 
		$this->dashboard(); 
	}
	public function dashboard(){
		if($this->session->userdata('user')){
			//if "superuser found"
		return	$this->load->view('dashboard');
		}
		else {
			//if "no admin found"
		return	$this->load->view('login');

		}
	}
	public function login_check(){
     $data['userdata'] =$this->mdl_login->Login_check();
     if($data['userdata']==false){
     	$this->load->view('login',$data);
     }
     else{
     	redirect(base_url('index.php/Dashboard'),'refresh');
     }

	}
	function logout(){
		$this->session->unset_userdata('user');
		redirect(base_url(),'refresh');
	}
	function forgot_password(){
		//sent mail funtion
	$sent_to = $this->input->post("email_forgot");

	//redirect to login page
	redirect(site_url(),'refresh');

	}
}
