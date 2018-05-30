<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transactions extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('Transactions/Mdl_Transactions');
        $this->load->model('Dashboard/Mdl_dashboard');
        $this->load->model('Common/Mdl_Common');
        
    }

	public function index()
	{
		if($this->session->userdata('userName')){
			//if "superuser found"
		return	$this->load->view('Transactions/dashboard');
		}
		else {
			//if "no admin found"
		return	$this->load->view('Dashboard/login');

		}
	}

	function PaymentVoucher(){
		if($this->input->server('REQUEST_METHOD')=='GET'){
			
		}
	}
	function ReceiptVoucher(){
		$data['receiptvoucher']=$this->Mdl_Transactions->receiptvouchertblfetch();
		$data['bankorcash']=$this->Mdl_Common->BankAndCashSelectFill();
		$data['ledger']=$this->Mdl_Transactions->fetchLedgerDetails();
		

		$this->load->view('receipt_voucher',$data);

	}
	function addNewReceiptVoucher(){
		$this->Mdl_Transactions->addNewReceiptVoucher();
		redirect('Transactions/ReceiptVoucher','refresh');
		}

		function delReceiptVoucher(){
			
			$this->Mdl_Transactions->delReceiptVoucher();
		}

		function fetchVoucherWithId(){
			$this->Mdl_Transactions->fetchVoucherWithId();
		}



	}	