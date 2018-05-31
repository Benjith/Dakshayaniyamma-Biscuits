<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Transactions extends MX_Controller {
	function __construct() {
<<<<<<< HEAD
parent::__construct();
$this->load->database();
$this->load->library('session');
$this->load->model('Transactions/Mdl_Transactions');
$this->load->model('Dashboard/Mdl_dashboard');
$this->load->model('Common/Mdl_Common');

}
=======
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('Transactions/Mdl_Transactions');
        $this->load->model('Dashboard/Mdl_dashboard');
        $this->load->model('Common/Mdl_Common');
        $this->load->model('Mdl_PaymentVoucher');
    }
    public function index()
    {
        if ($this->session->userdata('userName')) {
            //if "superuser found"
            return $this->load->view('Transactions/dashboard');
        } else {
            //if "no admin found"
            return $this->load->view('Dashboard/login');

<<<<<<< HEAD
        }
    }

    public function PaymentVoucher()
    {
        if ($this->input->server('REQUEST_METHOD') == 'GET') {
            $data['bankOrCash'] = $this->Mdl_Common->BankAndCashSelectFill();
            $data['ledger'] = $this->Mdl_Transactions->fetchLedgerDetails();
            $data['paymentGridData'] = $this->Mdl_PaymentVoucher->paymentVoucherGridFill();
            $this->load->view('paymentVoucher', $data);
        } else if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $paymentID = $this->input->post('paymentID');
			$msg = "";
			$paymentInfo = array('voucherDate' => $this->input->post('voucherDate'),
                    'ledgerFirst' => $this->input->post('cashOrBank'),
                    'ledgerSecond' => $this->input->post('account'),
                    'total' => $this->input->post('totalAmount'),
                    'description' => $this->input->post('description'));
            if ($paymentID == 0) {
                $this->Mdl_PaymentVoucher->paymentVoucherAdd($paymentInfo);
				$msg = "Saved successfully";							
            } else if ($paymentID > 0) {
                $this->Mdl_PaymentVoucher->paymentVoucherUpdate($paymentID, $paymentInfo);
                $msg = "Updated successfully";
            }
            echo $msg;
        }
    }

    public function paymentVoucherViewById()
    {
        $paymentID = $this->input->post('paymentID');
        echo json_encode($this->Mdl_PaymentVoucher->paymentVoucherViewById($paymentID));
	}
	function paymentVoucherDeleteById(){
		$paymentID = $this->input->post('paymentID');
		$msg=$this->Mdl_PaymentVoucher->paymentVoucherDeleteById($paymentID);
		echo $msg;
	}

    public function ReceiptVoucher()
    {
        $data['receiptvoucher'] = $this->Mdl_Transactions->receiptvouchertblfetch();
        $data['bankorcash'] = $this->Mdl_Common->BankAndCashSelectFill();
        $data['ledger'] = $this->Mdl_Transactions->fetchLedgerDetails();
        $this->load->view('receipt_voucher', $data);

    }
    public function addNewReceiptVoucher()
    {
        $this->Mdl_Transactions->addNewReceiptVoucher();
        redirect('Transactions/ReceiptVoucher', 'refresh');
    }

    public function delReceiptVoucher()
    {

        $this->Mdl_Transactions->delReceiptVoucher();
    }

    public function fetchVoucherWithId()
    {
        $this->Mdl_Transactions->fetchVoucherWithId();
    }

}
=======
>>>>>>> 89ad754f63212812402b936361a7f52f215ecfa8
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
			$data['bankOrCash']=$this->Mdl_Common->BankAndCashSelectFill();
			$data['ledger']=$this->Mdl_Transactions->fetchLedgerDetails();
			$data['paymentGridData']=$this->Mdl_PaymentVoucher->paymentVoucherGridFill();
			$this->load->view('paymentVoucher',$data);
		}
		else if($this->input->server('REQUEST_METHOD')=='POST'){
			// $paymentInfo=array('voucherDate'=>$this->input->post('voucherDate'),
			// 				'ledgerFirst'=>$this->input->post('bankOrCash'),
			// 				'ledgerSecond'=>$this->input->post('account'),
			// 				'total'=>$this->input->post('totalAmount'),
			// 				'description'=>$this->input->post('description'),
			// 				'user')
		}
	}
	function ReceiptVoucher(){
		$data['receiptvoucher']=$this->Mdl_Transactions->receiptvouchertblfetch();
		$data['bankorcash']=$this->Mdl_Common->BankAndCashSelectFill();
<<<<<<< HEAD
		$data['ledger']=$this->Mdl_Transactions->fetchLedgerDetails();
		
=======
		$data['ledger']=$this->Mdl_Transactions->fetchLedgerDetails();		
>>>>>>> 89ad754f63212812402b936361a7f52f215ecfa8
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
>>>>>>> ca17f0eb48001bdeecfd4841b42804b3d47c3522
