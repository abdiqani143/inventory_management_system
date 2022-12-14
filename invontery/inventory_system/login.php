<?php session_start();
if (!empty($_SESSION['user_id'])) {
    header("Location:index.php");
    return false;
}
?>
<!DOCTYPE html>
<html lang="en">
<?php include("includes/head.php");?>

<body class="authentication-bg">
    <div class="home-btn d-none d-sm-block">
        <a href="index.html"><i class="fas fa-home h2 text-dark"></i></a>
    </div>
    <div class="account-pages my-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="card">

                        <div class="card-body p-4">
                            
                            <div class="text-center w-75 m-auto">
                                <a href="index.html">
                                    <span><img src="assets/images/logo-dark.png" alt="" height="22"></span>
                                </a>
                                <p class="text-danger mb-4 mt-3 "></p>
                            </div>

                            <form action="oprations/check_login.php" method="POST">

                                <div class="form-group mb-3">
                                    <label for="emailaddress">Username Or Email</label>
                                    <input class="form-control" type="text"  placeholder="Enter your username/Email" name="username">
                                </div>

                                <div class="form-group mb-3">
                                    <a href="pages-recoverpw.html" class="text-muted float-right"><small></small></a>
                                    <label for="password">Password</label>
                                    <input class="form-control" type="password" required="" placeholder="Enter your password" name="password">
                                </div>

                                <div class="form-group mb-3">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="checkbox-signin" checked>
                                        <label class="custom-control-label" for="checkbox-signin">Remember me</label>
                                    </div>
                                </div>

                                <div class="form-group mb-0 text-center">
                                    <button class="btn btn-primary btn-block" type="submit"> Log In </button>
                                </div>
                                <p><center class="text-warning"><?php echo @$_GET['error'];?></center></p>

                            </form>
                        </div> <!-- end card-body -->
                    </div>
                    <!-- end card -->

                    <div class="row mt-3">
                        <div class="col-12 text-center">
                            <p class="text-muted"> <a href="pages-register.html" class="text-muted ml-1">Forgot your password?</a></p>
                            <p class="text-muted">Don't have an account? <a href="pages-register.html" class="text-dark font-weight-medium ml-1">Sign Up</a></p>
                        </div> <!-- end col -->
                    </div>
                    <!-- end row -->

                </div> <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end page -->

    
    <!-- Vendor js -->
    <script src="assets/js/vendor.min.js"></script>

    <!-- App js -->
    <script src="assets/js/app.min.js"></script>
    
</body>
</html>