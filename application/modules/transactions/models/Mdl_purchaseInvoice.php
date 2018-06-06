<?php 

class Mdl_purchaseInvoice extends CI_Model
{
	
function getProducts(){
	$query=$this->db->get('product_tbl');
	$data=$query->result();
	return $data;
}


	
	
}

?>