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
</head>

<body>
    <div>
        <div id="login">
            <form action="../controllers/login" method="POST">
                <input type="text" name="email_username" id="email_username" placeholder="Email OR Username">
                <input type="password" name="password" id="password" placeholder="********">
                <button type="submit" name="loginBtn">Login</button>
            </form>
        </div>
    </div>
</body>

</html>