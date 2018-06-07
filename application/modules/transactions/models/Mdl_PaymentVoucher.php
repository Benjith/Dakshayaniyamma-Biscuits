<?php

class Mdl_PaymentVoucher extends CI_Model
{

    function __construct(){
		parent::__construct();
		$this->load->database();
        $this->load->library('session');		
        $this->load->model('Mdl_Transactions');
    }
    
    public function paymentVoucherGridFill()
    {
        $this->db->select('t1.paymentID,t1.VoucherNo,DATE_FORMAT(t1.voucherDate,"%d/%m/%Y")as voucherDate,t1.total,t1.description,
        t2.ledgerName as bankOrCash, t3.ledgerName as account');
        $this->db->from('paymentvoucher_tbl t1');
        $this->db->join('ledger_tbl t2', 't2.ledgerId=t1.ledgerFirst', 'inner');
        $this->db->join('ledger_tbl t3', 't3.ledgerId=t1.ledgerSecond', 'inner');
        $this->db->order_by('t1.paymentID', 'desc');
        return $this->db->get()->result();
    }
    public function paymentVoucherAdd($paymentInfo)
    {
        $this->db->where('closed=0');
        $row = $this->db->get('financialYear_tbl')->row_array();
        $financialYearId = $row['financialYearId'];

        $this->db->select('IFNULL(MAX(voucherNo),0) +1 as voucherNo');
        $this->db->from('paymentvoucher_tbl');
        $this->db->where('financialYearId', $financialYearId);
        $row = $this->db->get()->row_array();
        $voucherNo = $row['voucherNo'];

        $paymentInfo['userId'] = $_SESSION['userId'];
        $paymentInfo['financialYearId'] = $financialYearId;
        $paymentInfo['voucherNo'] = $voucherNo;

        $this->db->insert('paymentvoucher_tbl', $paymentInfo);

        $paymentID=$this->db->insert_id();
        $this->paymentTransactionSave($paymentID,$paymentInfo);
    }

    function paymentTransactionSave($paymentID,$paymentInfo){
        $transInfo=array('voucherId'=>$paymentID,
                        'voucherType'=>'Payment Voucher',
                        'voucherDate'=>$paymentInfo['voucherDate'],
                        'voucherNo'=>$paymentInfo['voucherNo'],
                        'ledgerId'=>$paymentInfo['ledgerSecond'],
                        'Cr'=>0,
                        'Dr'=>$paymentInfo['total']);

        $this->db->insert('transaction_tbl',$transInfo);

        $transInfo['ledgerId']=$paymentInfo['ledgerFirst'];
        $transInfo['Cr']=$paymentInfo['total'];
        $transInfo['Dr']=0;

        $this->db->insert('transaction_tbl',$transInfo);
    }

    public function paymentVoucherViewById($paymentID)
    {
        $this->db->select('t1.paymentID,t1.ledgerFirst,t1.ledgerSecond,t1.VoucherNo,DATE_FORMAT(t1.voucherDate,"%d/%m/%Y")as voucherDate,t1.total,t1.description,
        t2.ledgerName as bankOrCash, t3.ledgerName as account');
        $this->db->from('paymentvoucher_tbl t1');
        $this->db->join('ledger_tbl t2', 't2.ledgerId=t1.ledgerFirst', 'inner');
        $this->db->join('ledger_tbl t3', 't3.ledgerId=t1.ledgerSecond', 'inner');
        $this->db->where('t1.paymentID', $paymentID);
        return $this->db->get()->row_array();
    }
    public function paymentVoucherUpdate($paymentID, $paymentInfo)
    {
        $this->db->where('paymentID', $paymentID);
        $this->db->update('paymentvoucher_tbl', $paymentInfo);

        $paymentInfo['voucherNo']= $this->paymentVoucherViewById($paymentID)['VoucherNo'];        
        
        $this->Mdl_Transactions->transactionDelete($paymentID,'Payment Voucher');
        $this->paymentTransactionSave($paymentID,$paymentInfo);
    }    

    function paymentVoucherDeleteById($paymentID){
        try{
            $this->db->where('paymentID',$paymentID);
            $this->db->delete('paymentvoucher_tbl');
            return "success";
        }
        catch(Exception $ex){
            return "reference";
        }
    }
}
