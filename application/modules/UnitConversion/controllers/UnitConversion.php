<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UnitConversion extends MX_Controller{
    function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');     
        $this->load->model('Dashboard/Mdl_dashboard');
        $this->load->model('Masters/Mdl_Masters');
        $this->load->model('Mdl_UnitConversion');
    }

    public function Conversions(){
        if ($this->input->server('REQUEST_METHOD') == 'GET') {
            $data['units']=$this->Mdl_Masters->fetchUnits();	
            $data['conversions']=$this->Mdl_UnitConversion->unitConversionViewAll();
            return $this->load->view('unitconversion',$data);
        }
    }

}