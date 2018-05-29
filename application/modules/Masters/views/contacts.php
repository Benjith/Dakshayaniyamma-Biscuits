<?php $this->load->view('Header/header.php');
?>

<section class="content col-lg-10">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Unit</h4>
            
            <div class="tab-container">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#list" role="tab">List</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#addnew" role="tab">Add New</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active fade show" id="list" role="tabpanel">
                       <div class="table-responsive table-hover">
                            <table id="data-table" class="table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Mobile</th>
                                        <th>City</th>
                                        <th>Type</th>
                                        <th>Opening Balance</th>
                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i=1;
                                    foreach ($contacts as $key) { ?>
                                    <tr>
                                        <th scope="row"><?= $i; ?></th>
                                        <td><?= $key->contactName; ?></td>
                                        <td><?= $key->mobile; ?></td>
                                        <td><?= $key->city; ?></td>
                                        <td><?= $key->type; ?></td>
                                        <td><?= $key->openingBalance; ?></td>
                                        <td><i class="zmdi zmdi-edit zmdi-hc-fw" onclick="editContact(<?= $key->contactId; ?>)"> </i>/<i class="zmdi zmdi-delete zmdi-hc-fw" onclick="delContact(<?= $key->contactId; ?>)">  </i></td>
                                    </tr>
                                    <?php $i++; } ?>
                                    
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="addnew" role="tabpanel">
                       <div class="content__inner content__inner--sm">
    <div class="card new-contact">
        <!-- form -->
        
            <div class="new-contact__header">
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Product Code</label>
                            <input type="text" class="form-control" placeholder="i.e. #33365" name="Productcode">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Product Name</label>
                            <input type="text" name="Productname" class="form-control" placeholder="i.e. Smith">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                  
                  
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>HSN/SAC</label>
                            <input type="text" class="form-control" name="HSNSAC" placeholder="i.e. 72141546">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>GST Rate</label>
                            <input type="text" class="form-control" name="GST" placeholder="i.e. 12.5">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Purchase Rate</label>
                            <input type="number" class="form-control" name="pr" placeholder="i.e. 558.28?">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Wholesale Rate</label>
                            <input type="number" class="form-control" name="ws" placeholder="457?">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Retail Rate</label>
                            <input type="number" class="form-control" name="rr" placeholder="i.e. 758.28?">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Consumer Rate</label>
                            <input type="number" class="form-control" name="cr" placeholder="657?">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>MRP</label>
                            <input type="number" name="mrp" class="form-control"  placeholder="780?">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Opening Stock</label>
                            <input type="number" n class="form-control" name="os" placeholder="12.54?">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Reorder Level</label>
                            <input type="number" class="form-control" name="rl" placeholder="0">
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    
                </div>
                <div class="class="col-md-6"">
                    <div class="form-group">
                        <label>Description</label>
                        <textarea class="form-control textarea-autosize" name="desc" placeholder="i.e. notes."></textarea>
                        <i class="form-group__bar"></i>
                    </div>
                </div>
                
                <div class="clearfix"></div>
                <div class="mt-5 text-center">
                    <button type="submit" name="submit" id="submitnew"  class="btn btn-primary">Save </button>
                    <!-- <a href="#" class="btn btn-light">Save new contact</a> -->
                    <a href="<?= site_url('Masters/Contacts') ?>" class="btn btn-light">Clear</a>
                </div>
            </div>
      
    </div>
