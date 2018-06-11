<?php $this->load->view('Header/header.php');
?>
<section class="content--full">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Purchase Invoice</h4>
            <div class="tab-container">
                <ul class="nav nav-tabs" role="tablist" id="myTab">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#addnew" role="tab" id="navNew">Add New</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " data-toggle="tab" href="#list" role="tab" id="navList">List</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active fade show" id="addnew" role="tabpanel">
                        <div class="card-body">
                            <?= form_open('Transactions/PurchaseInvoice/addNewPurchaseInvoiceForm'); ?>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input hidden type="text" name="hidden_purchaseInvoice" id="hidden_purchaseInvoice" hidden="hidden" value="">
                                        <!-- prefix and voucher no -->
                                        <input disabled type="text" class="form-control" name="prefix" id="prefix" value="Prefix -Voucher No:RV/0 - 1">
                                        <!-- cash/petty -->
                                        <select class="form-control select2" name="cashorbill">
                                            <option style="color: #9d9ba8">Select Cash/Petty</option>
                                            <?php
                                            foreach ($cashorbill as $keybill) { ?>
                                               <option value="<?= $keybill->ledgerId; ?>"><?=$keybill->ledgerName;?></option>
                                         <?php  } ?>                                             
                                        </select>
                                        <!-- purchase a/c-->
                                        <select class="form-control" name="purchaseac">
                                            
                                            <?php
                                            foreach ($selectbill as $keyselect ) { ?>
                                                 <option value="<?= $keyselect->ledgerId; ?>"><?=$keyselect->ledgerName;?></option>
                                          <?php } ?> 
                                            
                                        </select>
                                        <hr>
                                        
                                    </div>
                                </div>
                                <div class="col-md-8">
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        
                                        <!-- date -->
                                        <input disabled type="text" class="form-control" name="date" id="prefix" value="<?= date('l-d/m/Y') ?>">
                                        <!-- GSTIN -->
                                        <input  type="text" class="form-control" name="gstin" id="gstin" placeholder="GSTIN">
                                        <!-- Invoice NO -->
                                        <input  type="text" class="form-control" name="invoiceno" id="invoiceno" placeholder="Invoice Number">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- Full width Table -->
                            <div class="row eklavyapurchaseinvoicewhitediv">
                                <div class="table-responsive">
                                    <table class="table table-bordered  mb-0" id="table_purinvoice">
                                        <thead class="thead-inverse"  >
                                            <tr >
                                                <th style="text-align: center;"><i class="zmdi zmdi-file-plus zmdi-hc-fw" style="font-size: 18px;" onclick="addRow()"></i></th>
                                                <th style="text-align: center;">Sl No</th>
                                                <th >Purity</th>
                                                <th width="100px">Product</th>
                                                <th style="text-align: center;">HSN/SAC</th>
                                                <th style="text-align: center;">Quantity</th>
                                                <th style="text-align: center;">Gross Weight</th>
                                                <th style="text-align: center;">Unit</th>
                                                <th style="text-align: center;">Net Amount</th>
                                                <th style="text-align: center;">GST %</th>
                                                <th style="text-align: center;">GST Amount </th>
                                                <th style="text-align: center;">Total Amount </th>
                                            </tr>
                                        </thead>
                                        <tbody id="tablebody">
                                            
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- footer options -->
                            <br>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <textarea class="form-control" rows="5" name="desc" placeholder="Description...."></textarea>
                                        <i class="form-group__bar"></i>
                                    </div>
                                    <div class="form-group">
                                        <!-- previous & total outstanding balance -->
                                        <div class="w-100"></div>
                                        <label>Previous Balance:</label>
                                        <input type="number" class="eklavya_inputBtmBrdr" name="prevbalance">
                                        <div class="w-100"></div>
                                        <label>Total Outstanding:</label>
                                        <input type="number" class="eklavya_inputBtmBrdr" name="totaloutstanding">
                                        
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    
                                </div>
                                <div class="col-md-3">
                                    <label>GST Amount&nbsp;&nbsp;:</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="gstamount">
                                    <div class="w-100"></div>
                                    <label>Net Amount&nbsp;&nbsp;&nbsp;:</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="netamount">
                                    <div class="w-100"></div>
                                    <label>Discount %&nbsp;&nbsp;&nbsp; :</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="discountpercent">
                                    <div class="w-100"></div>
                                    <label>Discount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="discount">
                                    <div class="w-100"></div>
                                    <label>Total Amount&nbsp;:</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="totalamount">
                                    <div class="w-100"></div>
                                    <label>paid Amount&nbsp;&nbsp;:</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="paidamount">
                                    
                                    
                                </div>
                                
                                
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label> Interstate <br> Purchase</label>
                                        <div class="toggle-switch toggle-switch--blue">
                                            <input type="checkbox" class="toggle-switch__checkbox">
                                            <i class="toggle-switch__helper"></i>
                                        </div>
                                        <!-- <label>Print Mode  </label> -->
                                        <select class="form-control" name="printmethod">
                                            <option selected value="1">Print</option>
                                            <option value="2">Print With Preview</option>
                                            <option value="3">Without Print</option>
                                            <!-- <option value="4">Barcode Print</option> -->
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 "></div>
                                <div class="col-md-4 text-center" >
                                    <br>
                                    <br>
                                    
                                    <!-- <button  type="submit" name="submit" id="savebtn" class="btn btn-primary">Save 
                                    </button> -->
                                    <input type="submit" name="submit" value="Save" class="btn btn-primary">
                                    <button  type="button"  id="clearbtn" class="btn btn-light">Clear 
                                    </button>
                                    <button style="" type="button" name="dltbtn" id="dltbtn" class="btn btn-danger">Delete </button>
                                    
                                    
                                </div>
                                
                            </div>
                            <?= form_close(); ?>
                        </div>
                    </div>
                    <div class="tab-pane  fade " id="list" name="list" role="tabpanel">
                        <div class="card-body">
                            
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
    var jsonobj="";

    var addSerialNumber = function () {
    var i = 0;
    $('#table_purinvoice tr').each(function(index) {        
        $(this).find('td:nth-child(2)').html(index++);
    });
}; 
addRow();


