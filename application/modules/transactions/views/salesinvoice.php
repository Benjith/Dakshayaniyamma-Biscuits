<?php $this->load->view('Header/header.php');
?>
<section class="content--full">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Sales Invoice</h4>

            <div class="tab-container">
                <ul class="nav nav-tabs" role="tablist" id="myTab">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#addnew" role="tab" id="navNew">Add New</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#list" role="tab" id="navList">List</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade" id="list" name="list" role="tabpanel">
                        
                    </div>
                    <div class="tab-pane active fade show" id="addnew" role="tabpanel">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" disabled class="form-control" value="INV/00" />
                                        <select id="cashOrParty" name="cashOrParty" class="select2">
                                            <option value="0">--Select Cash/Party--</option>
                                            <?php
                                                foreach($cashOrParty as $key){?>
                                                <option value="<?= $key->ledgerId; ?>"><?=$key->ledgerName;?></option>
                                            <?php } ?>
                                        </select>
                                        <select id="salesAccount" name="salesAccount" class="select2" data-minimum-results-for-search="Infinity">                                            
                                            <?php
                                                foreach($salesAccount as $key){?>
                                                <option value="<?= $key->ledgerId; ?>"><?=$key->ledgerName;?></option>
                                            <?php } ?>
                                        </select>
                                    </div>
                                </div>                                
                                <div class="col-md-6">&nbsp;</div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" id="voucherDate" name="voucherDate" class="form-control date-picker" placeholder="Voucher Date">                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="table-responsive col-md-12">
                                    <table class="table table-bordered  mb-0" id="tblSalesInvoice">
                                        <thead class="thead-inverse">
                                            <tr>
                                                <th style="text-align: center;">
                                                    <i class="zmdi zmdi-file-plus zmdi-hc-fw" style="font-size: 18px; cursor:pointer;" id="addRow"></i>
                                                </th>
                                                <th style="text-align: center;">Sl No</th>
                                                <th width="10%">Purity</th>
                                                <th width="15%">Product</th>
                                                <th style="text-align: center;">HSN/SAC</th>
                                                <th style="text-align: center;">Qty</th>
                                                <th style="text-align: center;">Gross Wt</th>
                                                <th style="text-align: center;">Unit</th>
                                                <th style="text-align: center;">Net Amt</th>
                                                <th style="text-align: center;">GST %</th>
                                                <th style="text-align: center;">GST Amt </th>
                                                <th style="text-align: center;">Total Amt </th>
                                            </tr>
                                        </thead>
                                        <tbody id="tablebody">
                                            <tr id="row0">
                                                <td>
                                                    <button class="btn btn-light removeRow"><i class="zmdi zmdi-close-circle-o " style="color: #ff0018; font-size: 18px;" ></i></button>
                                                </td>
                                                <td style="text-align:center;">
                                                    <input type="text" disabled name="slNo[]" style="border: none; padding: 0;" class="form-control" value="1" >
                                                </td>
                                                <td style="text-align:center;">
                                                    <select name="productCode[]" class="select2">
                                                        <option value="0">&nbsp;</option>
                                                        <?php foreach($productCode as $key) {?>
                                                            <option value="<?= $key->productId; ?>"><?=$key->productCode;?></option>
                                                        <?php } ?>
                                                    </select>
                                                </td>
                                                <td style="text-align:center;">
                                                    <select name="productName[]" class="select2">
                                                        <option value="0">&nbsp;</option>
                                                        <?php foreach($productName as $key) {?>
                                                            <option value="<?= $key->productId; ?>"><?=$key->productName;?></option>
                                                        <?php } ?>
                                                    </select>
                                                </td>
                                                <td style="text-align:center;">
                                                    <input type="text" name="hsnOrSac[]" style="border: none; padding: 0;" class="form-control" >
                                                </td>
                                                <td style="text-align:center;">
                                                    <input type="number" name="qty[]" style="border: none; padding: 0;" class="form-control" >
                                                </td>
                                                <td style="text-align:center;">
                                                    <input type="text" disabled name="grossWeight[]" style="border: none; padding: 0;" class="form-control" >
                                                </td>
                                                <td style="text-align:center;">
                                                    <select name="unit[]" class="select2" data-minimum-results-for-search="Infinity">                                                        
                                                    </select>
                                                </td>
                                                <td style="text-align:center;">
                                                    <input type="text" disabled name="netAmount[]" style="border: none; padding: 0;" class="form-control" >
                                                </td>
                                                <td style="text-align:center;">
                                                    <input type="text" name="gstPercent[]" style="border: none; padding: 0;" class="form-control" >
                                                </td>
                                                <td style="text-align:center;">
                                                    <input type="text" name="gstAmount[]" style="border: none; padding: 0;" class="form-control" >
                                                </td>
                                                <td style="text-align:center;">
                                                    <input type="text" disabled name="totalAmount[]" style="border: none; padding: 0;" class="form-control" >
                                                </td>
                                            </tr>
                                            <tr id="row1">
                                                
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="footer hidden-xs-down">
    <p><?=$this->lang->line('company_title');?>. All rights reserved.</p>
    <ul class="nav footer__nav">
        <a class="nav-link" href="#">Homepage</a>
        <a class="nav-link" href="#">Company</a>
        <a class="nav-link" href="#">Support</a>
        <a class="nav-link" href="#">News</a>
        <a class="nav-link" href="#">Contacts</a>
    </ul>
</footer>
<!-- Javascript -->
<!-- Vendors -->
<script src="<?php echo asset_url(); ?>/vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/popper.js/dist/umd/popper.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/jquery.scrollbar/jquery.scrollbar.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/jquery-scrollLock/jquery-scrollLock.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/salvattore/dist/salvattore.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/flot/jquery.flot.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/flot/jquery.flot.resize.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/jqvmap/dist/jquery.vmap.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/jqvmap/dist/maps/jquery.vmap.world.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/peity/jquery.peity.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/moment/min/moment.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/flatpickr/dist/flatpickr.min.js"></script>
<!-- Charts and maps-->
<script src="<?php echo asset_url(); ?>/demo/js/flot-charts/curved-line.js"></script>
<script src="<?php echo asset_url(); ?>/demo/js/flot-charts/line.js"></script>
<script src="<?php echo asset_url(); ?>/demo/js/flot-charts/chart-tooltips.js"></script>
<script src="<?php echo asset_url(); ?>/demo/js/other-charts.js"></script>
<script src="<?php echo asset_url(); ?>/demo/js/jqvmap.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
<!-- App functions and actions -->
<script src="<?php echo asset_url(); ?>/js/app.min.js"></script>
<!-- Vendors: Data tables -->
<script src="<?php echo asset_url(); ?>/vendors/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/jszip/dist/jszip.min.js"></script>
<script src="<?php echo asset_url(); ?>/vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        var i = 1;
        $('#tblSalesInvoice td ').css('padding','0px 0px');
        $('#tblSalesInvoice td ').css('vertical-align','middle');        
    	var addSerialNumber = function () {    		            
            var b=i-1;            
            $('#row'+i).html($('#row'+b).html());
            $('#tblSalesInvoice').append('<tr id="row'+(i+1)+'"></tr>');
    		$('#tblSalesInvoice tr').each(function (index) {                
    			$(this).find('td:nth-child(2)').html(index++);
    		});
            
    	}

        $('#addRow').click(function(){
            addSerialNumber();
            $('#tblSalesInvoice td ').css('padding','0px 0px');
            $('#tblSalesInvoice td ').css('vertical-align','middle');
            i++; 
        })
      	
  	});
</script>

</body>
</html>