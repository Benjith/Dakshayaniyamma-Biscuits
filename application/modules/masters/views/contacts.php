<?php $this->load->view('Header/header.php');
?>
<section class="content col-lg-10  ">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Product </h4>
            
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
                                    <form action="<?php echo site_url('masters/addnewContact'); ?>" id="formDrop" method="POST" class="dropzone"  >
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Contact Name</label>
                                                    <input type="text" class="form-control"  name="name">
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Address</label>
                                                    <input type="text" name="add" class="form-control" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <input type="text" name="city" class="form-control" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>State</label>
                                                    <input type="text" name="state" class="form-control" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>State Code</label>
                                                    <input type="text" class="form-control" name="sc" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Land Phone</label>
                                                    <input type="number" class="form-control" name="land" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Mobile</label>
                                                    <input type="tel" class="form-control" name="mobile" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="email" class="form-control" name="email" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>DL Number</label>
                                                    <input type="number" class="form-control" name="dlNumber" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Credit Period</label>
                                                    <input type="number" class="form-control" name="creditPeriod" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>GSTIN</label>
                                                    <input type="text" n class="form-control" name="gst" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Description</label>
                                                    <input type="text" name="desc" class="form-control"  >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Opening Balance</label>
                                                    <input type="number" class="form-control" name="op" >
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6 eklavyaradiodown">
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="btn-group" data-toggle="buttons">
                                                            <label class="btn btn-light">
                                                                <input type="radio" name="crordr" value="cr" id="creditradiomodal"  autocomplete="off"> Credit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </label>
                                                            <label class="btn btn-light">
                                                                <input type="radio" name="crordr" value="dr" id="debitradiomodal" autocomplete="off"> Debit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            </label>
                                                        </div>
                                                        
                                                    </div>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <div class="col-md-3">
                                                        <div class="btn-group" data-toggle="buttons">
                                                            <label class="btn btn-light">
                                                                <input type="radio" name="type" value="Supplier" id="creditradiomodal"  autocomplete="off"> Supplier&nbsp;
                                                            </label>
                                                            <label class="btn btn-light">
                                                                <input type="radio" name="type" value="Customer" id="debitradiomodal" autocomplete="off"> Customer
                                                            </label>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="clearfix"></div>
                                        <div class="mt-5 text-center">
                                            <button type="submit" name="submit" id="save"  class="btn btn-primary">Save </button>
                                            <!-- <a href="#" class="btn btn-light">Save new contact</a> -->
                                            <a href="<?= site_url('Masters/Contacts') ?>" class="btn btn-light">Clear</a>
                                        </div>
                                    </div>
                                </form>
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
                    <?= form_open('masters/editPostdatacontact'); ?>
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
                            <h3 class="card-body__title">Description</h3>
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
                                    <input type="radio" name="crordr" value="Cr" id="creditradiomodal"  autocomplete="off"> Credit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                                <label class="btn btn-light">
                                    <input type="radio" name="crordr" value="Dr" id="debitradiomodal" autocomplete="off"> Debit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                            </div>
                            <div>&nbsp;</div>
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-light">
                                    <input type="radio" name="type" value="Supplier" id="supplierradiomodal" autocomplete="off">Supplier
                                </label>
                                <label class="btn btn-light">
                                    <input type="radio" name="type" value="Customer" id="customerradiomodal"  autocomplete="off" >Customer
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
<script src="<?php echo asset_url();?>/vendors/bower_components/dropzone/dist/min/dropzone.min.js"></script>
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
<script type="text/javascript">
Dropzone.options.formDrop = {
//remove button for each thumbainl
addRemoveLinks: true,
// Prevents Dropzone from uploading dropped files immediately
autoProcessQueue: false,
maxFiles: 1,
init: function() {
this.on("maxfilesexceeded", function(file){
this.removeAllFiles();
this.addFile(file);
});
var submitButton = document.querySelector("#save")
myDropzone = this; // closure
submitButton.addEventListener("click", function(e) {
myDropzone.processQueue();
// Tell Dropzone to process all queued files.
});
// You might want to show the submit button only when
// files are dropped here:
this.on('sending', function(file, xhr, formData) {
// Append all form inputs to the formData Dropzone will POST
var data = $('#formDrop').serializeArray();
$.each(data, function(key, el) {
formData.append(el.name, el.value);
});
});
}
}
</script>
<script type="text/javascript">
$( document ).ready(function(){
$('#data-table_length select option').css('background-color','#020203');
});
// Warning Message

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
});
function cnfrmDel(){
$.ajax({
data:{id:id},
url:'<?= site_url('masters/delContact'); ?>',
method:'post',
datatype:'json',
success:function(response){    
    if(response=="success"){
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
    }
    else if(response=="reference"){
        swal({
            timer: 1000,
            title: 'Reference Occured!',
            text: 'Cannot delete this record, reference exists!',
            type: 'warning',
            buttonsStyling: false,
            showConfirmButton: false,
            confirmButtonClass: 'btn btn-light',
            background: 'rgba(0, 0, 0, 0.96)'
            });            
    }
}
})
}
}
function editContact(id){
$('#modal-default').modal();
$('#hiddencontactvalue').val(id);
$.ajax({
data:{id:id},
url:'<?= site_url('masters/editContactfetchdata') ?>',
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
var crordr=data[0]['CrOrDr'];
if(!crordr==""){
if(crordr=="Cr"){
$('#creditradiomodal').click()
}
else if(crordr=="Dr"){ //type==dr
$('#debitradiomodal').click();
}
}
var type =data[0]['type'];
if(!type==""){
if(type=="Supplier"){
$('#supplierradiomodal').click();
}
else if(type=="Customer"){
$('#customerradiomodal').click();
}
}
}
});
}
</script>
</body>
</html>
