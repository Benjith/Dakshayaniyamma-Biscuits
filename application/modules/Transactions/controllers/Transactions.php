<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transactions extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('Mdl_Transactions');
        
    }

	public function index()
	{
		//redirect to dashboard 
		echo "Transactions";
	}
	
	
}
