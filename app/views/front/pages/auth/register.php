<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo PROJECT_NAME . " | " . $data['page_title']; ?></title>
    <link rel="stylesheet" href="<?php echo BASEURL . '/public/css/auth.css' ?>">
</head>

<body>
    <div>
        <div id="register">
            <div class="header">
                <h3>Mini-Cloud Storage</h3>
            </div>
            <form action="<?php echo BASEURL . '/auth/register' ?>" method="POST">
                <div class="form-group <?php echo isset($_SESSION['errorMsg']) ? 'has-error' : '' ?>">
                    <input id="first_name" type="text" name="first_name" value="<?php echo @$_POST['first_name'] ?>" class="form-control" placeholder="First Name" required>
                    <?php if (isset($data['errorMsg'])) : ?>
                        <span class="help-block">
                            <?php echo $errorMsg ?>
                        </span>
                    <?php endif ?>
                </div>
                <div class="form-group <?php echo isset($_SESSION['errorMsg']) ? 'has-error' : '' ?>">
                    <input id="last_name" type="text" name="last_name" value="<?php echo @$_POST['last_name'] ?>" class="form-control" placeholder="Last Name" required>
                    <?php if (isset($data['errorMsg'])) : ?>
                        <span class="help-block">
                            <?php echo $errorMsg ?>
                        </span>
                    <?php endif ?>
                </div>
                <div class="form-group">
                    <input id="email" type="email" name="email" value="<?php echo @$_POST['email'] ?>" class="form-control" placeholder="Email" required>
                    <label class="errorMsg" style="color: #CC471B"><?php echo @$data['emailError']; ?></label>
                </div>
                <div class="form-group">
                    <input id="mobile_no" type="text" name="mobile_no" value="<?php echo @$_POST['mobile_no'] ?>" class="form-control" placeholder="Mobile No." required>
                    <label class="errorMsg" style="color: #CC471B"><?php echo @$data['mobileNoError']; ?></label>
                </div>
                <div class="form-group">
                    <input id="password" type="password" name="password" class="form-control" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <input id="confirm_password" type="password" name="confirm_password" class="form-control" placeholder="Confirm Password" required>
                    <label class="errorMsg" style="color: #CC471B"><?php echo @$data['passwordNotMatch']; ?></label>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-flat" name="registerBtn">Register</button>
                </div>
                <div class="form-group text-center">
                    <label>
                        Already have account? <a href="login">Sign In</a>
                    </label>
                </div>
            </form>
        </div>
    </div>
    <script src="../public/js/auth.js"></script>
</body>

</html>