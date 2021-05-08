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
            <div class="header mb-10">
                <h3>Enter 6 digit OTP</h3>
                <p>One Time Passcode (OTP) has been sent to <b><?php echo $this->data['user_info']['email'] ?></b></p>
                <p style="margin-top: 20px">Please enter the OTP below to verify your Email Address. If you cannot see the email from "<b>Mini-Cloud Storage</b>" in your inbox, make sure to check your SPAM folder.</p>
            </div>
            <?php if (isset($this->data['errorMsg'])) : ?>
                <div class="form-group errorMsg">
                    <label><?php echo $data['errorMsg'] ?></label>
                </div>
            <?php endif ?>
            <form action="<?php echo BASEURL . '/auth/verify' ?>" method="POST">
                <div class="form-group <?php echo isset($_SESSION['errorMsg']) ? 'has-error' : '' ?>">
                    <input id="otp" type="text" name="otp" class="form-control" placeholder="Enter 6 digit OTP" required>
                </div>
                <div class="form-group" style="display: flex; justify-content: space-between;">
                    <button type="button" class="btn btn-warning btn-flat mr-10" name="loginBtn"><i class="fa fa-reply"></i> Resend OTP</button>
                    <button type="submit" class="btn btn-success btn-flat ml-10" name="loginBtn"><i class="fa fa-check-circle"></i> Verify OTP</button>
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