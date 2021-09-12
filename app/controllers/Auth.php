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

            if (empty($data['first_name'])) {
                $this->data['firstNameError'] = 'Please Enter Email OR Username.';
            }

            if (empty($data['last_name'])) {
                $this->data['lastNameError'] = 'Last Name cannot be empty.';
            }

            if (!filter_var($data['email'], FILTER_VALIDATE_EMAIL)) {
                $this->data['emailError'] = "Invalid email format !";
            }

            if (strlen($data['mobile_no']) != 10) {
                $this->data['mobileNoError'] = 'Mobile No. must be of 10 digits.';
            }

            if ($data['password'] != $data['confirm_password']) {
                $this->data['passwordNotMatch'] = "Password & Confirm Password doesn't match.";
            }

            if (empty($data['first_name']) || empty($data['last_name']) || !filter_var($data['email'], FILTER_VALIDATE_EMAIL) || empty($data['email']) || strlen($data['mobile_no']) != 10 || empty($data['password']) || empty($data['confirm_password']) || $data['password'] != $data['confirm_password'])
                $this->view('front/pages/auth/register', $this->data);
            else {
                $registerUser = $this->model_user->register($data);

                if ($registerUser) {
                    $directory = 'public/storage/users' . '/' . $registerUser->username;
                    if (!file_exists($directory)) {
                        $old = umask(0);
                        mkdir($directory, 0777);
                        umask($old);
                    }
                    if ($this->sendVerificationMail($registerUser))
                        $this->createAuthSession($registerUser);
                    else {
                        $this->createAuthSession($registerUser);
                        $this->view('front/pages/auth/verify', $this->data);
                    }
                    // $this->sendOTP($registerUser);
                } else {
                    $this->data['errorMsg'] = 'Something went wrong.';
                    $this->view('front/pages/auth/register', $this->data);
                }
            }
        } else {
            $this->view('front/pages/auth/register', $this->data);
        }
    }

    public function verify($email = null, $hash = null)
    {
        if ($email && $hash) {
            $verifyUser = $this->model_user->verify($email, $hash);
            if ($verifyUser)
                $this->createAuthSession($verifyUser);
        }

        $this->data['page_title'] = 'Verify';
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

            $otp = trim($_POST['otp']);
            $verifyOTP = $this->model_user->verifyOTP($this->data['user_info']['uid'], $otp);
            if ($verifyOTP) {
                $_SESSION['is_verified'] = 1;
                $this->redirect('dashboard');
            }
            $this->data['errorMsg'] = "Invalid OTP";
            $this->view('front/pages/auth/verify', $this->data);
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
        $password = $_POST['password'];
        $otp = $user->otp;
        $hash = $user->hash;
        $emailVerificationUrl = BASEURL . "/auth/verify/" . $email . "/" . $hash;
        $emailVerificationPage = BASEURL . "/auth/verify";

        $to      = $email;
        $subject = 'Signup | Verification';
        $body = "
<table width='100%' cellspacing='0' cellpadding='0'>
<tr>
    <td>
        <table cellspacing='0' cellpadding='0'>
            <tr>
                <td style='border-radius: 2px;' bgcolor='#24292e'>
                    <p style='width: 100%; padding: 8px 15px; font-size: 18px; color: #fff'>Email Verification | Mini-Cloud Storage Security</p>
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
Thanks for signing up!<br />
Your OTP (One Time Passcode) for Mini-Cloud Storage is: " . $otp . "<br />
Your account has been created, you can login with the following credentials after you have activated your account by pressing the url below.<br />
<a href='" . $emailVerificationPage . "'>Click Here</a> to continue with your OTP (One Time Passcode).<br />
------------------------<br />
Email   : " . $email . "<br />
Username: " . $user->username . "<br />
Password: " . $password . "<br />
OTP     : " . $otp . "<br />
------------------------<br />
Please click the button below to verify your email address:<br />
<table width='100%' cellspacing='0' cellpadding='0'>
  <tr>
      <td>
          <table cellspacing='0' cellpadding='0'>
              <tr>
                  <td style='border-radius: 2px;' bgcolor='#24292e'>
                      <a href='" . $emailVerificationUrl . "' target='_blank' style='padding: 8px 12px; border-radius: 2px; font-family: Helvetica, Arial, sans-serif;font-size: 13px; color: #fff; text-decoration: none;font-weight:bold;display: inline-block;'>
                          Verify Your Email Address             
                      </a>
                  </td>
              </tr>
          </table>
      </td>
  </tr>
</table>";

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
        $_SESSION['uid'] = $auth->id;
        $_SESSION['username'] = $auth->username;
        $_SESSION['email'] = $auth->email;
        $_SESSION['mobile_no'] = $auth->mobile_no;
        $_SESSION['display_name'] = $auth->display_name;
        $_SESSION['is_verified'] = $auth->is_verified;
        if ($auth->is_verified)
            $this->redirect('dashboard');
        $this->redirect('auth/verify');
    }

    private function destroyUserSession()
    {
        session_destroy();
        $this->redirect('auth/login');
    }
}
