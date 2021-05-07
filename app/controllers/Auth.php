<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require './vendor/autoload.php';

class Auth extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->logged_in();
        $this->model_user = $this->model('User');
    }

    public function login()
    {
        $this->data['page_title'] = 'Login';
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

            $data = array(
                'email' => trim($_POST['email_username']),
                'username' => trim($_POST['email_username']),
                'password' => trim($_POST['password']),
                'emailUsernameError' => '',
                'passwordError' => '',
                'errorMsg' => ''
            );

            if (empty($data['username'])) {
                $data['emailUsernameError'] = 'Please Enter Email OR Username.';
            }

            if (empty($data['password'])) {
                $data['passwordError'] = 'Please Enter a Password.';
            }

            if (empty($data['emailUsernameError']) && empty($data['passwordError'])) {
                $loggedInUser = $this->model_user->login($data['email'], $data['username'], $data['password']);
                if ($loggedInUser) {
                    $this->createAuthSession($loggedInUser);
                } else {
                    $this->data['errorMsg'] = 'Invalid Credentials.';
                    $this->view('front/pages/auth/login', $this->data);
                }
            }
        } else {
            $data = array(
                'email' => '',
                'username' => '',
                'password' => '',
                'emailUsernameError' => '',
                'passwordError' => '',
                'errorMsg' => ''
            );
        }
        $this->view('front/pages/auth/login', $this->data);
    }

    public function register()
    {
        $this->data['page_title'] = 'Register';
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

            $data = array(
                'first_name' => trim($_POST['first_name']),
                'last_name' => trim($_POST['last_name']),
                'email' => trim($_POST['email']),
                'mobile_no' => trim($_POST['mobile_no']),
                'password' => trim($_POST['password']),
                'confirm_password' => trim($_POST['confirm_password']),
            );

            $registerUser = $this->model_user->register($data);

            if ($registerUser) {
                if ($this->sendVerificationMail($registerUser))
                    $this->createAuthSession($registerUser);
                // $this->sendOTP($registerUser);
            } else {
                $this->data['errorMsg'] = 'Something went wrong.';
                $this->view('front/pages/auth/register', $this->data);
            }
        } else {
            $this->view('front/pages/auth/register', $this->data);
        }
    }

    public function verify()
    {
        echo json_encode($_SESSION['user_id']);
        return;
        if (!$this->data['user_info'])
            return $this->redirect('auth/login');

        $this->data['page_title'] = 'Verify';
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

            $data = array(
                'otp' => trim($_POST['first_name'])
            );
            $this->redirect('mystorage');
        } else {
            $this->view('front/pages/auth/verify', $this->data);
        }
    }

    public function logout()
    {
        $this->destroyUserSession();
    }

    private function sendOTP($auth)
    {
        $firstName = $auth->first_name;
        $otp = $auth->otp;
        $token = bulkSmsConfig()->api_token;
        $number = $auth->mobile_no;
        $sender = bulkSmsConfig()->sender_id;
        $message = 'Dear ' . $firstName . ',
' . $otp . ' is your OTP for Mini-Cloud Storage.';
        $content = [
            'token' => rawurlencode($token),
            'to' => rawurlencode($number),
            'sender' => rawurlencode($sender),
            'message' => wordwrap($message),
        ];
        sendBulkSMS($content);
    }

    private function sendVerificationMail($user)
    {
        $name = $user->display_name;
        $email = $user->email;
        $hash = $user->hash;

        $to      = $email;
        $subject = 'Signup | Verification';
        $body = '
Thanks for signing up!<br />
Your account has been created, you can login with the following credentials after you have activated your account by pressing the url below.<br />
------------------------<br />
Email: ' . $email . '<br />
Username: ' . $user->username . '<br />
------------------------<br />
Please click this link to activate your account:
' . BASEURL . '/auth/verify.php?email=' . $email . '&hash=' . $hash;

        $mail = new PHPMailer(true);
        try {
            $mail->SMTPDebug = SMTP::DEBUG_OFF;
            $mail->isSMTP();
            $mail->Host       = 'smtp.gmail.com';
            $mail->SMTPAuth   = true;
            $mail->Username   = 'mailto.minicloudstorage@gmail.com';
            $mail->Password   = 'xccsnkwbhtccvalj';
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port       = 587;

            $mail->setFrom('mailto.minicloudstorage@gmail.com', 'Mini-Cloud Storage');
            $mail->addAddress($to, $name);
            $mail->addReplyTo('mcs@rahulthapa.com.np', 'Mini-Cloud Storage');

            $mail->isHTML(true);
            $mail->Subject = $subject;
            $mail->Body    = $body;

            $mail->send();
            return true;
        } catch (Exception $e) {
            return false;
        }
    }

    private function createAuthSession($auth)
    {
        $_SESSION['user_id'] = $auth->id;
        $_SESSION['username'] = $auth->username;
        $_SESSION['email'] = $auth->email;
        $_SESSION['mobile_no'] = $auth->mobile_no;
        $_SESSION['display_name'] = $auth->display_name;
        $_SESSION['is_verified'] = $auth->is_verified;
        if (!$auth->is_verified)
            $this->redirect('auth/verify');
        $this->redirect('mystorage');
    }

    private function destroyUserSession()
    {
        unset($_SESSION['user_id']);
        unset($_SESSION['username']);
        unset($_SESSION['email']);
        unset($_SESSION['mobile_no']);
        unset($_SESSION['display_name']);
        $this->redirect('auth/login');
    }
}
