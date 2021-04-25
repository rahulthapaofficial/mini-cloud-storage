<?php
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
                    $this->createUserSession($loggedInUser);
                } else {
                    $data['errorMsg'] = 'Invalid Credentials.';
                    $this->view('front/pages/auth/login', $data);
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
        $data['page_title'] = 'Login';
        $this->view('front/pages/auth/login', $data);
    }

    public function register()
    {
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

            if ($registerUser){
                echo json_encode($registerUser);
                $this->sendOTP($registerUser);
                // $this->sendVerificationMail($registerUser);
            }
            else {
                $data['errorMsg'] = 'Something went wrong.';
                $this->view('front/pages/auth/register', $data);
            }
        } else {
            $data['page_title'] = 'Register';
            $this->view('front/pages/auth/register', $data);
        }
    }

    public function logout()
    {
        $this->destroyUserSession();
    }

    private function sendOTP($user)
    {
        $email = $user->email;
        $otp = $user->otp;
    }

    private function sendVerificationMail($user)
    {
        $email = $user->email;
        $hash = $user->hash;

        $to      = $email; // Send email to our user
        $subject = 'Signup | Verification'; // Give the email a subject 
        $message = '
  
Thanks for signing up!
Your account has been created, you can login with the following credentials after you have activated your account by pressing the url below.
  
------------------------
Email: ' . $email . '
Username: ' . $user->username . '
OTP: ' . $user->otp . '
------------------------
  
Please click this link to activate your account:
http://www.mcs.rahulthapa.com.np/verify.php?email=' . $email . '&hash=' . $hash . '
  
';

        $headers = 'From:minicloudstorage@gmail.com' . "\r\n";
        mail($to, $subject, $message, $headers);
        echo $user->email;
    }

    private function createUserSession($user)
    {
        $_SESSION['user_id'] = $user->id;
        $_SESSION['username'] = $user->username;
        $_SESSION['email'] = $user->email;
        $_SESSION['display_name'] = $user->display_name;
        $this->redirect('mystorage');
    }

    private function destroyUserSession()
    {
        unset($_SESSION['user_id']);
        unset($_SESSION['username']);
        unset($_SESSION['email']);
        unset($_SESSION['display_name']);
        $this->redirect('auth/login');
    }
}
