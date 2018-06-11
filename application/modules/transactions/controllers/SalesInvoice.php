<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class SalesInvoice extends MX_Controller{
    function __construct(){
        parent::__construct();
        $this->load->database();
        $this->load->library('session');        
        $this->load->model('Dashboard/Mdl_dashboard');
        $this->load->model('common/Mdl_Common');
        $this->load->model('Mdl_salesinvoice');
    }

    function index(){
        $info['cashOrParty']=$this->Mdl_Common->CashOrPartySelectBill();
        $info['salesAccount']=$this->Mdl_Common->SalesSelectFill();        
        $info['productCode']=$this->Mdl_Common->ProductCodeSelectFill();
        $info['productName']=$this->Mdl_Common->ProductNameSelectFill();
        $info['unit']=$this->Mdl_Common->UnitSelectFill();
        $this->load->view('salesinvoice',$info);
    }
    
    function productViewById(){
        $productId=$this->input->post('productId');
        $info=$this->Mdl_salesinvoice->productViewById($productId);
        echo json_encode($info);        
    }
    
}
?>