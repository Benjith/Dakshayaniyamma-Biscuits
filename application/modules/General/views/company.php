<?php $this->load->view('Header/header.php'); ?>
        <section class="content col-md-10">
                <div class="content__inner">            
                    <h3 style="margin-bottom: 1rem;">Company</h1>                    
                     <div class="card">
                       <div class="card-body">
                       <h4 class="card-title">General Info</h4>                                                                        
                            <div class="row">
                              <div class="col-md-6">                                
                                <div class="form-group">
                                    <input type="text" id="companyName" class="form-control" placeholder="Company Name" value="<?php if(isset($info[0]->companyName)){ echo $info[0]->companyName; } ?>"/>
                                </div>
                              </div>
                              <div class="col-md-6">                                
                                <div class="form-group">
                                    <input type="text" id="city" name="city" class="form-control" placeholder="City" value="<?php if(isset($info[0]->city)){ echo $info[0]->city; } ?>"/>
                                </div>
                              </div>
                          </div>
                          <div class="clearfix mb-2"></div>
                          <div class="row">
                              <div class="col-md-12">                                                                
                                <div class="form-group">
                                    <textarea class="form-control" id="address" name="address" rows="5" placeholder="Address"><?php if(isset($info[0]->address)){echo $info[0]->address; } ?></textarea>
                                </div>
                              </div>                              
                          </div>
                          <div class="row">
                            <div class=col-md-6>                                                                
                                <div class="form-group">
                                    <input type="text" class="form-control" id="gstIn" name="gstIn" placeholder="GSTIN/UIN" value="<?php if(isset($info[0]->gstIn)){ echo $info[0]->gstIn; } ?>"/>
                                </div>
                            </div>
                            <div class=col-md-6>                                                                
                                <div class="form-group">
                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" value="<?php if(isset($info[0]->phone)){ echo $info[0]->phone; } ?>"/>
                                </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class=col-md-6>                                                                
                                <div class="form-group">
                                    <input type="text" class="form-control" id="email" name="email" placeholder="Email : sample@mail.com" value="<?php if(isset($info[0]->email)){ echo $info[0]->email; } ?>"/>
                                </div>
                            </div>
                            <div class=col-md-6>                                                                
                                <div class="form-group">
                                    <input type="text" class="form-control" id="pincode" name="pincode" placeholder="PIN/ZIP" value="<?php if(isset($info[0]->pincode)){ echo $info[0]->pincode; } ?>"/>
                                </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class=col-md-6>                                                                
                                <div class="form-group">
                                    <input type="text" class="form-control" id="state" name="state" placeholder="State" value="<?php if(isset($info[0]->state)){ echo $info[0]->state; } ?>"/>
                                </div>
                            </div>                            
                          </div>
                          <h4 class="card-title">Other Info</h4>
                          <div class="row">
                            <div class=col-md-4>                                
                                <h3 class="card-body__title" style="font-size:1rem; color:rgba(255,255,255,.85);">Print Type</h3>                                
                                <div class="form-group">                                    
                                    <select id="printType" name="printType" class="select2" data-minimum-results-for-search="Infinity">
                                        <option <?php if($info[0]->printType=="") { ?> selected <?php } ?> >--Select--</option>
                                        <option <?php if($info[0]->printType=="A4") { ?> selected <?php } ?> >A4</option>
                                        <option <?php if($info[0]->printType=="Dot") { ?> selected <?php } ?> >Dot</option>
                                    </select>
                                </div>
                            </div>
                            <div class=col-md-4>                                
                                <h3 class="card-body__title">Tax Bill</h3>
                                <label class="custom-control custom-radio" style="font-size:1rem; color:rgba(255,255,255,.85);">
                                    <input name="taxBill" type="radio" class="custom-control-input" value="Yes" <?php if($info[0]->taxBill==1) { ?> checked <?php } ?>>
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">Yes</span>
                                </label>

                                <label class="custom-control custom-radio">
                                    <input name="taxBill" type="radio" class="custom-control-input" value="No" <?php if($info[0]->taxBill==0) { ?> checked <?php } ?>>
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">No</span>
                                </label>
                            </div>     
                            <div class=col-md-4>                                
                                <h3 class="card-body__title">Previous Balance</h3>
                                <label class="custom-control custom-radio" style="font-size:1rem; color:rgba(255,255,255,.85);">
                                    <input name="isPreviousBalance" type="radio" class="custom-control-input" value="Yes" <?php if($info[0]->isPreviousBalance==1) { ?> checked <?php } ?>>
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">Yes</span>
                                </label>

                                <label class="custom-control custom-radio">
                                    <input name="isPreviousBalance" type="radio" class="custom-control-input" value="No" <?php if($info[0]->isPreviousBalance==0) { ?> checked <?php } ?>>
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">No</span>
                                </label>
                            </div>                   
                          </div>                          
                          <div class="clearfix mb-2"></div>
                          <div class="row">
                            <div class=col-md-6>                                                                
                                <div class="form-group">
                                    <input type="text" id="bankName" name="bankName" class="form-control" placeholder="Bank Name" value="<?php if(isset($info[0]->bankName)){ echo $info[0]->bankName; } ?>"/>
                                </div>
                            </div>
                            <div class=col-md-6>                                                                
                                <div class="form-group">
                                    <input type="text" id="accountNo" name="accountNo" class="form-control" placeholder="A/C No" value="<?php if(isset($info[0]->accountNo)){ echo $info[0]->accountNo; } ?>"/>
                                </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class=col-md-6>                                                                
                                <div class="form-group">
                                    <input type="text" id="branchAndIfsCode" name="branchAndIfsCode" class="form-control" placeholder="Branch & IFSC" value="<?php if(isset($info[0]->branchAndIfsCode)){ echo $info[0]->branchAndIfsCode; } ?>"/>
                                </div>
                            </div>                            
                          </div>
                          <div class="row">
                            <div class="col-md-12">
                                <div class="form-group" style="float:right;">
                                    <input type="button" class="btn btn-primary" id="btnSave" value="Update"/>
                                </div>
                            </div>
                          </div>                                                     
                        </div>
                       </div>
                     </div>

                </div>
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
          </section>
    </main>


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
        <script src="<?php echo asset_url();?>/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>        
        <script src="<?php echo asset_url();?>/vendors/bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
        <script src="<?php echo asset_url();?>/vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>

        <!-- Charts and maps-->
        <script src="<?php echo asset_url();?>/demo/js/flot-charts/curved-line.js"></script>
        <script src="<?php echo asset_url();?>/demo/js/flot-charts/line.js"></script>
        <script src="<?php echo asset_url();?>/demo/js/flot-charts/chart-tooltips.js"></script>
        <script src="<?php echo asset_url();?>/demo/js/other-charts.js"></script>
        <script src="<?php echo asset_url();?>/demo/js/jqvmap.js"></script>

        <!-- App functions and actions -->
        <script src="<?php echo asset_url();?>/js/app.min.js"></script>
        <script src="<?php echo asset_url();?>/demo/js/demo.js"></script>
        
        <script type="text/javascript">                              
            /*--------------------------------------
                Bootstrap Notify Notifications
            ---------------------------------------*/
            function notify(from, align, icon, type, animIn, animOut, msg){
                $.notify({
                    icon: icon,
                    title: 'Warning : ',
                    message: msg,
                    url: ''
                },{
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
                    template:   '<div data-notify="container" class="alert alert-dismissible alert-{0} alert--notify" role="alert" style="background-color:#ccbd0e;">' +
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
            $('#btnSave').click(function(){                                
                if($('#companyName').val()==""){                    
                    var animIn,animOut;
                    notify("top", "right", "fa fa-comments", "inverse", animIn, animOut,'Company name is required!');
                }
                else {   
                    var companyName=$('#companyName').val();
                    var city=$('#city').val();
                    var address=$('#address').val();
                    var gstIn=$('#gstIn').val();
                    var phone=$('#phone').val();
                    var email=$('#email').val();
                    var pincode=$('#pincode').val();
                    var state=$('#state').val();
                    var printType=$('#printType option:selected').val();
                    var taxBill=$("input[name='taxBill']:checked").val();
                    var isPreviousBalance=$("input[name='isPreviousBalance']:checked").val();
                    var bankName=$('#bankName').val();
                    var accountNo=$('#accountNo').val();
                    var branchAndIfsCode=$('#branchAndIfsCode').val();                    
                    $.ajax({
                        url:'<?= site_url('General/Company') ?>',                        
                        datatype:'json',
                        data: {companyName: companyName, city: city, address: address, gstIn:gstIn,
                            phone: phone, email:email, pincode:pincode, state: state,
                            printType: printType, taxBill: taxBill, isPreviousBalance: isPreviousBalance,
                             bankName: bankName, accountNo: accountNo, branchAndIfsCode: branchAndIfsCode },
                        method:'post',
                        success:function(resp){
                            if(resp.length>0){
                                swal({
                                    title: 'Company',
                                    text: resp,
                                    type: 'success',
                                    buttonsStyling: false,
                                    confirmButtonClass: 'btn btn-sm btn-light',
                                    background: 'rgba(0, 0, 0, 0.96)'
                                })
                            }
                        }
                    });                    
                }
            });            
            </script>
    </body>

</html>
