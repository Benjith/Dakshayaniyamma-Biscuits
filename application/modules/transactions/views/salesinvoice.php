<?php $this->load->view('Header/header.php'); ?>
<section class="content--full">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Sales Invoice</h4>
            <input type="hidden" name="hidInvoiceID" id="hidInvoiceID" value="0">
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
                                        <br>
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
                            <div class="row eklavyapurchaseinvoicewhitediv">
                                <div class="table-responsive col-md-12">
                                    <table class="table table-bordered  mb-0" id="tblSalesInvoice">
                                        <thead class="thead-inverse">
                                            <tr>
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
							<div class="clearfix">&nbsp;</div>
							<div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <textarea class="form-control" rows="5" name="desc" placeholder="Description...."></textarea>
                                        <i class="form-group__bar"></i>
                                    </div>                                   
                                </div>
                                <div class="col-md-5">
                                    
                                </div>
                                <div class="col-md-3">                                    
                                    <label>Total Amount&nbsp;:</label>
                                    <input type="number" class="eklavya_inputBtmBrdr" name="totalamount" id="totalAmount" readonly>
                                    <div class="w-100"></div>                                    
                                </div>
                                
                                
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">                                        
                                        <!-- <label>Print Mode  </label> -->
                                        <select class="select2" name="printmethod" data-minimum-results-for-search="Infinity">
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
                                    <input type="submit" name="submit" value="Save" id="btnSave" class="btn btn-primary">
                                    <button  type="button"  id="btnClear" class="btn btn-light">Clear 
                                    </button>
                                    <button style="" type="button" name="dltbtn" id="btnDelete" class="btn btn-danger" disabled>Delete </button>
                                    
                                    
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
    var jsonobj="";

    var addSerialNumber = function () {
    var i = 0;
    $('#tblSalesInvoice tr').each(function(index) {        
        $(this).find('td:nth-child(2)').html(index++);
    });
}; 
addRow();


function addRow(){
 
 
      
$('#tablebody').append('<tr><th scope="row"><button class="btn btn-light" style="width:100%;"><i class="zmdi zmdi-close-circle-o " style="color: #ff0018; font-size: 18px;" ></i></button></th><td style="text-align:center;"><input value="" style="border: none; padding: 0;" type="text" class="form-control" disabled name="slNo[]" ></td><td><select class="myslct procode" style="border: none; width:100%; padding: 0;"  name="code[]" onchange="procode(this,event)"><option></option><?php foreach ($productCode as $codepro ) { ?><option value="<?=$codepro->productId?>"><?=$codepro->productCode?></option><?php } ?></select></td><td ><select class="myslct proname" style="border: none; padding: 0; width:100%; background:none;color:white;" name="product[]" onchange="proname(this)"><option></option><?php foreach ($productName as $namepro ) { ?><option value="<?=$namepro->productId?>"><?=$namepro->productName?></option><?php } ?></select></td><td><input style="border: none; padding: 0; text-align:center;" type="text" class="form-control quantity"  name="quantity[]" onkeyup="callCallculateAmountRow(this)"></td><td><select style="border: none; padding: 0; width:100%;" class="form-control unit" name="unit[]" onchange="unit(this)" data-minimum-results-for-search="Infinity"></select></td><td><input style="border: none; padding: 0; text-align:center;" type="text" class="form-control rate" name="rate[]" onkeyup="callCallculateAmountRow(this)"></td><td><input type="text" style="border: none; padding: 0; text-align:center;" class="form-control netweighttbl" name="netweighttbl[]" onkeyup="callCallculateAmountRow(this)"></td><td><input type="text" style="border: none; padding: 0; text-align:center;" class="form-control stoneweight" name="stoneweight[]" onkeyup="callCallculateAmountRow(this)"></td><td><input type="text" style="border: none; padding: 0; text-align:center;" class="form-control stonerate" name="stonerate[]" onkeyup="callCallculateAmountRow(this)"></td><td><input type="text" style="border: none; padding: 0; text-align:center;" class="form-control grossweighttbl" name="grossweighttbl[]" onkeyup="callCallculateAmountRow(this)"></td><td><input type="text" style="border: none; padding: 0; text-align:center;" class="form-control wastagetbl" name="wastagetbl[]" onkeyup="callCallculateAmountRow(this)"></td><td><input type="text" style="border: none; padding: 0; text-align:center;" class="form-control makingcharge" name="makingcharge[]" onkeyup="callCallculateAmountRow(this)"></td><td style="text-align:center;"><span class="totalamounttbl" name="totalamounttbl[]"></span></td></tr>');
addSerialNumber();
$('select').select2();
$('#tblSalesInvoice td ').css('padding','0px 0px');
$('#tblSalesInvoice td ').css('vertical-align','middle');
$('#tblSalesInvoice th ').css('padding','0px 0px');
$(' .select2-container--default .select2-selection--single').css('border','none');
}




$('#tblSalesInvoice').on('click', 'button', function(e){

$(this).closest('tr').remove();
addSerialNumber();
calculateTotalAmount();
});

