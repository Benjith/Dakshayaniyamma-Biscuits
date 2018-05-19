<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MX_Controller {

	function __construct(){
		parent::construct();
		$this->load->database();
	}
	public function index()
	{
		$this->load->view('welcome_message');
	}
}
