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
                                <div class="table-responsive col-md-12" >
                                    <table class="table table-bordered  mb-0" id="table_purinvoice">
                                        <thead class="thead-inverse"  >
                                            <tr >
                                                <th width="1%" style="text-align: center;"><i class="zmdi zmdi-file-plus zmdi-hc-fw" style="font-size: 18px;" onclick="addRow()"></i></th>
                                                <th width="1%" style="text-align: center;">#</th>
                                                <th width="5%" style="text-align: center;" >Purity</th>
                                                <th width="8%" style="text-align: center;" >Product</th>
                                                <th width="2%" style="text-align: center;">Qty</th>
                                                <th width="5%" style="text-align: center;">Unit</th>
                                                <th width="4%" style="text-align: center;">Rate</th>
                                                <th width="3%" style="text-align: center;">Net Wt</th>
                                                <th width="3%" style="text-align: center;">Stone Wt</th>
                                                <th width="5%" style="text-align: center;">Stone Rate </th>
                                                <th width="3%" style="text-align: center;">Gross Wt</th>
                                                <th width="3%" style="text-align: center;">Wastage  </th>
                                                <th width="5%" style="text-align: center;">Making Charge </th>
                                                <th width="5%" style="text-align: center;">Amount </th>
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
                                    <input type="number" id="totalAmount" class="eklavya_inputBtmBrdr"  name="totalamount">
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
 
 
      
$('#tablebody').append('<tr><th scope="row"><button class="btn btn-light" style="width:100%;"><i class="zmdi zmdi-close-circle-o " style="color: #ff0018; font-size: 18px; " ></i></button></th><td style="text-align:center;"><input value="" style="border: none; padding: 0;" type="text" class="form-control" disabled name="slNo[]" ></td><td><select class="myslct procode" style="border: none; width:100%; padding: 0;"  name="code[]" onchange="procode(this,event)"><option></option><?php foreach ($product as $codepro ) { ?><option value="<?=$codepro->productId?>"><?=$codepro->productCode?></option><?php } ?></select></td><td ><select class="myslct proname" style="border: none; padding: 0; width:100%; background:none;color:white;" name="product[]" onchange="proname(this)"><option></option><?php foreach ($product as $namepro ) { ?><option value="<?=$namepro->productId?>"><?=$namepro->productName?></option><?php } ?></select></td><td style="text-align:center;"><input style="border: none; padding: 0;text-align:center" type="text" class="form-control quantity"  name="quantity[]" onkeyup="callCallculateAmountRow(this)"></td><td style="text-align:center;"><select style="border: none;width:100%; padding: 0;text-align:center" type="text" class="form-control unit" name="unit[]" onchange="callCallculateAmountRow(this)"></select></td><td style="text-align:center;"><input style="border: none; padding: 0;text-align:center" type="text" class="form-control rate" name="rate[]" onkeyup="callCallculateAmountRow(this)"></td><td style="text-align:center;"><input style="border: none; padding: 0;text-align:center" type="text" class="form-control netweighttbl" name="netweighttbl[]" onkeyup="callCallculateAmountRow(this)"></td><td style="text-align:center;"><input style="border: none; padding: 0;text-align:center" type="text" class="stoneweight form-control" name="stoneweight[]" onkeyup="callCallculateAmountRow(this)"></td><td style="text-align:center;"><input style="border: none; padding: 0;text-align:center" type="text" class="stonerate form-control" name="stonerate[]" onkeyup="callCallculateAmountRow(this)"></td><td style="text-align:center;"><input style="border: none; padding: 0;text-align:center" type="text" class="grossweighttbl form-control" name="grossweighttbl[]" onkeyup="callCallculateAmountRow(this)"></td><td style="text-align:center;"><input style="text-align:center;border: none; padding: 0;" type="text" class="wastagetbl form-control" name="wastagetbl[]" onkeyup="callCallculateAmountRow(this)"></td><td style="text-align:center;"><input style="border: none; padding: 0; text-align:center" type="text" class="makingcharge form-control" name="makingcharge[]" onkeyup="callCallculateAmountRow(this)"></td><td style="text-align:center;"><span class="totalamounttbl" name="totalamounttbl[]"></span></td></tr>');
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

