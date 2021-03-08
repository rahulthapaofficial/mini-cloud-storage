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
                    $this->view('pages/auth/login', $data);
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
        $this->view('pages/auth/login', $data);
    }

    public function register()
    {
        $data['page_title'] = 'Register';
        $this->view('pages/auth/register', $data);
    }

    public function logout()
    {
        $this->destroyUserSession();
    }

    private function createUserSession($user)
    {
        $_SESSION['user_id'] = $user->id;
        $_SESSION['username'] = $user->username;
        $_SESSION['email'] = $user->iemaild;
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
