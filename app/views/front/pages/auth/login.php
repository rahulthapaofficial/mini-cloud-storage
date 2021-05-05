<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo PROJECT_NAME . " | " . $data['page_title']; ?></title>
    <link rel="stylesheet" href="<?php echo BASEURL . '/public/css/auth.css' ?>">
    <link rel="stylesheet" href="<?php echo BASEURL . '/public/fontawesome/css/all.css' ?>">
</head>

<body>
    <div>
        <div id="login">
            <div class="header">
                <h2>Sign In</h2>
                <h4>Sign in to start your session</h4>
            </div>
            <?php if (isset($this->data['errorMsg'])) : ?>
                <div class="form-group errorMsg">
                    <label><?php echo $data['errorMsg'] ?></label>
                </div>
            <?php endif ?>
            <form action="<?php echo BASEURL . '/auth/login' ?>" method="POST">
                <div class="form-group <?php echo isset($_SESSION['errorMsg']) ? 'has-error' : '' ?>">
                    <input id="email_username" type="text" name="email_username" class="form-control" placeholder="Email OR Username" required>
                </div>
                <div class="form-group">
                    <input id="password" type="password" name="password" class="form-control" placeholder="********" required>
                </div>
                <div class="form-group">
                    <label class="checkbox-label">
                        <input type="checkbox"> Remember Me
                    </label>
                    <a class="pull-right">Forgot Password?</a>
                </div>
                <!-- <hr> -->
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-flat" name="loginBtn">Login</button>
                </div>
                <div class="text-center">
                    <label>
                        Don't have account? <a href="register">Sign Up</a>
                    </label>
                </div>
            </form>
        </div>
    </div>
    <script src="../public/js/auth.js"></script>
    <!--Start of Tawk.to Script-->
    <script type="text/javascript">
        var Tawk_API = Tawk_API || {},
            Tawk_LoadStart = new Date();
        (function() {
            var s1 = document.createElement("script"),
                s0 = document.getElementsByTagName("script")[0];
            s1.async = true;
            s1.src = 'https://embed.tawk.to/608421fd62662a09efc1bbad/1f4229ibe';
            s1.charset = 'UTF-8';
            s1.setAttribute('crossorigin', '*');
            s0.parentNode.insertBefore(s1, s0);
        })();
    </script>
    <!--End of Tawk.to Script-->
</body>

</html>