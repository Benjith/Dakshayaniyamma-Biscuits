<?php $this->load->view('Header/header.php');
?>
<section class="content--full  ">
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
                                        <th>Code</th>
                                        <th>Product Name</th>
                                        <th>Unit</th>
                                        <th>Group</th>
                                        <th>Purchase Rate</th>
                                        <th>Sales Rate</th>
                                        <th>Opening Stock</th>
                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $i=1;
                                    foreach ($product as $key) { ?>
                                    <tr>
                                        <th scope="row"><?= $i; ?></th>
                                        <td><?= $key->productCode; ?></td>
                                        <td><?= $key->productName; ?></td>
                                        <td><?= $key->unitName; ?></td>
                                        <td><?= $key->productGroupName; ?></td>
                                        <td><?= $key->purchaseRate; ?></td>
                                        <td><?= $key->retailRate; ?></td>
                                        <td><?= $key->openingStock; ?></td>
                                        <td><i class="zmdi zmdi-edit zmdi-hc-fw" onclick="editProduct(<?= $key->productId; ?>)"> </i>/<i class="zmdi zmdi-delete zmdi-hc-fw" onclick="delProduct(<?= $key->productId; ?>)">  </i></td>
                                    </tr>
                                    <?php $i++; } ?>
                                    
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="addnew" role="tabpanel">
                        
                        <div class="content__inner content__inner--sm">
                            <div class="card new-contact">
                                <div class="new-contact__header">
                                    
                                    
                                    <form action="<?php echo site_url('Masters/addnewProducts'); ?>" id="formDrop" method="POST" class="dropzone"  >
                                        
                                        
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
                                                    <label>Group</label>
                                                    <select class="select2" name="Group">
                                                        <?php
                                                        foreach ($productgroup as $keygrp ) { ?>
                                                        <option  value="<?= $keygrp->productGroupId; ?>" > <?= $keygrp->productGroupName; ?></option>
                                                        <?php } ?>
                                                    </select>
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Unit</label>
                                                    <select class="select2" name="Unit">
                                                        <?php
                                                        foreach ($unit as $keyunit ) { ?>
                                                        <option value="<?= $keyunit->unitId; ?>" > <?= $keyunit->unitName; ?></option>
                                                        <?php } ?>
                                                    </select>
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
                                                    <input type="number" class="form-control" name="pr" placeholder="i.e. 558.28₹">
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Wholesale Rate</label>
                                                    <input type="number" class="form-control" name="ws" placeholder="457₹">
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Retail Rate</label>
                                                    <input type="number" class="form-control" name="rr" placeholder="i.e. 758.28₹">
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Consumer Rate</label>
                                                    <input type="number" class="form-control" name="cr" placeholder="657₹">
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>MRP</label>
                                                    <input type="number" name="mrp" class="form-control"  placeholder="780₹">
                                                    <i class="form-group__bar"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Opening Stock</label>
                                                    <input type="number" n class="form-control" name="os" placeholder="12.54₹">
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
                                            <a href="<?= site_url('Masters/Products') ?>" class="btn btn-light">Clear</a>
                                        </div>
                                    </div>
                                </div>
                            </form>
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
                    <?= form_open('Masters/editPostdataproduct'); ?>
                    <input type="hidden" id="hiddenproductvalue" value="" name="hiddenproductvalue">
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">Product Code</h3>
                            <div class="form-group">
                                <input type="text" id="editProductcode"  name="editProductcode" value="" class="form-control"  >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Product Name</h3>
                            <div class="form-group">
                                <input type="text" id="editProductname" name="editProductname" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">Group</h3>
                            <div class="form-group">
                                <select id="editGroup" name="editGroup"  class=" form-control" >
                                    <?php foreach ($productgroup as $keygrp) { ?>
                                    <option style="background-color: #030304;color: #ffffff;" value="<?= $keygrp->productGroupId ?>"><?= $keygrp->productGroupName; ?></option>
                                    <?php } ?>
                                    
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Unit</h3>
                            <div class="form-group">
                                <select id="editUnit" name="editUnit"  class=" form-control" >
                                    <?php foreach ($unit as $keyunit) { ?>
                                    <option style="background-color: #030304;color: #ffffff;" value="<?= $keyunit->unitId; ?>"><?= $keyunit->unitName; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">HSN/SAC</h3>
                            <div class="form-group">
                                <input type="text" id="editHSNSAC" name="editHSNSAC" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">GST</h3>
                            <div class="form-group">
                                <input type="text" id="editGST" name="editGST" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">Purchase Rate</h3>
                            <div class="form-group">
                                <input type="text" id="editpr" name="editpr" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title wr_text">Wholesale Rate</h3>
                            <div class="form-group">
                                <input type="text" id="editws" name="editws" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">Retail Rate </h3>
                            <div class="form-group">
                                <input type="text" id="editrr" name="editrr" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Consumer Rate</h3>
                            <div class="form-group">
                                <input type="text" id="editcr" name="editcr" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">MRP</h3>
                            <div class="form-group">
                                <input type="text" id="editmrp" name="editmrp" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Opening Stock</h3>
                            <div class="form-group">
                                <input type="text" id="editos" name="editos" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="card-body__title">Reorder level</h3>
                            <div class="form-group">
                                <input type="text" id="editrl" name="editrl" value="" class="form-control" >
                                <i class="form-group__bar"></i>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h3 class="card-body__title">Description</h3>
                            <div class="form-group">
                                <input type="text" id="editdesc" name="editdesc" value="" class="form-control" >
                                <i class="form-group__bar"></i>
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
var submitButton = document.querySelector("#submitnew")
myDropzone = this; // closure
submitButton.addEventListener("click", function() {
myDropzone.processQueue(); // Tell Dropzone to process all queued files.
});
// You might want to show the submit button only when
// files are dropped here:
this.on("addedfile", function() {
// Show submit button here and/or inform user to click it.
});
}
};
</script>
<script type="text/javascript">
$(document).ready(function(){
$('#data-table_length select option').css('background-color','#020203');
});
// Warning Message
$('#sa-success').click(function(){
if($('#Productname').val()==""){
swal({
timer: 1000,
title: 'Please Enter Valid Product Name',
text: '',
type: 'warning',
buttonsStyling: false,
showConfirmButton: false,
confirmButtonClass: 'btn btn-sm btn-light',
background: 'rgba(0, 0, 0, 0.96)'
})
}
else{
var Productcode = $('#Productcode').val();
var Productname = $('#Productname').val();
var Group = $('#Group').val();
var Unit = $('#Unit').val();
var HSNSAC = $('#HSNSAC').val();
var GST = $('#GST').val();
var pr = $('#pr').val();
var ws = $('#ws').val();
var rr = $('#rr').val();
var cr = $('#cr').val();
var mrp = $('#mrp').val();
var os = $('#os').val();
var rl = $('#rl').val();
var desc = $('#desc').val();
$.ajax({
method:'post',
url: '<?= site_url('Masters/addProduct') ?>',
data:{Productcode:Productcode,
Productname:Productname,
Group:Group,
Unit:Unit,
HSNSAC:HSNSAC,
GST:GST,
pr:pr,
ws:ws,
rr:rr,
cr:cr,
mrp:mrp,
os:os,
rl:rl,
desc:desc},
datatype:'json',
success:function(response){
alert(response);
swal({
title: 'New Product Added!',
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
$('#addnew input[type="text"] ').val("");
$('#addnew #desc ').val("");
}
</script>
<script type="text/javascript">
function delProduct(id){
// Warning Message with function
swal({
title: 'Are you sure?',
text: 'This Product will be deleted!',
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
url:'<?= site_url('Masters/delProduct'); ?>',
method:'post',
datatype:'json',
success:function(response){
}
})
}
}
function editProduct(id){
$('#modal-default').modal();
$('#hiddenproductvalue').val(id);
$.ajax({
data:{id:id},
url:'<?= site_url('Masters/editProductfetchdata') ?>',
datatype:'json',
method:'post',
success:function(response){
var data=response.split('/#/');
$('#editProductcode').val(data[0]);
$('#editProductname').val(data[1]);
$('#editGroup option[value="'+data[2]+'"').attr('selected','selected');
$('#editUnit option[value="'+data[3]+'"').attr('selected','selected');
$('#editHSNSAC').val(data[4]);
$('#editGST').val(data[5]);
$('#editpr').val(data[6]);
$('#editws').val(data[7]);
$('#editrr').val(data[8]);
$('#editcr').val(data[9]);
$('#editmrp').val(data[10]);
$('#editos').val(data[11]);
$('#editrl').val(data[12]);
$('#editdesc').val(data[13]);
}
});
}
</script>
</body>
</html>