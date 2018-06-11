<?php
class Mdl_salesinvoice extends CI_Model{
    function productViewById($productId){
        $this->db->where('productId',$productId);
        return $this->db->get('product_tbl')->row_array();
    }
}
?>