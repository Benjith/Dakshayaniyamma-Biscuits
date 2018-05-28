<?php
defined('BASEPATH') or exit('No direct script access allowed');

class General extends MX_Controller
{

    public function __construct()
    {
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
        if ($this->session->userdata('userName')) {
            //if "superuser found"
            return $this->load->view('General/dashboard');
        } else {
            //if "no admin found"
            return $this->load->view('Dashboard/login');

        }
    }

    public function Company()
    {
        if ($this->input->server('REQUEST_METHOD') == 'GET') {
            if ($this->session->userdata('userId')) {
                $data['info'] = $this->Mdl_Users->getCompanyByUserId($_SESSION['userId']);
                return $this->load->view('company', $data);
            }
        } else if ($this->input->server('REQUEST_METHOD') == 'POST') {
            if (isset($_SESSION['userId'])) {
                $companyId = $this->Mdl_Users->getCompanyIdByUserId($_SESSION['userId']);
                $taxBill = $this->input->post('taxBill') == "Yes" ? 1 : 0;
                $isPreviousBalance = $this->input->post('isPreviousBalance') == "Yes" ? 1 : 0;
                $cmpInfo = array('companyName' => $this->input->post('companyName'),
                    'city' => $this->input->post('city'),
                    'address' => $this->input->post('address'),
                    'gstIn' => $this->input->post('gstIn'),
                    'phone' => $this->input->post('phone'),
                    'email' => $this->input->post('email'),
                    'pincode' => $this->input->post('pincode'),
                    'state' => $this->input->post('state'),
                    'printType' => $this->input->post('printType'),
                    'taxBill' => $taxBill,
                    'isPreviousBalance' => $isPreviousBalance,
                    'bankName' => $this->input->post('bankName'),
                    'accountNo' => $this->input->post('accountNo'),
                    'branchAndIfsCode' => $this->input->post('branchAndIfsCode'),
                );
                $this->Mdl_Company->companyUpdate($companyId, $cmpInfo);
                echo "Updated successfully";
            }
        }
    }
    public function Users()
    {
        if ($this->input->server('REQUEST_METHOD') == 'GET') {
            $data['userData'] = $this->Mdl_Users->userViewAll();
            $data['userInfo'] = array('userId' => 0, 'username' => '', 'userType' => 'User', 'email' => '', 'password' => '');
            return $this->load->view('users', $data);
        } else if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $msg = "";
            $userInfo = array('userName' => $this->input->post('username'),
                'email' => $this->input->post('email'),
                'userType' => $this->input->post('userType'),
                'password' => $this->input->post('password'),
            );
            $userId = $this->input->post('userId');
            if ($userId == 0) {
                $this->Mdl_Users->userAdd($userInfo);
                $msg = "Saved successfully";
            } else if ($userId > 0) {
                $this->Mdl_Users->userUpdate($userId, $userInfo);
                $msg = "Updated successfully";
            }
            echo $msg;
        }
    }

    public function userViewById()
    {
        $userId = $this->input->post('userId');
        $row = $this->Mdl_Users->userViewById($userId);
        echo json_encode($row);
    }

    public function userDeleteById()
    {
        $userId = $this->input->post('userId');
        $this->Mdl_Users->userDeleteById($userId);
        echo "Record deleted successfully";
    }

}
