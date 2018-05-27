<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class General extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('Mdl_General');
        $this->load->model('Dashboard/Mdl_dashboard');
				$this->load->model('Mdl_Company');
        $this->load->model('Mdl_Users');

    }

	public function index()
	{
		if($this->session->userdata('userName')){
			//if "superuser found"
		return	$this->load->view('General/dashboard');
		}
		else {
			//if "no admin found"
		return	$this->load->view('Dashboard/login');

		}
	}

	public function Company()
    {		
        if($this->input->server('REQUEST_METHOD') == 'GET'){
			if($this->session->userdata('userId')){
				$data['info']=$this->Mdl_Users->getCompanyByUserId($_SESSION['userId']);
				return $this->load->view('company',$data);
			}
		}
		else if($this->input->server('REQUEST_METHOD') == 'POST'){						
			// $data['info']=$this->Mdl_Users->getCompanyByUserId($_SESSION['userId']);						
			// $cmpInfo=array();
			
			// $cmpInfo["companyId"]=$info[0]->companyId;			
			// $cmpInfo['companyName']= $this->input->post('companyName');
			// $cmpInfo['city']=$this->input->post('city');
			// $cmpInfo['gstIn']=$this->input->post('gstIn');
			// $cmpInfo['phone']=$this->input->post('phone');
			// $cmpInfo['email']=$this->input->post('email');
			// $cmpInfo['pincode']=$this->input->post('pincode');
			// $cmpInfo['state']=$this->input->post('state');
			// $cmpInfo['printType']=$this->input->post('printType');
			// $cmpInfo['taxBill']=$this->input->post('taxBill');
			// $cmpInfo['isPreviousBalance']=$this->input->post('isPreviousBalance');
			// $cmpInfo['bankName']=$this->input->post('bankName');
			// $cmpInfo['accountNo']=$this->input->post('accountNo');
			// $cmpInfo['branchAndIfsCode']=$this->input->post('branchAndIfsCode');
			// $this->Mdl_Company->companyUpdate($cmpInfo);
			$status="Updated";
			echo $status;			
		}						
	}	
}
