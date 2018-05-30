<?php $this->load->view('Header/header.php');
?>
<section class="content col-md-10">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Payment Voucher</h4>

            <div class="tab-container">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#addnew" role="tab" id="navNew">Add New</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#list" role="tab" id="navList">List</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active fade show" id="list" name="list" role="tabpanel">
                        <div class="table-responsive table-hover" id="tblData" name="tblData">
                            <table id="data-table" class="table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Voucher No</th>
                                        <th>Voucher Date</th>
                                        <th>Bank/Cash</th>
                                        <th>Ledger</th>
                                        <th>Amount</th>
                                        <th>Action</th>
                                   </tr>
                                </thead>
                                <tbody>
                                <?php
									$i = 1;
									foreach ($paymentGridData as $key) {?>
                                <tr>
                                    <th scope="row"><?=$i;?></th>
									<td><?=$key->VoucherNo;?></td>
                                    <td><?=$key->voucherDate;?></td>
                                    <td><?=$key->bankOrCash;?></td>
                                    <td><?=$key->account;?></td>
                                    <td><?=$key->total;?></td>
                                    <td><i class="zmdi zmdi-edit zmdi-hc-fw" style="cursor:pointer;" onclick="unitConversionEdit(<?=$key->paymentID;?>)"> </i>/<i class="zmdi zmdi-delete zmdi-hc-fw" style="cursor:pointer;" onclick="unitConversionDelete(<?=$key->paymentID;?>)">  </i></td>
                                </tr>
                                <?php $i++;}?>

                            </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="addnew" role="tabpanel">
                        <div class="card-body">
                        <input type="hidden" id="hidPaymentID" value="0" name="hidPaymentID">
                            <div class="row">
                                <div class="col-md-3">
                                    <h3 class="card-body__title">Voucher No</h3>                                    
									<div class="form-group">
										<input type="text" id="voucherNo" name="voucherNo" class="form-control" value="###" readonly="readonly">
										<i class="form-group__bar"></i>
									</div>
                                </div>
                                <div class="col-md-1">&nbsp;</div>
                                <div class="col-md-4">
                                    <h3 class="card-body__title">Voucher Date</h3>                                    
									<div class="input-group">
                                        <span class="input-group-addon"><i class="zmdi zmdi-calendar"></i></span>
                                        <div class="form-group">
                                            <input type="text" id="voucherDate" name="voucherDate" class="form-control date-picker" placeholder="Pick a date">
                                            <i class="form-group__bar"></i>
                                        </div>
                                    </div>
                                </div>                                
                            </div>
							<div class="row">								
                                <div class="col-md-4">
                                    <h3 class="card-body__title">Cash/Bank</h3>
                                    <div class="form-group">
                                    <select id="cashOrBank" name="cashOrBank" class="select2">
                                        <option value="0">--Select--</option>
                                        <?php
                                        $i=1;
                                        foreach($bankOrCash as $key){?>
                                        <option value="<?=$key->ledgerId?>"><?=$key->ledgerName?></option>
                                        <?php $i++;} ?>
                                    </select>
                                    <i class="form-group__bar"></i>
                                    </div>
                                </div>
								<div class="col-md-5">
                                    <h3 class="card-body__title">Account</h3>
                                    <div class="form-group">
                                    <select id="account" name="account" class="select2">
                                        <option value="0">--Select--</option>
                                        <?php
                                        $i=1;
                                        foreach($ledger as $key){?>
                                        <option value="<?=$key->ledgerId?>"><?=$key->ledgerName?></option>
                                        <?php $i++;} ?>
                                    </select>
                                    <i class="form-group__bar"></i>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <h3 class="card-body__title">Total Amount</h3>                                    
									<div class="form-group">
										<input type="text" id="totalAmount" name="totalAmount" class="form-control" placeholder="0.00" onkeypress="validateFloatKeyPress(this,event);">
										<i class="form-group__bar"></i>
									</div>
                                </div>
							</div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea name="description" id="description" rows="3" class="form-control" placeholder="Description">
                                        </textarea>
                                    </div>
                                </div>
                            </div>
							<div class="row">
								<div class="col-md-12 pull-right">
                                    <div class="btn-demo form-group">
										<button class="btn btn-primary pull-right" id="btnSave">Save</button>
										<button class="btn btn-light pull-right" id="btnClear">Clear</button>
									</div>
                                </div>
							</div>
                            <br>
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
    function formattedDate(d = new Date) {
        let month = String(d.getMonth() + 1);
        let day = String(d.getDate());
        const year = String(d.getFullYear());

        if (month.length < 2) month = '0' + month;
        if (day.length < 2) day = '0' + day;

        return `${year}-${month}-${day}`;
    }

    $(document).ready(function () {
    	$('.dataTables_buttons ').remove();
    	$('#data-table_length select option').css('background-color', '#020203');
        $('#description').val('');        
        $('#voucherDate').val(formattedDate());
    });

    function validateFloatKeyPress(el, evt) {
    	var charCode = (evt.which) ? evt.which : event.keyCode;
    	var number = el.value.split('.');
    	if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
    		return false;
    	}
    	//just one dot (thanks ddlab)
    	if (number.length > 1 && charCode == 46) {
    		return false;
    	}
    	//get the carat position
    	var caratPos = getSelectionStart(el);
    	var dotPos = el.value.indexOf(".");
    	if (caratPos > dotPos && dotPos > -1 && (number[1].length > 1)) {
    		return false;
    	}
    	return true;
    }

    function getSelectionStart(o) {
    	if (o.createTextRange) {
    		var r = document.selection.createRange().duplicate()
    		r.moveEnd('character', o.value.length)
    		if (r.text == '') return o.value.length
    		return o.value.lastIndexOf(r.text)
    	} else return o.selectionStart
    }        

    function switchTabNew() {
    	$('#navList').removeClass('active');
    	$('#navList').attr('aria-expanded', 'false')
    	$('#navNew').addClass('nav-link active');
    	$('#navNew').attr('aria-expanded', 'true')
    	$('#list').attr('aria-expanded', 'false')
    	$('#addnew').attr('aria-expanded', 'true')
    	$('#list').removeClass('active show');
    	$('#addnew').addClass('active show');
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
        $('#btnSave').click(function(){
            var animIn, animOut;
            if($('#voucherDate').val()==""){                
                notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Select voucher date');
                $('#voucherDate').focus();
            }
            else if($('#bankOrCash option:selected').val()==0){
                notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Select payment method');
            }
            else if($('#account option:selected').val()==0){
                notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Select payment received account.');
            }
            else{
                var paymentID=$('#hidPaymentID').val();
                $.ajax({
                    url: '<?php echo site_url('Transactions/PaymentVoucher')?>',
                    datatype: 'json',
                    data: {
                        paymentID:paymentID,
                        voucherDate:$('voucherDate'),
                        bankOrCash:$('#bankOrCash option:selected').val(),
                        account:$('#account option:selected').val(),
                        totalAmount:$('#totalAmount').val(),
                        description:$('#description').val()
                    },
                    method: 'post',
                    success: function (resp) {
                        swal({
                            title: 'Payment Voucher',
                            text: resp,
                            type: 'success',
                            buttonsStyling: false,
                            showConfirmButton: false,
                            confirmButtonClass: 'btn btn-sm btn-light',
                            background: 'rgba(0, 0, 0, 0.96)'
                        })
                        setTimeout(function () {
                            location.reload();
                        }, 500);
                    }
                }); 
            }
        });
    }

</script>

</body>
</html>