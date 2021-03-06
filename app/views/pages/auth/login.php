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
        <div id="login">
            <div class="header">
                <h2>Sign In</h2>
                <h4>Sign in to start your session</h4>
            </div>
            <?php if ($data['errorMsg']) : ?>
                <div class="form-group errorMsg">
                    <label><?php echo $data['errorMsg'] ?></label>
                </div>
            <?php endif ?>
            <form action="<?php echo BASEURL . '/auth/login' ?>" method="POST">
                <div class="form-group <?php echo isset($_SESSION['errorMsg']) ? 'has-error' : '' ?>">
                    <input id="email_username" type="text" name="email_username" class="form-control" placeholder="Email OR Username" required>
                    <span class="help-block">
                        <?php echo $errorMsg ?>
                    </span>
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
</body>

</html>