var tab_index= $(id).closest('tr');
tab_index.children('td:nth-child(6)').find('option').remove();
var select2class="procode";
getproductdetails(tab_index,procode,select2class);//ajax
}
function proname(id,e){ // name change
   var procode = id.value;
var tab_index= $(id).closest('tr');
tab_index.children('td:nth-child(6)').find('option').remove();
var select2class="proname";
getproductdetails(tab_index,procode,select2class);//ajax

}

//calcFun
function calculateAmountsByRowIndex(row_index){    
    // var qty=row_index.find('.quantity').val();
    var rate=parseFloat(row_index.find('.rate').val()==""?"0":row_index.find('.rate').val());
    var netWeight=parseFloat(row_index.find('.netweighttbl').val()==""?"0":row_index.find('.netweighttbl').val());
    var stoneWeight=parseFloat(row_index.find('.stoneweight').val()==""?"0":row_index.find('.stoneweight').val());
    var stoneRate=parseFloat(row_index.find('.stonerate').val()==""?"0":row_index.find('.stonerate').val());
    var grossWeight=parseFloat(row_index.find('.grossweighttbl').val()==""?"0":row_index.find('.grossweighttbl').val());
    var wastage=parseFloat(row_index.find('.wastagetbl').val()==""?"0":row_index.find('.wastagetbl').val());
    var makingCharge=parseFloat(row_index.find('.makingcharge').val()==""?"0":row_index.find('.makingcharge').val());

    var res=rate*netWeight;    
    res=res+((res*wastage)/100);
    res=res+(makingCharge+stoneRate);
    
    row_index.find('.totalamounttbl').html(res);
    calcTotalAmount();
    // $("#totalAmount").val($("#totalAmount").text()+res);
}

function callCallculateAmountRow(id){
    var tab_index= $(id).closest('tr');    
    calculateAmountsByRowIndex(tab_index);
}


function calcTotalAmount(){

}


function getproductdetails(tab_index,procode,select2class){
// tab_index.children('td:nth-child(7)').find('input').val(procode);

    $.ajax({
data:{procode:procode},
url:'<?=site_url('transactions/PurchaseInvoice/getProductById');?>',
method:'post',
datatype:'json',
success:function(response){
    jsonobj=$.parseJSON(response);

   // hsnOrSacCode
    //tab_index.children('td:nth-child(5)').html(jsonobj[0]['hsnOrSacCode']);
    
    tab_index.find('.rate').val(jsonobj[0]['retailRate']);    
    tab_index.find('.quantity').val("1");

    //unit
    tab_index.children('td:nth-child(6)').find('select').append("<option value="+jsonobj[0]['unitId']+">"+jsonobj[0]['productUnitName']+"</option>");
    var conversionUnitIds=jsonobj[0]['conversionUnitIds'];
    var mainUnitNames=jsonobj[0]['mainUnitNames'];
    if(conversionUnitIds!=null){
    arrUnitIds=conversionUnitIds.split(',');
    arrUnitNames=mainUnitNames.split(',');
    for (var i = 0; i < arrUnitIds.length; i++) {
    tab_index.children('td:nth-child(6)').find('select').append("<option value="+arrUnitIds[i]+">"+arrUnitNames[i]+"</option>");   
    }
    }
    if(select2class=="proname"){
            tab_index.find('.procode').val(procode); 
            tab_index.find('td:nth-child(3) .select2-selection__rendered').attr('title',jsonobj[0]['productCode']);
            tab_index.find('td:nth-child(3) .select2-selection__rendered').html(jsonobj[0]['productCode']);

    }
    else if(select2class=="procode"){
            tab_index.find('.proname').val(procode);
            tab_index.find('td:nth-child(4) .select2-selection__rendered').attr('title',jsonobj[0]['productName']);
            tab_index.find('td:nth-child(4) .select2-selection__rendered').html(jsonobj[0]['productName']);       
            
    }

    calculateAmountsByRowIndex(tab_index);
    calcTotalAmount();

},
});
}


</script>



</body>
</html>