<?php


class Mdl_Masters extends CI_Model
{
	
function addUnits($unit,$desc){
	$array = array('unitName' =>$unit ,
					'description' => $desc);
	$this->db->insert('unit_tbl',$array);
}
function fetchUnits(){
	$query = $this->db->get('unit_tbl');
	return $query->result();
}
function delUnit(){
	$id= $this->input->post('id');
	$this->db->where('unitId',$id);
	$this->db->delete('unit_tbl');
}
function editUnit(){//fetching data from unit table to display  for edit
	$id=$this->input->post('id');
	$this->db->where('unitId',$id);
 	$query=$this->db->get('unit_tbl');
 	$data=$query->result();
 	echo $data[0]->unitName.'/'.$data[0]->description;
}
function update($id,$unitName,$unitDesc){ //update data on table unit_tbl with unitId 
	$data=  array('unitName' => $unitName,
				  'description'	 => $unitDesc );
	$this->db->where('unitId',$id);
	$this->db->update('unit_tbl',$data);
	}
function productGroup(){
	$query= $this->db->get('productgroup_tbl');
	return $data=$query->result();
} 
function addProductGroup($groupname,$desc){
	$data = array('productGroupName' => $groupname,
					'description' => $desc );
	$this->db->insert('productgroup_tbl',$data);
}
function delProductGroup(){
	$id=$this->input->post('id');
	$this->db->where('productGroupId',$id);
	$this->db->delete('productgroup_tbl');
}
function fetchProductGroupDetails(){
	$id=$this->input->post('id');
	$this->db->where('productGroupId',$id);
	$query=$this->db->get('productgroup_tbl');
	$data=$query->result();
	echo $data[0]->productGroupName.'/'.$data[0]->description;
}

function updateproduct($id,$productName,$productDesc){
	$data=  array('productGroupName' => $productName,
				  'description'	 => $productDesc );
	$this->db->where('productGroupId',$id);
	$this->db->update('productgroup_tbl',$data);
}
function ProductModuleGetUnitData(){
	$query=$this->db->get('unit_tbl');
	return $data=$query->result();
}
function ProductModuleGetProductGroupData(){
	$query=$this->db->get('productgroup_tbl');
	return $data=$query->result();
}
function ProductModuleGetAllproduct(){
	$this->db->join('unit_tbl','unit_tbl.unitId=product_tbl.unitId');
	$this->db->join('productgroup_tbl','productgroup_tbl.productGroupId=product_tbl.productGroupId');
	$query=	$this->db->get('product_tbl');
	return $data=$query->result();
}
function delProduct(){
	$id=$this->input->post('id');
	$thi1s->db->where('productId',$id);
	$this->db->delete('product_tbl');
}
function editProduct(){
	$id=$this->input->post('id');
	$this->db->where('productId',$id);
	$query= $this->db->get('product_tbl');
	$data=$query->result();
	echo $data[0]->productCode.'/#/'.$data[0]->productName.'/#/'.$data[0]->productGroupId.'/#/'.$data[0]->unitId.'/#/'.$data[0]->hsnOrSacCode.'/#/'.$data[0]->taxPercent.'/#/'.$data[0]->purchaseRate.'/#/'.$data[0]->wholeSalesRate.'/#/'.$data[0]->retailRate.'/#/'.$data[0]->consumerRate.'/#/'.$data[0]->mrp.'/#/'.$data[0]->openingStock.'/#/'.$data[0]->reorderLevel.'/#/'.$data[0]->description;


}
function editPostdataproduct(){
	
	$data = array('productCode' =>$this->input->post('editProductcode') , 
				  'productName' =>$this->input->post('editProductname') ,
				  'productGroupId' =>$this->input->post('editGroup') ,
				  'unitId' =>$this->input->post('editUnit') ,
				  'hsnOrSacCode' =>$this->input->post('editHSNSAC') ,
				  'taxPercent' =>$this->input->post('editGST') ,
				  'purchaseRate' =>$this->input->post('editpr') ,
				  'wholeSalesRate' =>$this->input->post('editws') ,
				  'retailRate' =>$this->input->post('editrr') ,
				  'purchaseRate' =>$this->input->post('editpr') ,
				  'consumerRate' =>$this->input->post('editcr') ,
				  'mrp' =>$this->input->post('editmrp') ,
				  'openingStock' =>$this->input->post('editos') ,
				  'reorderLevel' =>$this->input->post('editrl') ,
				  'description' =>$this->input->post('editdesc') ,
														);
	
	$this->db->trans_start();
	$this->db->where('productId',$this->input->post('hiddenproductvalue'));
	$this->db->update('product_tbl',$data);
	$this->db->trans_complete();
	if ($this->db->trans_status() === false)
{
   echo "Error";
}
else{
	redirect('Masters/Products','refresh');
}

}
function addProduct(){

 $data = array('productCode' =>$this->input->post('Productcode') , 
				  'productName' =>$this->input->post('Productname') ,
				  'productGroupId' =>$this->input->post('Group') ,
				  'unitId' =>$this->input->post('Unit') ,
				  'hsnOrSacCode' =>$this->input->post('HSNSAC') ,
				  'taxPercent' =>$this->input->post('GST') ,
				  'purchaseRate' =>$this->input->post('pr') ,
				  'wholeSalesRate' =>$this->input->post('ws') ,
				  'retailRate' =>$this->input->post('rr') ,
				  'purchaseRate' =>$this->input->post('pr') ,
				  'consumerRate' =>$this->input->post('cr') ,
				  'mrp' =>$this->input->post('mrp') ,
				  'openingStock' =>$this->input->post('os') ,
				  'reorderLevel' =>$this->input->post('rl') ,
				  'description' =>$this->input->post('desc') ,
														);
 		$this->db->insert('product_tbl',$data);



	}
}