</div>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
  <!-- Default Modal strat-->
    <div class="modal fade" id="modal-default" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title pull-left">Edit Product</h5>
                </div>
                <div class="modal-body">
                    <?= form_open('Masters/editPostdatacontact'); ?>
                    <input type="hidden" id="hiddencontactvalue" value="" name="hiddencontactvalue">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">Contact Name</h3>
                            <div class="form-group">
                                <input type="text" id="editname"  name="editname" value="" required="required" class="form-control"  >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Address</h3>
                            <div class="form-group">
                                <input type="text" id="editadd" name="editadd" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">City</h3>
                            <div class="form-group">
                                <input type="text" id="editcity" name="editcity" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <h3 class="card-body__title">State</h3>
                            <div class="form-group">
                                <input type="text" id="editstate" name="editstate" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">State Code</h3>
                            <div class="form-group">
                                <input type="text" id="editsc" name="editsc" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Land Phone</h3>
                            <div class="form-group">
                                <input type="text" id="editland" name="editland" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">Mobile</h3>
                            <div class="form-group">
                                <input type="text" id="editmobile" name="editmobile" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Email</h3>
                            <div class="form-group">
                                <input type="text" id="editemail" name="editemail" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">Dl Number</h3>
                            <div class="form-group">
                                <input type="text" id="dlNumber" name="dlNumber" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Credit Period</h3>
                            <div class="form-group">
                                <input type="text" id="creditPeriod" name="creditPeriod" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">GSTIN </h3>
                            <div class="form-group">
                                <input type="text" id="editgst" name="editgst" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Credit Period</h3>
                            <div class="form-group">
                                <input type="text" id="description" name="description" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">Opening Balance</h3>
                            <div class="form-group">
                                <input type="text" id="editop" name="editop" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-light">
                                    <input type="radio" name="crordr" value="cr" id="crordrradiomodal"  autocomplete="off"> Credit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                                <label class="btn btn-light">
                                    <input type="radio" name="crordr" value="dr" id="crordrradiomodal" autocomplete="off"> Debit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                            </div>
                            <div>&nbsp;</div>
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-light">
                                    <input type="radio" name="type" value="supplier" id="supplierradiomodal" autocomplete="off">Supplier
                                </label>
                                <label class="btn btn-light">
                                    <input type="radio" name="type" value="customer" id="customerradiomodal"  autocomplete="off" >Customer
                                </label>
                            </div>
                        </div>
                        
                        
                    </div>
                </div>
                
                <div class="modal-footer">
                    <button type="submit" name="submit" class="btn btn-link" >Save changes</button>
                    <button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
    </div>
    
    <!-- Default Modal strat-->
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
<script src="<?php echo asset_url();?>/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>
<script src="<?php echo asset_url();?>/vendors/bower_components/dropzone/dist/min/dropzone.min.js"></script>
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
<script src="<?php echo asset_url();?>/vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
<!-- App functions and actions -->
<script src="<?php echo asset_url();?>/js/app.min.js"></script>
<script type="text/javascript">
$( document ).ready(function(){
$('.dataTables_buttons ').remove();
$('#data-table_length select option').css('background-color','#020203');
});
// Warning Message
$('#sa-success').click(function(){
if($('#groupname').val()==""){
swal({
timer: 1000,
title: 'Please Enter Valid Group Name',
text: '',
type: 'warning',
buttonsStyling: false,
showConfirmButton: false,
confirmButtonClass: 'btn btn-sm btn-light',
background: 'rgba(0, 0, 0, 0.96)'
})
}
else{
var desc=$('#desc').val();
var groupname=$('#groupname').val();
$.ajax({
method:'post',
url: '<?= site_url('Masters/addProductGroup') ?>',
data:{groupname: groupname, desc: desc},
datatype:'json',
success:function(response){
swal({
title: 'New Product Group Added!',
showConfirmButton:false,
text: '',
type: 'success',
buttonsStyling: false,
confirmButtonClass: 'btn btn-sm btn-light',
background: 'rgba(0, 0, 0, 0.96)'
});
setTimeout(function() {location.reload();}, 1000);
}
});
}
});
</script>
<script type="text/javascript">
function clearfun(){
$('#desc').val('');
$('#groupname').val('');
}
</script>
<script type="text/javascript">
function delContact(id){
// Warning Message with function
swal({
title: 'Are you sure?',
text: 'This Contact will be deleted!',
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
url:'<?= site_url('Masters/delContact'); ?>',
method:'post',
datatype:'json',
success:function(response){
}
})
}
}
function editContact(id){
$('#modal-default').modal();
$('#hiddencontactvalue').val(id);
$.ajax({
data:{id:id},
url:'<?= site_url('Masters/editContactfetchdata') ?>',
datatype:'json',
method:'post',
success:function(response){
var data= $.parseJSON(response);
$('#editname').val(data[0]['contactName']);
$('#editadd').val(data[0]['address']);
$('#editcity').val(data[0]['city']);
$('#editstate').val(data[0]['state']);
$('#editsc').val(data[0]['stateCode']);
$('#editland').val(data[0]['phoneNumber']);
$('#editmobile').val(data[0]['mobile']);
$('#editemail').val(data[0]['emailId']);
$('#dlNumber').val(data[0]['dlNumber']);
$('#creditPeriod').val(data[0]['creditPeriod']);
$('#editgst').val(data[0]['gstIn']);
$('#description').val(data[0]['description']);
$('#editop').val(data[0]['openingBalance']);
var crordr=data[0]['crOrDr'];
if(!crordr==""){
if(crordr=="cr"){
$('#creditradiomodal').click()
}
else if(crordr==dr){ //type==dr
$('#debitradiomodal').click();
}
}
var type =data[0]['type'];
if(!type==""){
if(type==""){
$('#supplierradiomodal').click();
}
else if(type==""){
$('$customerradiomodal').click();
}
}
}
});
}
</script>
</body>
</html>