//TABLE HANDLING FUNCTIONS
function procode(id, e) { //procode change
	var procode = id.value;
	var tab_index = $(id).closest('tr');
	//tab_index.children('td:nth-child(7)').find('input').val(procode);
	var select2class = "procode";
	getproductdetails(tab_index, procode, select2class); //ajax
}
function proname(id, e) { // name change
	var procode = id.value;
	var tab_index = $(id).closest('tr');
	var select2class = "proname";
	getproductdetails(tab_index, procode, select2class); //ajax

}
function getproductdetails(tab_index,procode,select2class){
// tab_index.children('td:nth-child(7)').find('input').val(procode);
    $.ajax({
data:{productId:procode},
url:'<?=site_url('transactions/SalesInvoice/productViewById');?>',
method:'post',
datatype:'json',
success:function(response){
    jsonobj=$.parseJSON(response);    
    tab_index.children('td:nth-child(5)').find('input').val(jsonobj['hsnOrSacCode']);
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
    tab_index.find('.hsnsac').html(jsonobj[0]['hsnOrSacCode']);
    tab_index.find('.gstpercenttbl').val(jsonobj[0]['taxPercent']);
    tab_index.find('.unit').find('option').remove();
    tab_index.find('.unit').append('<option value="' + jsonobj[0]['unitId'] + '">' + jsonobj[0]['productUnitName'] + '</option>');
    if (jsonobj[0]['conversionUnitIds'] != null) {
        var ids=jsonobj[0]['conversionUnitIds'];
        var names=jsonobj[0]['mainUnitNames'];        
    	var arrUnitId = ids.split(',');
    	var arrUnitName = names.split(',');
        var arrLen=arrUnitId.length;
        for(var i=0; i<arrLen; i++){
            tab_index.find('.unit').append('<option value="' + arrUnitId[i] + '">' + arrUnitName[i] + '</option>');
        }    	
    }
    tab_index.find('.quantity').val('1');
    tab_index.find('.rate').val(jsonobj[0]['retailRate']);
    calculateAmountsByRowIndex(tab_index);
},
});
}

function calculateAmountsByRowIndex(row_index){    
    var rate=parseFloat(row_index.find('.rate').val()==""?"0":row_index.find('.rate').val());
	var netWeight=parseFloat(row_index.find('.netweighttbl').val()==""?"0":row_index.find('.netweighttbl').val());
	var stoneWeight=parseFloat(row_index.find('.stoneweight').val()==""?"0":row_index.find('.stoneweight').val());
	var stoneRate=parseFloat(row_index.find('.stonerate').val()==""?"0":row_index.find('.stonerate').val());
	var grossWeight=parseFloat(row_index.find('.grossweighttbl').val()==""?"0":row_index.find('.grossweighttbl').val());
	var wastage=parseFloat(row_index.find('.wastagetbl').val()==""?"0":row_index.find('.wastagetbl').val());
	var makingCharge=parseFloat(row_index.find('.makingcharge').val()==""?"0":row_index.find('.makingcharge').val());
	
	var totalAmount=netWeight*rate;
	var wMoney=(totalAmount*wastage)/100;
	var totalAmount=totalAmount+wMoney;
	var totalAmount=totalAmount+stoneRate;
	var totalAmount=totalAmount+makingCharge;
	
    row_index.find('.totalamounttbl').html(totalAmount);
	calculateTotalAmount();
}

function callCallculateAmountRow(id){
    var tab_index= $(id).closest('tr');    
    calculateAmountsByRowIndex(tab_index);
}
var tAmount=0;
function calculateTotalAmount(){
	tAmount=0;
	$('.totalamounttbl').each(function(){		
		tAmount+=parseFloat($(this).text()==""?"0":$(this).text());
	});	
	$('#totalAmount').val(tAmount);	
}

function notify(from, align, icon, type, animIn, animOut, msg) {
    	$.notify({
    		icon: icon,
    		title: 'Warning : ',
    		message: msg,
    		url: ''
    	}, {
    		element: 'body',
    		type: type,
    		allow_dismiss: true,
    		placement: {
    			from: from,
    			align: align
    		},
    		offset: {
    			x: 20,
    			y: 20
    		},
    		spacing: 10,
    		z_index: 1031,
    		delay: 2500,
    		timer: 1000,
    		url_target: '_blank',
    		mouse_over: false,
    		animate: {
    			enter: animIn,
    			exit: animOut
    		},
    		template: '<div data-notify="container" class="alert alert-dismissible alert-{0} alert--notify" role="alert" style="background-color:#ccbd0e;">' +
    			'<span data-notify="icon"></span> ' +
    			'<span data-notify="title" style="color:#000;">{1}</span> ' +
    			'<span data-notify="message" style="color:#000;">{2}</span>' +
    			'<div class="progress" data-notify="progressbar">' +
    			'<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
    			'</div>' +
    			'<a href="{3}" target="{4}" data-notify="url"></a>' +
    			'<button type="button" aria-hidden="true" data-notify="dismiss" class="close"><span>×</span></button>' +
    			'</div>'
    	});        
    }

$('#btnSave').click(function(){
	var animIn, animOut;
    var tAmount=$('.totalamounttbl')[0];
	if($('#cashOrParty option:selected').val()==0){
		notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Choose cash or party');
        $('#cashOrParty').focus();
	}
	else if($('#salesAccount option:selected').text()==""){
		notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Choose sales account');
        $('#salesAccount').focus();
	}
    else if(tAmount.innerHTML==""||tAmount.innerHTML==0){
        notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Enter atleast one product details');        
    }
    else{
        var invoiceID=$('#hidInvoiceID').val();        
    }
});
</script>

</body>
</html>