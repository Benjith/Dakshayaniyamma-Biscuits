<?php
defined('BASEPATH') OR exit('No direct script access allowed'); 

class Mdl_General extends CI_Model {

	function __construct(){
		parent::__construct();
		$this->load->database();
        $this->load->library('session');
	}

	

} 
?>