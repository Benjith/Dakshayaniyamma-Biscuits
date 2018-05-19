<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
    }

	public function index()
	{
		//redirect to dashboard 
		$this->dashboard(); 
	}
	public function dashboard(){
		if($this->session->userdata('superuser')){
			echo "superuser found";
		}
		else {
			echo "no admin found";
		}
	}
}
