<?php
class Mdl_Transactions extends CI_Model{
function fetchcontacts(){
$data=$this->db->get('contacts_tbl');
return $data->result();
}
function fetchLedgerDetails(){
	$data=$this->db->get('ledger_tbl');
	return $data->result();
}
function addNewReceiptVoucher(){
	$prefix="RV/2018";
	
		
	$userId="1";
	$financialYearId="1";
	
	if(!$this->input->post('hiddenreceiptvoucherid')==""){
		$data = array(
				'voucherDate' =>$this->input->post('datepicker'),
				'ledgerFirst' =>$this->input->post('bankorcash') ,
				'ledgerSecond' => $this->input->post('account'),
				'total' =>$this->input->post('amount') ,
				'description' =>$this->input->post('desc') ,
				'userId' =>"1" ,
				'financialYearId' =>"1" ,   );
		$this->db->where('receiptID',$this->input->post('hiddenreceiptvoucherid'));
		$this->db->update('receiptvoucher_tbl',$data);
	}
	else{
		$this->db->select_max('VoucherNo');
	$oldvoucher=$this->db->get('receiptvoucher_tbl')->result();
		$VoucherNo= $oldvoucher[0]->VoucherNo+1;
		$data = array('prefix' => $prefix,
				'VoucherNo' => $VoucherNo ,
				'voucherDate' =>date('Y-m-d'),
				'ledgerFirst' =>$this->input->post('bankorcash') ,
				'ledgerSecond' => $this->input->post('account'),
				'total' =>$this->input->post('amount') ,
				'description' =>$this->input->post('desc') ,
				'userId' =>"1" ,
				'financialYearId' =>"1" ,   );
		$this->db->insert('receiptvoucher_tbl',$data);
	}
	
}
function receiptvouchertblfetch(){
	return $this->db->get('receiptvoucher_tbl')->result();
}
	function delReceiptVoucher(){
	$id= $this->input->post('id');
	$this->db->where('receiptID',$id);
	$this->db->delete('receiptvoucher_tbl');
	}
	function fetchVoucherWithId(){
		$id=$this->input->post('id');
		$this->db->where('receiptID',$id);
		$qry=$this->db->get('receiptvoucher_tbl');
		$data=$qry->result();
		echo json_encode($data);
		
	}
}