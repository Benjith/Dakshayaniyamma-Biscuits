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
			if(isset($_SESSION['userId'])){				
				$companyId=$this->Mdl_Users->getCompanyIdByUserId($_SESSION['userId']);
				$taxBill=$this->input->post('taxBill')=="Yes"?1:0;
				$isPreviousBalance=$this->input->post('isPreviousBalance')=="Yes"?1:0;
				$cmpInfo = array('companyName'=>$this->input->post('companyName'),
				'city'=>$this->input->post('city'),
				'address'=>$this->input->post('address'),
				'gstIn'=>$this->input->post('gstIn'),
				'phone'=>$this->input->post('phone'),
				'email'=>$this->input->post('email'),
				'pincode'=>$this->input->post('pincode'),
				'state'=>$this->input->post('state'),
				'printType'=>$this->input->post('printType'),
				'taxBill'=>$taxBill,
				'isPreviousBalance'=>$isPreviousBalance,
				'bankName'=>$this->input->post('bankName'),
				'accountNo'=>$this->input->post('accountNo'),
				'branchAndIfsCode'=>$this->input->post('branchAndIfsCode')
			);
				$this->Mdl_Company->companyUpdate($companyId,$cmpInfo);
				echo "Updated successfully";
			}
		}						
	}	

}