function addRow(){
 
 
      
$('#tablebody').append('<tr><th scope="row"><button class="btn btn-light"><i class="zmdi zmdi-close-circle-o " style="color: #ff0018; font-size: 18px;" ></i></button></th><td style="text-align:center;"><input value="" style="border: none; padding: 0;" type="text" class="form-control" disabled name="slNo[]" ></td><td><select class="myslct procode" style="border: none; width:100px; padding: 0;"  name="code[]" onchange="procode(this,event)"><option></option><?php foreach ($product as $codepro ) { ?><option value="<?=$codepro->productId?>"><?=$codepro->productCode?></option><?php } ?></select></td><td ><select class="myslct proname" style="border: none; padding: 0; width:200px; background:none;color:white;" name="product[]" onchange="proname(this)"><option></option><?php foreach ($product as $namepro ) { ?><option value="<?=$namepro->productId?>"><?=$namepro->productName?></option><?php } ?></select></td><td ><input style="border: none; padding: 0;" type="text" class="form-control hsnsac" name="hsnsac[]" onchange="hsnsac(this)"></td><td><input style="border: none; padding: 0;" type="text" class="form-control quantity"  name="quantity[]" onchange="quantity(this)"></td><td><input style="border: none; padding: 0;" type="text" class="form-control rate" name="rate[]" onchange="rate(this)"></td><td><input style="border: none; padding: 0;" type="text" class="form-control unit" name="unit[]" onchange="unit(this)"></td><td><input style="border: none; padding: 0;" type="text" class="form-control netamounttbl" name="netamounttbl[]" onchange="netamounttbl(this)"></td><td><input style="border: none; padding: 0;" type="text" class="form-control gstpercenttbl" name="gstpercenttbl[]" onchange="gstpercenttbl(this)"></td><td><input style="border: none; padding: 0;" type="text" class="form-control gstamounttbl" onchange="gstamounttbl(this)" name="gstamounttbl[]"></td><td><input disabled style="border: none; padding: 0;" type="text" class="form-control totalamounttbl" name="totalamounttbl[]"></td></tr>');
addSerialNumber();
$('select').select2();
$('#table_purinvoice td ').css('padding','0px 0px');
$('#table_purinvoice td ').css('vertical-align','middle');
$('#table_purinvoice th ').css('padding','0px 0px');
$(' .select2-container--default .select2-selection--single').css('border','none');
}




$('#table_purinvoice').on('click', 'button', function(e){

$(this).closest('tr').remove();
addSerialNumber();
});

//TABLE HANDLING FUNCTIONS
function procode(id,e){ //procode change
var procode = id.value;

var sel= $(id).closest('tr').find('.proname');
sel.val(procode).trigger('change');

//getproductdetails(procode);//ajax




}
function proname(id){ // name change
    var procode = id.value;
  $(id).closest('tr').find('.procode').val(procode).trigger("change");
  getproductdetails(procode);//ajax

}
function hsnsac(id){ //hsnsac change
   
$(id).closest('tr').children('td:nth-child(6)').text(id.value);
}
function quantity(id){ //quantity change
    alert(id);
}
function rate(id){ //rate change
    alert(id);
}
function unit(id){ //unti change
    alert(id);
}
function netamounttbl(id){ //nettammount change
    alert(id);
}
function gstpercenttbl(id){ //gst% change
    alert(id);
}
function gstamounttbl(id){ //gst amount change
    alert(id);
}
function getproductdetails(procode){
    $.ajax({
data:{procode:procode},
url:'<?=site_url('transactions/PurchaseInvoice/getProductById');?>',
method:'post',
datatype:'json',
success:function(response){
    jsonobj=$.parseJSON(response);
    alert(jsonobj[0]);
},
});
}


</script>



</body>
</html>