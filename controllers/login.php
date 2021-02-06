<?php
require_once '../config/dbcon.php';

if (isset($_REQUEST['loginBtn'])) {
    $username = strip_tags($_REQUEST["email_username"]);
    $email = strip_tags($_REQUEST['email_username']);
    $password = strip_tags($_REQUEST['password']);
    if (empty($username)) {
        $errorMsg[] = "The username or email field is required.";
    } else if (empty($email)) {
        $errorMsg[] = "The username or email field is required.";
    } else {
        try {
            $sql = $db->prepare("SELECT * FROM users WHERE email=:uemail OR username=:uname");
            $sql->execute(array(':uemail' => $email, ':uname' => $username));
            if ($sql->rowCount()) {
                $row = $sql->fetch(PDO::FETCH_ASSOC);
                if ($email == $row['email'] or $username == $row['username']) {
                    if (password_verify($password, $row['password'])) {
                        storeSessionData($row);
                        $loginMessage = "Successfully Logged In !";
                        header("refresh:2; ../");
                    } else
                        $errorMsg[] = "Invalid Credentials.";
                } else
                    $errorMsg[] = "Invalid Credentials.";
            } else
                $errorMsg[] = "Invalid Credentials.";
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
}

function storeSessionData($row)
{
    session_start();
    $_SESSION['loginData'] = array('loginData' => array());
    $userInfo = array(
        'id' => $row['id'],
        'first_name' => $row['first_name'],
        'last_name' => $row['last_name'],
        'email' => $row['email'],
        'username' => $row['last_name'],
        'mobile_no' => $row['mobile_no'],
        'address' => $row['address'],
        'gender' => $row['gender'],
        'profile_image' => $row['profile_image'],
        'is_verified' => $row['is_verified'],
        'status' => $row['status'],
        'display_name' => $row['display_name'],
        'joined_at' => $row['created_at']
    );
    $_SESSION['loginData'] = array(
        'is_authenticated' => true,
        'userInfo' => $userInfo,

    );
}
