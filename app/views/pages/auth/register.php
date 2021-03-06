<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo PROJECT_NAME . " | " . $data['page_title']; ?></title>
    <link rel="stylesheet" href="<?php echo BASEURL . '/css/auth.css' ?>">
</head>

<body>
    <div>
        <div id="register">
            <div class="header">
                <h3>Mini-Cloud Storage</h3>
            </div>
            <form action="../controllers/register" method="POST">
                <div class="form-group <?php echo isset($_SESSION['errorMsg']) ? 'has-error' : '' ?>">
                    <input id="first_name" type="text" name="first_name" class="form-control" placeholder="First Name" required>
                    <span class="help-block">
                        <?php echo $errorMsg ?>
                    </span>
                </div>
                <div class="form-group <?php echo isset($_SESSION['errorMsg']) ? 'has-error' : '' ?>">
                    <input id="last_name" type="text" name="last_name" class="form-control" placeholder="Last Name" required>
                    <span class="help-block">
                        <?php echo $errorMsg ?>
                    </span>
                </div>
                <div class="form-group">
                    <input id="email" type="text" name="email" class="form-control" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <input id="mobile_no" type="text" name="mobile_no" class="form-control" placeholder="Mobile No." required>
                </div>
                <div class="form-group">
                    <input id="password" type="password" name="password" class="form-control" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <input id="confirm_password" type="confirm_password" name="confirm_password" class="form-control" placeholder="Confirm Password" required>
                </div>
                <div class="form-group">
                    <label class="checkbox-label">
                        <input type="checkbox"> Accept Terms & Conditions
                    </label>
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