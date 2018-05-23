<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('Mdl_login');
        $this->load->model('Mdl_dashboard');
    }

	public function index()
	{
		//redirect to dashboard 
		$this->dashboard(); 
	}
	public function dashboard(){ //session wise operating isset session dashboard ,else login page
		if($this->session->userdata('user')){
			//if "superuser found"
		return	$this->load->view('dashboard');
		}
		else {
			//if "no admin found"
		return	$this->load->view('login');

		}
	}
	public function login_check(){ //functions retrives two values 1-user type 2-userId
     $data['userdata'] =$this->Mdl_login->Login_check();
     
     if($data['userdata']==false){
     	$this->load->view('login',$data);
     }
     else{
     	redirect(base_url('index.php/Dashboard'),'refresh');
     }

	}
	function logout(){ //session destroy function
		$this->session->unset_userdata('user');
		$this->session->unset_userdata('userid');
		$this->session->unset_userdata('userytype');
		redirect(base_url(),'refresh');
	}
	function forgot_password(){ //forgot password form post data manipulation sent password through phpmail()
		//sent mail funtion
		//lorem function()

		
	$sent_to = $this->input->post("email_forgot");

	//redirect to login page
	redirect(site_url(),'refresh');

	}
	
}
