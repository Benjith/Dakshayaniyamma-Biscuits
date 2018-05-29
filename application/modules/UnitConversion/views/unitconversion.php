<?php $this->load->view('Header/header.php');
?>
<section class="content col-lg-10">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Unit Conversion</h4>

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
                                        <th>Main Unit</th>
                                        <th>Conv. Unit</th>
                                        <th>Rate</th>
                                        <th>Action</th>
                                   </tr>
                                </thead>
                                <tbody>
                                <?php
									$i = 1;
									foreach ($conversions as $key) {?>
                                <tr>
                                    <th scope="row"><?=$i;?></th>
									<td><?=$key->mainUnit;?></td>
                                    <td><?=$key->conversionUnit;?></td>
                                    <td><?=$key->conversionRate;?></td>
                                    <td><i class="zmdi zmdi-edit zmdi-hc-fw" style="cursor:pointer;" onclick="editUser(<?=$key->unitConversionId;?>)"> </i>/<i class="zmdi zmdi-delete zmdi-hc-fw" style="cursor:pointer;" onclick="deleteUser(<?=$key->unitConversionId;?>)">  </i></td>
                                </tr>
                                <?php $i++;}?>

                            </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="addnew" role="tabpanel">
                        <div class="card-body">
                        <input type="hidden" id="hidUserId" value="" name="hidUserId">
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="card-body__title">Main Unit</h3>
                                    <div class="form-group">
										<select id="mainUnit" name="mainUnit" class="select2">
                                            <option value="0" selected>--Select--</option>
                                            <?php
                                            $i=1;
                                            foreach($units as $key){?>
                                            <option value="<?=$key->unitId?>"><?=$key->unitName?></option>
                                            <?php $i++;} ?>
										</select>
                                        <i class="form-group__bar"></i>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="card-body__title">Conversion Unit</h3>
                                    <select id="conversionUnit" name="conversionUnit" class="select2">
                                        <option value="0" selected>--Select--</option>
                                        <?php
                                        $i=1;
                                        foreach($units as $key){?>
                                        <option value="<?=$key->unitId?>"><?=$key->unitName?></option>
                                        <?php $i++;} ?>
                                    </select>
                                    <i class="form-group__bar"></i>
                                </div>
                            </div>
							<div class="row">								
								<div class="col-md-6">
									<h3 class="card-body__title">Conversion Rate</h3>
									<div class="form-group">
										<input type="text" id="conversionRate" name="conversionRate" class="form-control" onkeypress="return validateFloatKeyPress(this,event);">
										<i class="form-group__bar"></i>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 pull-right">
                                    <div class="btn-demo form-group">
										<button class="btn btn-primary pull-right" id="btnSave">Save</button>
										<button class="btn btn-info pull-right" id="btnClear">Clear</button>
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
    	$('.dataTables_buttons ').remove();
    	$('#data-table_length select option').css('background-color', '#020203');
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
    
    $('#btnSave').click(function(){
        if($('#mainUnit option:selected').val()==0){
            var animIn, animOut;
            notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Unit conversion cannot proceed without main unit');
        }
        else if($('#conversionUnit option:selected').val()==0){
            var animIn, animOut;
            notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Unit conversion cannot proceed without conversion unit');
        }
        else if($('#conversionRate').val()==""||$('#conversionRate').val()==0){
            var animIn, animOut;
            notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Please specify conversion rate.');
            $('#conversionRate').focus();
        }
        else{
            
        }
    });

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

</script>

</body>
</html>