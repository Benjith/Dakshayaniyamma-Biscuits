<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class FinancialStatements extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('Mdl_FinancialStatement');
        $this->load->model('Dashboard/Mdl_dashboard');
        
    }

	 
	 function index(){ //session wise operating isset session-> dashboard ,else login page
		if($this->session->userdata('userName')){
			//if "superuser found"
		return	$this->load->view('FinancialStatements/dashboard');
		}
		else {
			//if "no admin found"
		return	$this->load->view('Dashboard/login');

		}
	}
	
}
