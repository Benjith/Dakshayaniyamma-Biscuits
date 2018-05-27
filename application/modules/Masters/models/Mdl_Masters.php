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

	
}
