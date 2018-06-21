<?php
class Mdl_salesinvoice extends CI_Model{
    function productViewById($productId){
        $query= $this->db->query("select t4.productId,t4.productGroupId,t4.unitId,t4.productName,t4.productCode,t4.taxType,t4.taxPercent,t4.purchaseRate,t4.wholeSalesRate,t4.wholeSalesRate,t4.retailRate,t4.consumerRate,t4.mrp,t4.mrp,t4.openingStock,t4.entryDate,t4.description,t4.purTaxPercent,t4.reorderLevel,t4.hsnOrSacCode,t4.image,t5.unitName as productUnitName, GROUP_CONCAT(t2.unitName) as conversionUnitName,GROUP_CONCAT(t1.unitId) as conversionUnitIds, GROUP_CONCAT(t3.unitName) as mainUnitNames from unitconversion_tbl t1 inner join unit_tbl t2 on t2.unitId=t1.conversionUnitId inner join unit_tbl t3 on t3.unitId=t1.unitId
        inner join product_tbl t4 on t4.unitId=t1.conversionUnitId
        inner join unit_tbl t5 on t5.unitId=t4.unitId
        where t4.productId=$productId");
        return $query->result();
    }
}
?>