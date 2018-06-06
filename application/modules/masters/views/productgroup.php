<?php $this->load->view('Header/header.php');
?>
<section class="content col-lg-10">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Product Group</h4>
            
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
                                        <th>Group Name</th>
                                        <th>Description</th>
                                        <th>Edit</th>
                                   </tr>
                                </thead>
                                <tbody>
                                <?php
                                $i=1;
                                foreach ($productdata as $key) { ?>
                                <tr>
                                    <th scope="row"><?= $i; ?></th>
                                    <td><?= $key->productGroupName; ?></td>
                                    <td><?= $key->description; ?></td>
                                    <td><i class="zmdi zmdi-edit zmdi-hc-fw" onclick="editProductGroup(<?= $key->productGroupId; ?>)"> </i>/<i class="zmdi zmdi-delete zmdi-hc-fw" onclick="delProductGroup(<?= $key->productGroupId; ?>)">  </i></td>
                                </tr>
                                <?php $i++; } ?>
                                
                                
                            </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="addnew" role="tabpanel">
                        
                        <div class="card-body">
                            
                            
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="card-body__title">Group Name</h3>
                                    
                                    <div class="form-group">
                                        <input type="text" id="groupname" class="form-control"  required="required">
                                        <i class="form-group__bar"></i>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="card-body__title">Description</h3>
                                    <div class="form-group">
                                        <input type="text" id="desc" class="form-control"  required='required'>
                                        <i class="form-group__bar"></i>
                                    </div>
                                </div>
                                <div class="btn-demo col-md-6">
                                    <button type="submit"  class="btn btn-primary" id="sa-success" onclick="addfun()">Add</button>
                                    <button type="" class="btn btn-light" onclick="clearfun()">Clear</button>
                                </div>
                                
                                
                                
                            </div>
                            <br>
                            
                            
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
                    <?= form_open('Masters/editPostdataproductgroup'); ?>
                    <input type="hidden" id="hiddenproductvalue" value="" name="hiddenproductvalue">
                    <div class="col-md-6"> 
                        <h3 class="card-body__title">Product Group</h3>
                        <div class="form-group">
                            <input type="text" id="nameEdit"  name="editproductpost" value="" class="form-control"  >
                            <i class="form-group__bar"></i>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h3 class="card-body__title">Description</h3>
                        <div class="form-group">
                            <input type="text" id="descEdit" name="editdescpost" value="" class="form-control" >
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
<script src="<?php echo asset_url();?>/vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
<!-- App functions and actions -->
<script src="<?php echo asset_url();?>/js/app.min.js"></script>
<!-- Vendors: Data tables -->
<script src="<?php echo asset_url();?>/vendors/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo asset_url();?>/vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?php echo asset_url();?>/vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="<?php echo asset_url();?>/vendors/bower_components/jszip/dist/jszip.min.js"></script>
<script src="<?php echo asset_url();?>/vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>


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
function delProductGroup(id){
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
url:'<?= site_url('Masters/delProductGroup'); ?>',
method:'post',
datatype:'json',
success:function(response){
}
})
}
}
function editProductGroup(id){
$('#modal-default').modal();
$('#hiddenproductvalue').val(id);
$.ajax({
data:{id:id},
url:'<?= site_url('Masters/editProductGroupfetchdata') ?>',
datatype:'json',
method:'post',
success:function(response){
var data=response.split('/');
$('#nameEdit').val(data[0]);
$('#descEdit').val(data[1]);
}
});
}


</script>
</body>
</html>