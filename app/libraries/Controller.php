<?php
// Load the Model and the View
class Controller
{
    public $data;
    public $request;
    public function __construct()
    {
        $this->helper('session');
        if (isLoggedIn() == TRUE) {
            $this->data['user_info'] = array(
                'uid' => $_SESSION['user_id'],
                'username' => $_SESSION['username'],
                'email' => $_SESSION['email'],
                'display_name' => $_SESSION['display_name'],
            );
        }
        unset($_REQUEST['url']);
        $this->request =  $_REQUEST;
    }

    public function logged_in()
    {
        if (isLoggedIn() == TRUE) {
            $this->redirect('mystorage');
        }
    }

    public function not_logged_in()
    {
        $this->helper('session');
        if (isLoggedIn() == FALSE) {
            $this->redirect('auth/login');
        }
    }

    public function redirect($route)
    {
        header('Location: ' . BASEURL . '/' . $route);
    }
    public function model($model)
    {
        $modelDir = 'app/models/' . $model . '.php';
        if (file_exists($modelDir)) {
            // Require Model File
            require_once $modelDir;
            // Instantiate Model
            return new $model();
        } else
            die($model . " Model does not exists.");
    }

    public function view($view, $data = [])
    {
        if (file_exists('app/views/' . $view . '.php')) {
            require_once 'app/views/' . $view . '.php';
        } else {
            die("View does not exists.");
        }
    }

    public function helper($helper)
    {
        return require_once 'app/helpers/' . $helper . '.php';
    }
}