<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reports extends MX_Controller {

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
	
	
}
