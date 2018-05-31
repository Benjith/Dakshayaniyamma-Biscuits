<?php $this->load->view('Header/header.php');
?>
<section class="content--full">
    <div class="card ">
        <div class="card-body">
            <h4 class="card-title">Purchase Invoice</h4>
            <div class="tab-container">
                <ul class="nav nav-tabs" role="tablist" id="myTab">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#addnew" role="tab" id="navNew">Add New</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " data-toggle="tab" href="#list" role="tab" id="navList">List</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active fade show" id="addnew" role="tabpanel">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input hidden type="text" name="hiddenreceiptvoucherid" id="hiddenreceiptvoucherid" hidden="hidden" value="">
                                        <!-- prefix and voucher no -->
                                        <input disabled type="text" class="form-control" name="prefix" id="prefix" value="Prefix -Voucher No:RV/0 - 1">
                                        <!-- cash/petty -->
                                        <select class="form-control" >
                                            <option style="color: #9d9ba8">Select Cash/Petty</option>
                                            <option>ben</option>
                                        </select>
                                        <!-- purchase a/c-->
                                        <select class="form-control">
                                            <option style="color:#9d9ba8;">Select Purchase A/C</option>
                                            <option>ben</option>
                                        </select>
                                        
                                    </div>
                                </div>
                                <div class="col-md-8">
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        
                                        <!-- date -->
                                        <input disabled type="text" class="form-control" name="prefix" id="prefix" value="<?= date('l-d/m/Y') ?>">
                                        <!-- GSTIN -->
                                        <input  type="text" class="form-control" name="prefix" id="prefix" placeholder="GSTIN">
                                        <!-- Invoice NO -->
                                        <input  type="text" class="form-control" name="prefix" id="prefix" placeholder="Invoice Number">
                                        
                                    </div>
                                </div>
                            </div>
                            <!-- Full width Table -->
                            <div class="row eklavyapurchaseinvoicewhitediv">
                                <div class="table-responsive">
                                    <table class="table table-bordered mb-0" id="table_purinvoice">
                                        <thead class="thead-inverse">
                                            <tr>
                                                <th><i class="zmdi zmdi-file-plus zmdi-hc-fw" style="font-size: 18px;" onclick="addRow()"></i></th>
                                                <th>Sl No</th>
                                                <th>Code</th>
                                                <th width="200px">Product</th>
                                                <th>HSN/SAC</th>
                                                <th>Quantity</th>
                                                <th>Rate</th>
                                                <th>Unit</th>
                                                <th>Net Amount</th>
                                                <th>GST %</th>
                                                <th>GST Amount </th>
                                                <th>Total Amount </th>
                                            </tr>
                                        </thead>
                                        <tbody id="tablebody">
                                            <tr>
                                                <th scope="row"><button class="btn btn-light"><i class="zmdi zmdi-close-circle-o " style="color: #ff0018; font-size: 18px;" ></i></button></th>
                                                <td><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td ><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td ><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td><div class=""><input type="text" class="form-control" name=""></div></td>
                                                <td><div class=""><input type="text" class="form-control" name=""></div></td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- footer options -->
                            <br>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <textarea class="form-control" rows="5" placeholder="Description...."></textarea>
                                        <i class="form-group__bar"></i>
                                    </div>
                                    <div class="form-group">
                                        <!-- previous & total outstanding balance -->
                                        <div class="w-100"></div>
                                        <label>Previous Balance:</label>
                                        <input type="number" class="eklavya_inputBtmBrdr" name="">
                                        <div class="w-100"></div>
                                        <label>Total Outstanding:</label>
                                        <input type="number" class="eklavya_inputBtmBrdr" name="">
                                        
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    
                                </div>
                                <div class="col-md-3">
                                    <label>GST Amount&nbsp;&nbsp;:</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="">
                                    <div class="w-100"></div>
                                    <label>Net Amount&nbsp;&nbsp;&nbsp;:</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="">
                                    <div class="w-100"></div>
                                    <label>Discount %&nbsp;&nbsp;&nbsp; :</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="">
                                    <div class="w-100"></div>
                                    <label>Discount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="">
                                    <div class="w-100"></div>
                                    <label>Total Amount&nbsp;:</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="">
                                    <div class="w-100"></div>
                                    <label>paid Amount&nbsp;&nbsp;:</label>
                                    <input type="number" class="eklavya_inputBtmBrdr"  name="">
                                    
                                    
                                </div>
                                
                                
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label> Interstate <br> Purchase</label>
                                        <div class="toggle-switch toggle-switch--blue">
                                            <input type="checkbox" class="toggle-switch__checkbox">
                                            <i class="toggle-switch__helper"></i>
                                        </div>
                                        <!-- <label>Print Mode  </label> -->
                                        <select class="form-control">
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
                                    
                                    <button style="" type="submit" name="submit" id="save" class="btn btn-primary">Save </button>
                                    <button style="" type="submit" name="submit" id="save" class="btn btn-light">New </button>
                                    <button style="" type="submit" name="submit" id="save" class="btn btn-danger">Delete </button>
                                    
                                    
                                </div>
                                
                            </div>
                            
                        </div>
                    </div>
                    <div class="tab-pane  fade " id="list" name="list" role="tabpanel">
                        <div class="card-body">
                            asdasdds
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
function addRow(){
$('#tablebody').append('<tr><th scope="row"><button class="btn btn-light"><i class="zmdi zmdi-close-circle-o " style="color: #ff0018; font-size: 18px;" ></i></button></th><td><div class=""><input type="text" class="form-control" name=""></div></td><td><div class=""><input type="text" class="form-control" name=""></div></td><td ><div class=""><input type="text" class="form-control" name=""></div></td><td ><div class=""><input type="text" class="form-control" name=""></div></td><td><div class=""><input type="text" class="form-control" name=""></div></td><td><div class=""><input type="text" class="form-control" name=""></div></td><td><div class=""><input type="text" class="form-control" name=""></div></td><td><div class=""><input type="text" class="form-control" name=""></div></td><td><div class=""><input type="text" class="form-control" name=""></div></td><td><div class=""><input type="text" class="form-control" name=""></div></td><td><div class=""><input type="text" class="form-control" name=""></div></td></tr>');
}
$('#table_purinvoice').on('click', 'button', function(e){
$(this).closest('tr').attr('class','animated bounceOut');
$(this).closest('tr').remove();
})
</script>
</body>
</html>