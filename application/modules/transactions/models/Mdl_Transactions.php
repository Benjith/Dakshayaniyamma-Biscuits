<?php
class Mdl_Transactions extends CI_Model
{
    public function fetchcontacts()
    {
        $data = $this->db->get('contacts_tbl');
        return $data->result();
    }
    public function fetchLedgerDetails()
    {
        $data = $this->db->get('ledger_tbl');
        return $data->result();
    }
    public function addNewReceiptVoucher()
    {
        $prefix = "RV/2018";

        if (!$this->input->post('hiddenreceiptvoucherid') == "") {
            $this->db->where('receiptID',$this->input->post('hiddenreceiptvoucherid'));
            $row= $this->db->get('receiptvoucher_tbl')->row_array();
            $VOUCHER_NO=$row['VoucherNo'];

            $data = array(
                'voucherDate' => $this->input->post('datepicker'),
                'ledgerFirst' => $this->input->post('bankorcash'),
                'ledgerSecond' => $this->input->post('account'),
                'total' => $this->input->post('amount'),
                'description' => $this->input->post('desc'),
                'userId' => $_SESSION['userId'],
                'VoucherNo' => $VOUCHER_NO);
            $this->db->where('receiptID', $this->input->post('hiddenreceiptvoucherid'));
            $this->db->update('receiptvoucher_tbl', $data);
            $this->transactionDelete($this->input->post('hiddenreceiptvoucherid'), "Receipt Voucher");
            $this->receiptTransactionSave($this->input->post('hiddenreceiptvoucherid'), $data);            
        } else {
            $this->db->where('closed=0');
            $row = $this->db->get('financialyear_tbl')->row_array();
            $financialYearId = $row['financialYearId'];

            $this->db->select_max('VoucherNo');
            $oldvoucher = $this->db->get('receiptvoucher_tbl')->result();
            $VoucherNo = $oldvoucher[0]->VoucherNo + 1;
            $data = array('prefix' => $prefix,
                'VoucherNo' => $VoucherNo,
                'voucherDate' => $this->input->post('datepicker'),
                'ledgerFirst' => $this->input->post('bankorcash'),
                'ledgerSecond' => $this->input->post('account'),
                'total' => $this->input->post('amount'),
                'description' => $this->input->post('desc'),
                'userId' => $_SESSION['userId'],
                'financialYearId' => $financialYearId);
            $this->db->insert('receiptvoucher_tbl', $data);
            $receiptID = $this->db->insert_id();
            $this->receiptTransactionSave($receiptID, $data);
        }

    }

    public function receiptTransactionSave($receiptID, $data)
    {
        $transInfo = array('voucherId' => $receiptID,
            'voucherType' => 'Receipt Voucher',
            'voucherDate' => $data['voucherDate'],
            'voucherNo' => $data['VoucherNo'],
            'ledgerId' => $data['ledgerSecond'],
            'Cr' => 0,
            'Dr' => $data['total']);

        $this->db->insert('transaction_tbl', $transInfo);

        $transInfo['ledgerId'] = $data['ledgerFirst'];
        $transInfo['Cr'] = $data['total'];
        $transInfo['Dr'] = 0;

        $this->db->insert('transaction_tbl', $transInfo);
    }

    public function receiptvouchertblfetch()
    {
        return $this->db->get('receiptvoucher_tbl')->result();
    }
    public function delReceiptVoucher()
    {
        $id = $this->input->post('id');
        $this->db->where('receiptID', $id);
        $this->db->delete('receiptvoucher_tbl');
    }
    public function fetchVoucherWithId()
    {
        $id = $this->input->post('id');
        $this->db->where('receiptID', $id);
        $qry = $this->db->get('receiptvoucher_tbl');
        $data = $qry->result();
        echo json_encode($data);

    }

    public function transactionDelete($voucherId, $voucherType)
    {
        $this->db->where('voucherType', $voucherType);
        $this->db->where('voucherId', $voucherId);
        $this->db->delete('transaction_tbl');
    }
}
