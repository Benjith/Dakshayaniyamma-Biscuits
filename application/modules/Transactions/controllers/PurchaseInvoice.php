<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class PurchaseInvoice extends MX_Controller {

function __construct(){
	parent::__construct();
	$this->load->database();
	$this->load->library('session');
	$this->load->model('Transactions/Mdl_purchaseInvoice');
	$this->load->model('Dashboard/Mdl_dashboard');
	$this->load->model('Common/Mdl_Common');
}

 function index(){
 	$this->load->view('PurchaseInvoice');
 }



}
?>
