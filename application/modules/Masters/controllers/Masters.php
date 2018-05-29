<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Masters extends MX_Controller {

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('Mdl_Masters');
        $this->load->model('Dashboard/Mdl_dashboard');
    }

	public function index()
	{
		if($this->session->userdata('userName')){
			//if "superuser found"
		return	$this->load->view('Masters/dashboard');
		}
		else {
			//if "no admin found"
		return	$this->load->view('Dashboard/login');

		}
	}
	function Units(){ 

		$data['units']=$this->Mdl_Masters->fetchUnits();	
		$this->load->view('units',$data);
	}
	function addUnits(){
		
		$unit=$this->input->post('unit');
		$desc=$this->input->post('desc');
		$this->Mdl_Masters->addUnits($unit,$desc);
		return true;

	}
	function delUnit(){
		$this->Mdl_Masters->delUnit();
	}
	function editUnit(){
		$this->Mdl_Masters->editUnit();

	}
	function editPostdata(){
	    $id =$this->input->post('hiddenunitvalue');
		$unitName =$this->input->post('editunitpost');
		$unitDesc =$this->input->post('editdescpost');
		$this->Mdl_Masters->update($id,$unitName,$unitDesc);
		redirect('Masters/Units', 'refresh');
	}
	function ProductGroup(){
		$data['productdata']=$this->Mdl_Masters->productGroup();
		$this->load->view('productgroup',$data);
	}
	function addProductGroup(){
		$groupname = $this->input->post('groupname');
		$desc = $this->input->post('desc');
		$this->Mdl_Masters->addProductGroup($groupname,$desc);
		return true;
	}
	function delProductGroup(){
		$this->Mdl_Masters->delProductGroup();
	}

	function editProductGroupfetchdata(){
		$this->Mdl_Masters->fetchProductGroupDetails();
	}

	function editPostdataproductgroup(){
		$id =$this->input->post('hiddenproductvalue');
		$productName =$this->input->post('editproductpost');
		$productDesc =$this->input->post('editdescpost');
		$this->Mdl_Masters->updateproduct($id,$productName,$productDesc);
		redirect('Masters/ProductGroup', 'refresh');
	}
	function Products(){
		$data['product']=$this->Mdl_Masters->ProductModuleGetAllproduct();
		$data['unit']=$this->Mdl_Masters->ProductModuleGetUnitData();
		$data['productgroup']=$this->Mdl_Masters->ProductModuleGetProductGroupData();
		$this->load->view('product',$data);
	}
	function delProduct(){//delete product by fetching id
		$this->Mdl_Masters->delProduct();
	}
	function editProductfetchdata(){//edit prodcut by fetching id
		$this->Mdl_Masters->editProduct();

	}
	function editPostdataproduct(){//update data by edit modal

		$this->Mdl_Masters->editPostdataproduct();
	}
	function addProduct(){
		$this->Mdl_Masters->addProduct();

	}
<<<<<<< HEAD

	function UnitConversion(){
		redirect('UnitConversion/Conversions');
=======
	function Contacts(){
		$data['contacts']=$this->Mdl_Masters->ContactsFetch();
		$this->load->view('contacts',$data);
>>>>>>> 974b8f6f6cb6b6ee56f93f6167eebed7da45d10b
	}
}