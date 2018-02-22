<%@ page language="C#" autoeventwireup="true" inherits="Login, LastDll" enableviewstatemac="false" enableEventValidation="false" %>
<!DOCTYPE html>
<html>

<!-- Mirrored from webapplayers.com/homer_admin-v1.9.1/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 11 Mar 2017 14:51:40 GMT -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Page title -->
    <title>ورود</title>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!--<link rel="shortcut icon" type="image/ico" href="favicon.ico" />-->

    <!-- Vendor styles -->
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.css" />
    <link rel="stylesheet" href="vendor/metisMenu/dist/metisMenu.css" />
    <link rel="stylesheet" href="vendor/animate.css/animate.css" />
    <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.css" />

    <!-- App styles -->
    <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="fonts/pe-icon-7-stroke/css/helper.css" />
    <link rel="stylesheet" href="styles/style.css">

</head>
<body class="blank" dir="rtl">

<!-- Simple splash screen-->
<%--<div class="splash"> <div class="color-line"></div><div class="splash-title"><h1>Homer - Responsive Admin Theme</h1><p>Special Admin Theme for small and medium webapp with very clean and aesthetic style and feel. </p><div class="spinner"> <div class="rect1"></div> <div class="rect2"></div> <div class="rect3"></div> <div class="rect4"></div> <div class="rect5"></div> </div> </div> </div>--%>
<!--[if lt IE 7]>
<p class="alert alert-danger">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="color-line"></div>

<div class="back-link">
    <a href="Index.aspx" class="btn btn-primary">بازگشت به صفحه اصلی</a>
</div>
    <Form runat="server">
<div class="login-container">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center m-b-md">
                <h3>ورود به سامانه</h3>
                <small></small>
            </div>
            <div class="hpanel">
                <div class="panel-body">
                        <form action="#" id="loginForm">
                            <div class="form-group">
                                <label class="control-label" for="username">نام کاربری</label>
                                <input type="text" runat="server" placeholder="example@gmail.com" title="نام کاربری خود را وارد کنید" required="" value="" name="username" id="username" class="form-control">
                                <span class="help-block small">نام کاربری</span>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">کلمه عبور</label>
                                <input type="password"  runat="server" title="لطفا کلمه عبور را وارد کنید" placeholder="******" required="" value="" name="password" id="password" class="form-control">
                                <span class="help-block small">کلمه عبور شما</span>
                            </div>
                            <div class="checkbox">
                                <input type="checkbox" class="i-checks" checked>
                                    مرا به  خاطر بسپار
                                <p class="help-block small">(اگر این دیوایس شخصی شماست)</p>
                            </div>
                            <asp:Button runat="server" class="btn btn-success btn-block" Text="ورود" OnClick="Unnamed_Click"></asp:Button>
                            <a class="btn btn-default btn-block" href="Signup.aspx">عضویت</a>
                        </form>
                </div>
            </div>
        </div>
    </div>
    </Form>
    <div class="row">
        <div class="col-md-12 text-center">
            <strong></strong>  <br/> 2015 Copyright    
        </div>
    </div>



<!-- Vendor scripts -->
<script src="vendor/jquery/dist/jquery.min.js"></script>
<script src="vendor/jquery-ui/jquery-ui.min.js"></script>
<script src="vendor/slimScroll/jquery.slimscroll.min.js"></script>
<script src="vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="vendor/metisMenu/dist/metisMenu.min.js"></script>
<script src="vendor/iCheck/icheck.min.js"></script>
<script src="vendor/sparkline/index.js"></script>

<!-- App scripts -->
<script src="scripts/homer.js"></script>

</body>

<!-- Mirrored from webapplayers.com/homer_admin-v1.9.1/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 11 Mar 2017 14:51:40 GMT -->
</html>