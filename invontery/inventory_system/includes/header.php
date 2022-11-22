  <header id="topnav">

            
            <!-- Topbar Start -->
            <div class="navbar-custom">
                <div class="container-fluid">
                    <ul class="list-unstyled topnav-menu float-right mb-0">

                        <li class="dropdown notification-list">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle nav-link">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </li>
    
                        <li class="dropdown d-none d-lg-block">
                            <a class="nav-link dropdown-toggle mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="assets/images/flags/us.jpg" alt="user-image" class="mr-1" height="12"> <span class="align-middle">English <i class="mdi mdi-chevron-down"></i> </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <img src="assets/images/flags/germany.jpg" alt="user-image" class="mr-1" height="12"> <span class="align-middle">German</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <img src="assets/images/flags/italy.jpg" alt="user-image" class="mr-1" height="12"> <span class="align-middle">Italian</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <img src="assets/images/flags/spain.jpg" alt="user-image" class="mr-1" height="12"> <span class="align-middle">Spanish</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <img src="assets/images/flags/russia.jpg" alt="user-image" class="mr-1" height="12"> <span class="align-middle">Russian</span>
                                </a>

                            </div>
                        </li>
            
                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <i class="fe-bell noti-icon"></i>
                                <span class="badge badge-danger rounded-circle noti-icon-badge">2</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-lg">

                                <!-- item-->
                                <div class="dropdown-item noti-title">
                                    <h5 class="m-0">
                                        <span class="float-right">
                                            <a href="" class="text-dark">
                                                <small>Clear All</small>
                                            </a>
                                        </span>Notification
                                    </h5>
                                </div>

                                <div class="slimscroll noti-scroll">

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon">
                                            <img src="assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                        <p class="notify-details">Cristina Pride</p>
                                        <p class="text-muted mb-0 user-msg">
                                            <small>Hi, How are you? What about our next meeting</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                        <div class="notify-icon bg-warning"><i class="mdi mdi-comment-account-outline"></i> </div>
                                        <p class="notify-details">Caleb Flakelar commented on Admin<small class="text-muted">1 min ago</small></p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-info"><i class="mdi mdi-account-plus"></i></div>
                                        <p class="notify-details">New user registered.<small class="text-muted">5 hours ago</small></p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon">
                                            <img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                        <p class="notify-details">Karen Robinson</p>
                                        <p class="text-muted mb-0 user-msg">
                                            <small>Wow ! this admin looks good and awesome design</small>
                                        </p>
                                    </a>
            
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-danger"><i class="mdi mdi-comment-account-outline"></i></div>
                                        <p class="notify-details">Caleb Flakelar commented on Admin<small class="text-muted">4 days ago</small></p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-primary">
                                            <i class="mdi mdi-heart"></i>
                                        </div>
                                        <p class="notify-details">Carlos Crouch liked
                                            <b>Admin</b>
                                            <small class="text-muted">13 days ago</small>
                                        </p>
                                    </a>
                                </div>

                                <!-- All-->
                                <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item notify-all">
                                    View all
                                    <i class="fi-arrow-right"></i>
                                </a>

                            </div>
                        </li>
    
                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle nav-user mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="<?php echo $_SESSION['img'];?>" alt="user-image" class="rounded-circle">
                                <span class="pro-user-name ml-1">
                                     <?php echo $_SESSION['fullname'];?> <i class="mdi mdi-chevron-down"></i> 
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-item noti-title">
                                    <h6 class="m-0">
                                        Welcome !
                                    </h6>
                                </div>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="dripicons-user"></i>
                                    <span>My Account</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="dripicons-gear"></i>
                                    <span>Settings</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="dripicons-help"></i>
                                    <span>Support</span>
                                </a>

                                <!-- item-->
                                <a href="lock.php" class="dropdown-item notify-item">
                                    <i class="dripicons-lock"></i>
                                    <span>Lock Screen</span>
                                </a>

                                <div class="dropdown-divider"></div>

                                <!-- item-->
                                <a href="logout.php" class="dropdown-item notify-item">
                                    <i class="dripicons-power"></i>
                                    <span>Logout</span>
                                </a>

                            </div>
                        </li>
    
                        <li class="dropdown notification-list">
                            <a href="javascript:void(0);" class="nav-link right-bar-toggle">
                                <i class="fe-settings noti-icon"></i>
                            </a>
                        </li>
    
                    </ul>
    
                    <ul class="list-unstyled topnav-menu-left m-0">
            
                        <li class="logo-box float-left">
                            <a href="index.html" class="logo">
                                <span class="logo-lg">
                                    <img src="assets/images/logo-light.png" alt="" height="18">
                                </span>
                                <span class="logo-sm">
                                    <img src="assets/images/logo-sm.png" alt="" height="28">
                                </span>
                            </a>
                        </li>
                        <li class="app-search d-none d-md-block">
                            <form>
                                <input type="text" placeholder="Search..." class="form-control">
                                <button type="submit" class="sr-only"></button>
                            </form>
                        </li>
    
                    </ul>
                </div> <!-- end container-fluid-->
            </div>
            <!-- end Topbar -->

            
            <div class="topbar-menu">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                            <li class="has-submenu">
                                <a href="index.html"><i class="fe-airplay"></i>Dashboards</a>
                            </li>

                            <li class="has-submenu">
                                <a href="#">
                                <i class="fe-hard-drive"></i>Components <div class="arrow-down"></div></a>  
                                <ul class="submenu">
                                    <li>
                                        <a href="components-elements.html">UI Elements</a>
                                    </li>
                                    <li>
                                        <a href="components-rangeslider.html">Range Slider</a>
                                    </li>
                                    <li>
                                        <a href="components-alerts.html">Alerts</a>
                                    </li>
                                    <li>
                                        <a href="components-ribbons.html">Ribbons</a>
                                    </li>
                                    <li>
                                        <a href="components-sweet-alerts.html">Sweet Alerts</a>
                                    </li>
                                    <li>
                                        <a href="components-typography.html">Typography</a>
                                    </li>
                                    <li>
                                        <a href="components-charts.html">Charts</a>
                                    </li>
                                    <li>
                                        <a href="components-maps.html">Maps</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"> <i class="fe-edit"></i> Forms <div class="arrow-down"></div></a>
                                <ul class="submenu">
                                    <li>
                                        <a href="form-elements.html">General Elements</a>
                                    </li>
                                    <li>
                                        <a href="form-advanced.html">Advanced Form</a>
                                    </li>
                                    <li>
                                        <a href="form-editors.html">Editors</a>
                                    </li>
                                    <li>
                                        <a href="form-uploads.html">File Uploads</a>
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"> <i class="fe-grid"></i> Tables <div class="arrow-down"></div></a>
                                <ul class="submenu">
                                    <li>
                                        <a href="tables-basic.html">Basic Tables</a>
                                    </li>
                                    <li>
                                        <a href="tables-advanced.html">Advanced Tables</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#"> <i class="fe-anchor"></i> Icons <div class="arrow-down"></div></a>
                                <ul class="submenu">
                                    <li>
                                        <a href="icons-feather.html">Feather Icons</a>
                                    </li>
                                    <li>
                                        <a href="icons-mdi.html">Material Design Icons</a>
                                    </li>
                                    <li>
                                        <a href="icons-dripicons.html">Dripicons</a>
                                    </li>
                                </ul>
                            </li>

                

                            <li class="has-submenu">
                                <a href="#"> <i class="fe-book-open"></i>Pages <div class="arrow-down"></div></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li>
                                                <a href="pages-starter.html">Starter</a>
                                            </li>
                                            <li>
                                                <a href="pages-calendar.html">Calendar</a>
                                            </li>
                                            <li>
                                                <a href="pages-timeline.html">Timeline</a>
                                            </li>
                                            <li>
                                                <a href="pages-invoice.html">Invoice</a>
                                            </li>
                                            <li>
                                                <a href="pages-contacts.html">Contacts</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <ul>
                                            <li>
                                                <a href="pages-login.html">Login</a>
                                            </li>
                                            <li>
                                                <a href="pages-register.html">Register</a>
                                            </li>
                                            <li>
                                                <a href="pages-recoverpw.html">Recover Password</a>
                                            </li>
                                            <li>
                                                <a href="pages-lock-screen.html">Lock Screen</a>
                                            </li>
                                            <li>
                                                <a href="pages-404.html">Error 404</a>
                                            </li>
                                        </ul>
                                    </li>
                        
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"> <i class="fe-layout"></i>Layouts <div class="arrow-down"></div></a>
                                <ul class="submenu">
                                    <li>
                                        <a href="layouts-topbar-light.html">Topbar light</a>
                                    </li>
                                    <li>
                                        <a href="layouts-menubar-light.html">Menubar Light</a>
                                    </li>
                                    <li>
                                        <a href="layouts-center-menu.html">Center Menu</a>
                                    </li>
                                    <li>
                                        <a href="layouts-normal-header.html">Unsticky Header</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <!-- End navigation menu -->

                        <div class="clearfix"></div>
                    </div>
                    <!-- end #navigation -->
                </div>
                <!-- end container -->
            </div>
            <!-- end navbar-custom -->

        </header>