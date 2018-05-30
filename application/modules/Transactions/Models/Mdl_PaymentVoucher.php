<?php

class Mdl_PaymentVoucher extends CI_Model{

    public function paymentVoucherGridFill()
    {
        $this->db->select('t1.paymentID,t1.VoucherNo,DATE_FORMAT(t1.voucherDate,"%d/%m/%Y")as voucherDate,t1.total,t1.description,
        t2.ledgerName as bankOrCash, t3.ledgerName as account');
        $this->db->from('paymentVoucher_tbl t1');
        $this->db->join('ledger_tbl t2','t2.ledgerId=t1.ledgerFirst','inner');
        $this->db->join('ledger_tbl t3','t3.ledgerId=t1.ledgerSecond','inner');
        $this->db->order_by('t1.paymentID','desc');        
        return $this->db->get()->result();
    }
}