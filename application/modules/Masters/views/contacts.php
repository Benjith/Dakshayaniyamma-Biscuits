<?php $this->load->view('Header/header.php');
?>
<section class="content col-lg-10  ">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Contact </h4>
            
            <div class="tab-container">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#list" role="tab">ALL</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#addnew" role="tab">List</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active fade show" id="list" role="tabpanel">
                        <div class="contacts row">
                        <?php
                        foreach ($contacts as $keycontact ) { ?>
                             <div class="col-xl-2 col-lg-3 col-sm-4 col-6">
                            <div class="contacts__item">
                                <a href="#" class="contacts__img">
                                    <?php if($keycontact->image ==""){ ?>
                                        <div style=" border-radius: 50%; margin-left: 20%;" class="avatar-img avatar-char"><?= $keycontact->contactName[0]; ?></div>
                                   <?php  } else { ?>
                                    <img src="<?php echo asset_url(); ?>/demo/img/contacts/1.jpg" alt="">
                                <?php } ?>
                                </a>

                                <div class="contacts__info">
                                    <strong><?= $keycontact->contactName; ?></strong>
                                    <small><?= $keycontact->type; ?></small>
                                </div>

                                <button class="contacts__btn">View</button>
                            </div>
                        </div>
                       <?php } ?>    
                       </div>
                    </div>
                    <a href="new-contact.html" class="btn btn-light btn--action btn--fixed"><i class="zmdi zmdi-plus"></i></a>
                
                    <div class="tab-pane fade" id="addnew" role="tabpanel">
                        
                        
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
text: 'This unit will be deleted!',
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