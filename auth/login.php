<?php
session_start();
if (isset($_SESSION['loginData']))
    if ($_SESSION['loginData']['is_authenticated'])
        header('Location: ../index');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../public/css/login.css">
</head>

<body>
    <div>
        <div id="login">
            <div class="header">
                <h4>Mini-Cloud Storage</h4>
            </div>
            <form action="../controllers/login" method="POST">
                <div class="form-group <?php echo isset($_SESSION['errorMsg']) ? 'has-error' : '' ?>">
                    <input id="email_username" type="text" name="email_username" class="form-control" placeholder="Email OR Username">
                    <span class="help-block">
                        <?php
                        if (isset($_SESSION['errorMsg'])) {
                            echo $_SESSION['errorMsg'];
                            unset($_SESSION['errorMsg']);
                        }
                        ?>
                    </span>
                </div>
                <div class="form-group">
                    <input id="password" type="password" name="password" class="form-control" placeholder="********">
                </div>
                <div class="form-group">
                    <label>
                        <input type="checkbox"> Remember Me
                    </label>
                    <a class="pull-right">Forgot Password?</a>
                </div>
                <div class="form-group">
                    <button type="submit" name="loginBtn">Login</button>
                </div>
            </form>
        </div>
    </div>
    <script src="../public/js/auth.js"></script>
</body>

</html>