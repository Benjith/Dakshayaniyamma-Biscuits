<?php $this->load->view('Header/header.php'); ?>

   


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

        <!-- Older IE warning message -->
            <!--[if IE]>
                <div class="ie-warning">
                    <h1>Warning!!</h1>
                    <p>You are using an outdated version of Internet Explorer, please upgrade to any of the following web browsers to access this website.</p>

                    <div class="ie-warning__downloads">
                        <a href="http://www.google.com/chrome">
                            <img src="img/browsers/chrome.png" alt="">
                        </a>

                        <a href="https://www.mozilla.org/en-US/firefox/new">
                            <img src="img/browsers/firefox.png" alt="">
                        </a>

                        <a href="http://www.opera.com">
                            <img src="img/browsers/opera.png" alt="">
                        </a>

                        <a href="https://support.apple.com/downloads/safari">
                            <img src="img/browsers/safari.png" alt="">
                        </a>

                        <a href="https://www.microsoft.com/en-us/windows/microsoft-edge">
                            <img src="img/browsers/edge.png" alt="">
                        </a>

                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="img/browsers/ie.png" alt="">
                        </a>
                    </div>
                    <p>Sorry for the inconvenience!</p>
                </div>
            <![endif]-->

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

        <!-- App functions and actions -->
        <script src="<?php echo asset_url();?>/js/app.min.js"></script>
    </body>

</html>