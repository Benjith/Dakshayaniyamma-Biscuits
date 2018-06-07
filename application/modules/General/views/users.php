<?php $this->load->view('Header/header.php');
?>
<section class="content col-lg-10">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Users</h4>

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
                                        <th>Username</th>
                                        <th>Email</th>
                                        <th>User Type</th>
                                        <th>Action</th>
                                   </tr>
                                </thead>
                                <tbody>
                                <?php
									$i = 1;
									foreach ($userData as $key) {?>
                                <tr>
                                    <th scope="row"><?=$i;?></th>
									<td><?=$key->userName;?></td>
                                    <td><?=$key->email;?></td>
                                    <td><?=$key->userType;?></td>
                                    <td><i class="zmdi zmdi-edit zmdi-hc-fw" style="cursor:pointer;" onclick="editUser(<?=$key->userId;?>)"> </i>/<i class="zmdi zmdi-delete zmdi-hc-fw" style="cursor:pointer;" onclick="deleteUser(<?=$key->userId;?>)">  </i></td>
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
                                    <h3 class="card-body__title">Username</h3>

                                    <div class="form-group">
                                        <input type="text" id="username" name="username" class="form-control" value="<?php echo $userInfo['username'] ?>" >
                                        <i class="form-group__bar"></i>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="card-body__title">Email</h3>
                                    <div class="form-group">
                                        <input type="text" id="email" name="email" class="form-control" value="<?php echo $userInfo['email'] ?>">
                                        <i class="form-group__bar"></i>
                                    </div>
                                </div>
                            </div>
							<div class="row">
								<div class="col-md-6">
                                    <h3 class="card-body__title">User Type</h3>
                                    <div class="form-group">
										<select id="userType" name="userType" class="select2" data-minimum-results-for-search="Infinity">
											<option <?php if ($userInfo['userType'] == "User") {?> selected <?php }?> >User</option>
											<option <?php if ($userInfo['userType'] == "Admin") {?> selected <?php }?> >Admin</option>
										</select>
                                        <i class="form-group__bar"></i>
                                    </div>
                                </div>
								<div class="col-md-6">
									<h3 class="card-body__title">Password</h3>
									<div class="form-group">
										<input type="password" id="password" name="password" class="form-control" value="<?php echo $userInfo['password'] ?>">
										<i class="form-group__bar"></i>
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

<script>
    $(document).ready(function () {
    	$('.dataTables_buttons ').remove();
    	$('#data-table_length select option').css('background-color', '#020203');
    });

    function clear() {
    	$('#username').val('');
    	$('#email').val('');
    	document.getElementById('userType').getElementsByTagName('option')[0].selected = 'selected'
		$('#select2-userType-container').attr('title','User');
		$('#select2-userType-container').html('User');
    	$('#password').val('');
		$('#username').focus();
		$('#hidUserId').val('');
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
	$('#btnClear').click(function(){
		clear();
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

    $('#btnSave').click(function () {
    	if ($('#username').val() == "") {
    		var animIn, animOut;
    		notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Username is required!');
    		$('#username').focus();
    	} else if ($('#password').val() == "") {
    		var animIn, animOut;
    		notify("top", "right", "fa fa-comments", "inverse", animIn, animOut, 'Password is required!');
    		$('#password').focus();
    	} else {
    		var userId = 0
    		if ($('#hidUserId').val() == "")
    			userId = <?php echo $userInfo['userId'] ?>;
    		else
    			userId = $('#hidUserId').val();
    		var msg = "";
    		if (userId == 0)
    			msg = "Saved successfully";
    		else if (userId > 0)
    			msg = "Updated successfully";
    		$.ajax({
    			url: '<?php echo site_url('General/Users')?>',
    			datatype: 'json',
    			data: {
    				userId: userId,
    				username: $('#username').val(),
    				email: $('#email').val(),
    				userType: $('#userType option:selected').val(),
    				password: $('#password').val()
    			},
    			method: 'post',
    			success: function (resp) {
    				swal({
    					title: 'Users',
    					text: msg,
    					type: 'success',
    					buttonsStyling: false,
    					showConfirmButton: false,
    					confirmButtonClass: 'btn btn-sm btn-light',
    					background: 'rgba(0, 0, 0, 0.96)'
    				})
    				setTimeout(function () {
    					location.reload();
    				}, 1000);
    			}
    		});
    	}
    });

    function editUser(userId) {
    	if (userId > 0) {
    		$.ajax({
    			url: '<?php echo site_url('General/userViewById') ?>',
    			datatype: 'json',
    			data: {
    				userId: userId
    			},
    			method: 'post',
    			success: function (resp) {
    				switchTabNew();
    				var user = $.parseJSON(resp);
    				$('#username').val(user['userName']);
					$('#email').val(user['email']);
					if(user['userType']=='User')
						document.getElementById('userType').getElementsByTagName('option')[0].selected = 'selected'
					else if(user['userType']=='Admin')
						document.getElementById('userType').getElementsByTagName('option')[1].selected = 'selected'
					$('#select2-userType-container').attr('title',user['userType']);
                    $('#select2-userType-container').html(user['userType']);
    				$('#password').val(user['password']);
    				$('#btnSave').html('Update');
    				$('#hidUserId').val(user['userId']);
    			}
    		});
    	}
    }

    function deleteUser(userId) {
    	if (userId > 0) {
    		swal({
    			title: 'Are you sure?',
    			text: 'This user will be deleted!',
    			type: 'warning',
    			showCancelButton: true,
    			buttonsStyling: false,
    			confirmButtonClass: 'btn btn-danger',
    			confirmButtonText: 'Yes, delete it!',
    			cancelButtonClass: 'btn btn-light',
    			background: 'rgba(0, 0, 0, 0.96)'
    		}).then(function () {
    			$.ajax({
    				url: '<?php echo site_url('General/userDeleteById') ?>',
    				datatype: 'json',
    				data: {
    					userId: userId
    				},
    				method: 'post',
    				success: function (resp) {
    					swal({
    						title: 'Users',
    						text: resp,
    						type: 'success',
    						buttonsStyling: false,
    						showConfirmButton: false,
    						confirmButtonClass: 'btn btn-sm btn-light',
    						background: 'rgba(0, 0, 0, 0.96)'
    					})
    					setTimeout(function () {
    						location.reload();
    					}, 1000);
    				}
    			});
    		});
    	}
	}	


</script>

</body>
</html>