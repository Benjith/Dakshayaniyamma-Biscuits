<?php

class Mdl_UnitConversion extends CI_Model
{
    public function unitConversionViewAll()
    {
        $this->db->select('t1.unitConversionId, t2.unitName as mainUnit, t3.unitName as conversionUnit,t1.conversionRate, t1.description');
        $this->db->from('unitconversion_tbl as t1');
        $this->db->join('unit_tbl as t2', 't2.unitId=t1.unitId', 'inner');
        $this->db->join('unit_tbl as t3', 't3.unitId=t1.conversionUnitId', 'inner');
        $query = $this->db->get();
        return $data = $query->result();
    }
    public function unitConversionAdd($unitConversionInfo)
    {
        $this->db->insert('unitconversion_tbl', $unitConversionInfo);
    }
    public function unitConversionViewById($unitConversionId)
    {
        $this->db->select('t1.unitConversionId,t1.unitId,t1.conversionUnitId,t1.conversionRate,t2.unitName as mainUnit,t3.unitName as conversionUnit');
        $this->db->from('unitconversion_tbl as t1');
        $this->db->join('unit_tbl as t2', 't2.unitId=t1.unitId', 'inner');
        $this->db->join('unit_tbl as t3', 't3.unitId=t1.conversionUnitId', 'inner');
        $this->db->where('t1.unitConversionId', $unitConversionId);
        return $this->db->get()->row_array();
    }
    public function unitConversionUpdate($unitConversionId, $unitConversionInfo)
    {
        $this->db->where('unitConversionId', $unitConversionId);
        $this->db->update('unitconversion_tbl', $unitConversionInfo);
    }
    public function unitConversionDeleteById($unitConversionId)
    {
        $msg = "";
        try {
            $this->db->where('unitConversionId', $unitConversionId);
            $this->db->delete('unitconversion_tbl');
        } catch (Exception $ex) {
            $msg = $ex->getMessage();
        }
    }
}