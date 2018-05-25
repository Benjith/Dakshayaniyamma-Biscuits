<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Masters extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('Mdl_Masters');
        $this->load->model('Dashboard/Mdl_dashboard');
    }

	public function index()
	{
		if($this->session->userdata('userName')){
			//if "superuser found"
		return	$this->load->view('Masters/dashboard');
		}
		else {
			//if "no admin found"
		return	$this->load->view('Dashboard/login');

		}
	}
	
	
}