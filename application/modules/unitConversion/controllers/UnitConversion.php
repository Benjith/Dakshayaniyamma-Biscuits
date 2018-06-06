<?php
defined('BASEPATH') or exit('No direct script access allowed');

class UnitConversion extends MX_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->model('dashboard/Mdl_dashboard');
        $this->load->model('masters/Mdl_Masters');
        $this->load->model('Mdl_UnitConversion');
    }

    public function Conversions()
    {
        if ($this->input->server('REQUEST_METHOD') == 'GET') {
            $data['units'] = $this->Mdl_Masters->fetchUnits();
            $data['conversions'] = $this->Mdl_UnitConversion->unitConversionViewAll();
            return $this->load->view('unitconversion', $data);
        } else if ($this->input->server('REQUEST_METHOD') == 'POST') {
            $msg = "";
            $unitConversionInfo = array('unitId' => $this->input->post('mainUnit'),
                'conversionUnitId' => $this->input->post('conversionUnit'),
                'conversionRate' => $this->input->post('conversionRate'));
            $unitConversionId = $this->input->post('unitConversionId');
            if ($unitConversionId == 0) {
                $this->Mdl_UnitConversion->unitConversionAdd($unitConversionInfo);
                $msg = "Saved successfully";
            } else if ($unitConversionId > 0) {
                $this->Mdl_UnitConversion->unitConversionUpdate($unitConversionId, $unitConversionInfo);
                $msg = "Updated successfully";
            }
            echo $msg;
        }
    }

    public function unitConversionViewById()
    {
        $unitConversionId = $this->input->post('unitConversionId');
        $row = $this->Mdl_UnitConversion->unitConversionViewById($unitConversionId);
        echo json_encode($row);
    }

    public function unitConversionDeleteById()
    {
        $unitConversionId = $this->input->post('unitConversionId');
        $msg = $this->Mdl_UnitConversion->unitConversionDeleteById($unitConversionId);
        if ($msg == "") {
            echo "success";
        } else if ($msg != "") {
            echo "reference";
        }
    }

}
