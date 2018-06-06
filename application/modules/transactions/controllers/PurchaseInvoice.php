<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class PurchaseInvoice extends MX_Controller {

function __construct(){
	parent::__construct();
	$this->load->database();
	$this->load->library('session');
	$this->load->model('transactions/Mdl_purchaseInvoice');
	$this->load->model('dashboard/Mdl_dashboard');
	$this->load->model('common/Mdl_Common');
}

 function index(){
 	$data['cashorbill']=$this->Mdl_Common->CashOrPartySelectBill();
 	$data['selectbill']=$this->Mdl_Common->purchaseSelectBill();
 	$data['product']=$this->Mdl_purchaseInvoice->getProducts();
 	$this->load->view('PurchaseInvoice',$data);
 }

 function addNewPurchaseInvoiceForm(){

  	$date=date('d/m/Y');
 	$cashorbill=$this->input->post('cashorbill');
 	$purchaseac=$this->input->post('purchaseac');
 	$gstin=$this->input->post('gstin');
 	$invoiceno=$this->input->post('invoiceno');
 	//table_datas
 	$slno=$this->input->post('slNo[]');
 	$code=$this->input->post('code[]');
 	$product = $this->input->post('product[]');
 	$hsnsac=$this->input->post('hsnsac[]');
 	$quantity=$this->input->post('quantity[]');
 	$rate=$this->input->post('rate[]');
 	$unit=$this->input->post('unit[]');
 	$netamounttbl=$this->input->post('netamounttbl[]');
 	$gstpercenttbl=$this->input->post('gstpercenttbl[]');
 	$gstamounttbl=$this->input->post('gstamounttbl[]');
 	$totalamounttbl=$this->input->post('totalamounttbl[]');

 	$desc=$this->input->post('desc');
 	$prevbalance=$this->input->post('prevbalance');
 	$totaloutstanding=$this->input->post('totaloutstanding');
 	$gstamount=$this->input->post('gstamount');
 	$netamount=$this->input->post('netamount');
 	$discountpercent=$this->input->post('discountpercent');
 	$discount=$this->input->post('discount');
 	$totalamount=$this->input->post('totalamount');
 	$paidamount=$this->input->post('paidamount');
 	$printmethod=$this->input->post('printmethod');

 	



 }


}
?>
