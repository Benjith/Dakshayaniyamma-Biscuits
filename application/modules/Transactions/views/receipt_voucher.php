<?php $this->load->view('Header/header.php');
?>
<section class="content  col-lg-10">
     <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Receipt Voucher </h4>
            
            <div class="tab-container">
                <ul class="nav nav-tabs" role="tablist" id="myTab">
                     <li class="nav-item" id="addli">
                        <a class="nav-link active" data-toggle="tab" href="#addnew" role="tab">Add New</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " data-toggle="tab" href="#list" role="tab">List</a>
                    </li>
                   
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade " id="list" role="tabpanel">
                                       
                       
                        <table id="data-table" class=" table table-responsive table-hover "  >
                            <thead >
                                <tr>
                                    <th>#</th>
                                    <th>Prefix</th>
                                    <th>Voucher</th>
                                    <th>Account</th>
                                    <th>total in ₹</th>
                                    <th>Edit/Delete</th>
                                </tr>
                            </thead>
                            <tbody >
                                <?php
                                $i=1;
                                foreach ($receiptvoucher as $keyvoucher) { ?>
                                <tr>
                                    <td scope="row"><?= $i; ?></td>
                                    <td><?= $keyvoucher->prefix; ?></td>
                                    <td><?= $keyvoucher->VoucherNo; ?></td>
                                    <td><?= $keyvoucher->ledgerSecond; ?></td>
                                    <td ><?= $keyvoucher->total; ?></td>
                                    <td><i class="zmdi zmdi-edit zmdi-hc-fw" onclick="editVoucher(<?= $keyvoucher->receiptID; ?>)"> </i>/<i class="zmdi zmdi-delete zmdi-hc-fw" onclick="delVoucher(<?= $keyvoucher->receiptID; ?>)">  </i></td>
                                </tr>
                                <?php $i++; } ?>
                                
                                
                            </tbody>
                        </table>
                        
                    </div>
               
                   
                    <div class="tab-pane active fade show" id="addnew" role="tabpanel">
                        
                        <div class="card-body">
                           
                           <form method="post" action="<?= site_url('Transactions/addNewReceiptVoucher'); ?>" >
                        <div class="row createNewVoucher">
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="hiddenreceiptvoucherid" id="hiddenreceiptvoucherid" hidden="hidden" value="">
                                    <label>Prefix - Voucher</label>
                                    <input disabled type="text" class="form-control" name="prefix" id="prefix" value="RV/0 - 1">
                                    <i class="form-group__bar"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date</label>
                                    <div class="form-group">
                                        <input type="text" class="form-control date-picker input-mask" data-mask="00/00/0000" id="datepicker" hidden name="datepicker">
                                        <input class="form-control" type="text" name="datenow" id="datenow" value="<?= date('l-d/m/Y') ?>" disabled >
                                        <i class="form-group__bar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Bank/Cash</label>
                                    <select required="required" class="form-control" name="bankorcash" id="bankorcash">
                                        <option value="0">--Select any one--</option>
                                        <?php foreach ($bankorcash as $key ) { ?>
                                        <option value="<?= $key->ledgerId; ?>"><?= $key->ledgerName; ?></option>
                                    <?php } ?>                                            </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Account</label>
                                    
                                    <select required="required" class="form-control select2" name="account" id="account">
                                        <option value="0">---Select any one ---</option>
                                        <?php foreach ($ledger as $keyaccount ) { ?>
                                        <option value="<?= $keyaccount->ledgerId; ?>"><?=  $keyaccount->ledgerName; ?> </option>
                                        <?php  } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Description</label>
                                    <input type="text" id="desc" name="desc" class="form-control" >
                                    <i class="form-group__bar"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Amount</label>
                                    <input required="required" type="number" name="amount" id="amount" class="form-control" >
                                    <i class="form-group__bar"></i>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="text-center">
                                    <button type="button" name="submit" id="submitnew"  class="btn btn-primary">Save</button>
                                    <button type="button" name="clear" id="clear"  class="btn btn-light">Clear </button>
                                </div>
                            </div>
                            
                        </div></form>
                           
                            
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    </section>
    <footer class="footer hidden-xs-down">
        <p><?= $this->lang->line('company_title'); ?>. All rights reserved.</p>
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
    <script src="<?php echo asset_url();?>/vendors/bower_components/jquery/dist/jquery.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/popper.js/dist/umd/popper.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/jquery.scrollbar/jquery.scrollbar.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/jquery-scrollLock/jquery-scrollLock.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/salvattore/dist/salvattore.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/flot/jquery.flot.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/flot/jquery.flot.resize.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/jqvmap/dist/jquery.vmap.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/peity/jquery.peity.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/moment/min/moment.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
    <!-- Charts and maps-->
    <script src="<?php echo asset_url();?>/demo/js/flot-charts/curved-line.js"></script>
    <script src="<?php echo asset_url();?>/demo/js/flot-charts/line.js"></script>
    <script src="<?php echo asset_url();?>/demo/js/flot-charts/chart-tooltips.js"></script>
    <script src="<?php echo asset_url();?>/demo/js/other-charts.js"></script>
    <script src="<?php echo asset_url();?>/demo/js/jqvmap.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
    <!-- App functions and actions -->
    <script src="<?php echo asset_url();?>/js/app.min.js"></script>
    <!-- Vendors: Data tables -->
    <script src="<?php echo asset_url();?>/vendors/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/jszip/dist/jszip.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/autosize/dist/autosize.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/flatpickr/dist/flatpickr.min.js"></script>
    <script src="<?php echo asset_url();?>/vendors/bower_components/jquery-mask-plugin/dist/jquery.mask.min.js"></script>
    <!-- javascript code -->
    <script type="text/javascript">
    $('#clear').click(function(){
    $('#datepicker').attr('hidden','hidden');
    $('#datenow').removeAttr('hidden');
    $('#submitnew').html('save');
    $('#submitnew').prop('class','btn btn-primary');
    $('.createNewVoucher #desc').val("");
    $('.createNewVoucher #amount').val("");
    $('.createNewVoucher #bankorcash').val(0);
    $('.createNewVoucher #account').val(0).trigger('change');
    }) ;
    $('#submitnew').click(function(){
    $('#submitnew').attr('type','submit');
    $('#submitnew').click();
    });
    
   
    function delVoucher(id){
    swal({
    title: 'Are you sure?',
    text: 'This Receipt Voucher will be deleted!',
    type: 'warning',
    showCancelButton: true,
    buttonsStyling: false,
    confirmButtonClass: 'btn btn-danger',
    confirmButtonText: 'Yes, delete it!',
    cancelButtonClass: 'btn btn-light',
    background: 'rgba(0, 0, 0, 0.96)'
    }).then(function(){
    cnfrmDel();
    swal({
    timer: 1000,
    title: 'Deleted!',
    text: '',
    type: 'success',
    buttonsStyling: false,
    showConfirmButton: false,
    confirmButtonClass: 'btn btn-light',
    background: 'rgba(0, 0, 0, 0.96)'
    });
    setTimeout(function() {location.reload();}, 1000);
    });
    function cnfrmDel(){
    $.ajax({
    data:{id:id},
    url:'<?= site_url('Transactions/delReceiptVoucher'); ?>',
    method:'post',
    datatype:'json',
    success:function(response){
    }
    });
    }
    }
    function editVoucher(id){ //fetch with id
    $.ajax({
    url:'<?= site_url('Transactions/fetchVoucherWithId'); ?>',
    datatype:'json',
    method:'post',
    data:{id:id},
    success:function(response){
    var obj= $.parseJSON(response);
    //alert(obj[0]['VoucherNo']+'/'+obj[0]['prefix']);
    $('#myTab a:first').tab('show');
    
    $('#submitnew').html('update');
    $('#submitnew').prop('class','btn btn-info');
    $('#hiddenreceiptvoucherid').val(obj[0]['receiptID']);
    $('#prefix').val(obj[0]['prefix']+'/'+obj[0]['VoucherNo']);
    $('#datenow').attr('hidden','hidden');
    $('#datepicker').removeAttr('hidden');
    $('#datepicker').val(obj[0]['voucherDate']);
    $('#bankorcash').val(obj[0]['ledgerFirst']);
    $('#account').val(obj[0]['ledgerSecond']).trigger('change');
    $('#desc').val(obj[0]['description']);
    $('#amount').val(obj[0]['total']);
    
    }
    });
    }
    </script>
    <!-- javascript code -->
</body>
</html>