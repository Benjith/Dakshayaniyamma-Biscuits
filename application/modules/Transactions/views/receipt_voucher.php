<?php $this->load->view('Header/header.php');
?>
<section class="content--full  ">
    <header class="content__title">
                    <h1>Receipt Voucher</h1>
                   

                    
                </header>
    <div class="row">
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Create New</h4>
                                
                                
                            </div>
                        </div>
                    </div>

                   <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">LIst All</h4>
                                  <table class="table-hover table-sm mb-0">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Unit</th>
                                    <th>Description</th>
                                    <th>Edit </th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $i=1;
                                foreach ($receiptvoucher as $key) { ?>
                                <tr>
                                    <th scope="row"><?= $i; ?></th>
                                    <td><?= $key->unitName; ?></td>
                                    <td><?= $key->description; ?></td>
                                    <td><i class="zmdi zmdi-edit zmdi-hc-fw" onclick="editUnit(<?= $key->unitId; ?>)"> </i>/<i class="zmdi zmdi-delete zmdi-hc-fw" onclick="delUnit(<?= $key->unitId; ?>)">  </i></td>
                                </tr>
                                <?php $i++; } ?>
                                
                                
                            </tbody>
                        </table>
                               
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

</body>
</html>