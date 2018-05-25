<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class FinancialStatements extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('Mdl_FinancialStatement');
        
    }

	public function index()
	{
		echo "FinancialStatement";
	}
	
	
}
