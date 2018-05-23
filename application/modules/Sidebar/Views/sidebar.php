
<aside class="sidebar sidebar--hidden">
                <div class="scrollbar-inner">
                    <div class="user">
                        <div class="user__info" data-toggle="dropdown">
                            <img class="user__img" src="<?php echo asset_url();?>/demo/img/profile-pics/8.jpg" alt="">
                            <div>
                                <div class="user__name"><?php echo $userName; ?></div>
                                <!-- <div class="user__email">malinda-h@gmail.com</div> -->
                            </div>
                        </div>

                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">View Profile</a>
                            <a class="dropdown-item" href="#">Settings</a>
                            <a class="dropdown-item" href="<?php echo site_url('Dashboard/logout'); ?>">Logout</a>
                        </div>
                    </div>

                    <ul class="navigation">
                        <li class="@@indexactive"><a href="<?php echo base_url(); ?>"><i class="zmdi zmdi-home"></i> Home</a></li>

                         <!-- php code to retrive modules and submodules start -->
                        <?php foreach ($module as $key ) {
                           
                          ?> 
                          <li class="navigation__sub navigation__sub navigation__sub">
                            <a href=""><i class="zmdi zmdi-home"></i><?php echo $key->moduleName ; ?>   </a>
                         
                            <?php $data['submodule'] =$this->Mdl_dashboard->get_submodule( $key->moduleId); ?>
                            <ul>
                          <?php  foreach ($data['submodule'] as $keysub ) {
                                ?>
                                 <li class="@@emptyactive"><a href="empty.html"><?php echo $keysub->moduleName; ?></a></li>
                              
                           <?php }

                            ?>
                            </ul>
                             </li> 
                      <?php } ?>
                        
                        
                        <!-- php code to retrive modules and submodules end -->
                    </ul>
                </div>
            </aside>