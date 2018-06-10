<?php 

class Mdl_purchaseInvoice extends CI_Model
{
	
function getProducts(){
	$query=$this->db->get('product_tbl');
	$data=$query->result();
	return $data;
}

function getProductById(){
$id= $this->input->post('procode');
$this->db->where('productId',$id);
$query=$this->db->get('product_tbl');
$data=$query->result();
echo json_encode($data);
}	
	
}

?>