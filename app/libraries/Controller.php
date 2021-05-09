<?php
// Load the Model and the View
class Controller
{
    public $data;
    public $request;
    public function __construct()
    {
        $this->model_folder = $this->model('Folder');
        $this->helper('session');
        $this->helper('bulksms');
        if (isLoggedIn() == TRUE) {
            $this->data['user_info'] = array(
                'uid' => $_SESSION['uid'],
                'username' => $_SESSION['username'],
                'email' => $_SESSION['email'],
                'mobile_no' => $_SESSION['mobile_no'],
                'is_verified' => $_SESSION['is_verified'],
                'display_name' => $_SESSION['display_name'],
            );
            // Get My All Folders
            $this->data['my_folders'] = $this->model_folder->getFolderIdAndName($this->data['user_info']['uid']);
            $this->data['storage_details'] = $this->getStorageDetails($this->data['user_info']['username']);
        }
        unset($_REQUEST['url']);
        $this->request =  $_REQUEST;
    }

    public function logged_in()
    {
        $requsetURI = $_SERVER['REQUEST_URI'];
        $calledMethod = explode("/", $requsetURI)[2];
        if (!isLoggedIn()) {
            if ($calledMethod == "verify")
                $this->redirect('auth/login');
        } else {
            if (isVerified())
                $this->redirect('dashboard');
            else {
                if ($calledMethod == "verify")
                    return;
                if ($calledMethod == "login")
                    session_destroy();
                $this->redirect('auth/verify');
            }
        }
    }

    public function not_logged_in()
    {
        if (isLoggedIn()) {
            if (!isVerified())
                $this->redirect('auth/verify');
        } else
            $this->redirect('auth/login');
    }

    public function getStorageDetails($username)
    {
        $storageDetails = array();
        $directory = 'public/storage/users/' . $username;
        $totalStorage = 20 * 1024 * 1024;
        if($totalStorage >= (1024 * 1024))
            $storageDetails['totalStorage'] = $totalStorage / (1024 * 1024) . ' GB';
        else if($totalStorage >= 1024 && $totalStorage < (1024 * 1024))
            $storageDetails['totalStorage'] = $totalStorage / 1024 . ' MB';
        else
            $storageDetails['totalStorage'] = $totalStorage . ' KB';
        // Get Directory Size Starts from Here
        $io = popen('/usr/bin/du -sk ' . $directory, 'r');
        $size = fgets($io, 4096);
        $size = substr($size, 0, strpos($size, "\t"));
        pclose($io);
        if ($size >= (1024 * 1024)) {
            $storageDetails['totalUsedSpace'] = number_format($size / (1024 * 1024), 0) . ' GB';
            $storageDetails['totalUsedSpacePercent'] = number_format((($size / $totalStorage) * 100), 2);
        } else if ($size >= 1024 && $size < (1024 * 1024)) {
            $storageDetails['totalUsedSpace'] = number_format($size / 1024, 0) . ' MB';
            $storageDetails['totalUsedSpacePercent'] = number_format((($size / $totalStorage) * 100), 2);
        } else {
            $storageDetails['totalUsedSpace'] = number_format($size, 0) . ' KB';
            $storageDetails['totalUsedSpacePercent'] = number_format(($size / $totalStorage) * 100, 2);
        }
        return $storageDetails;
        // Get Directory Size Ends Here
    }

    public function redirect($route)
    {
        echo "<script>window.location='" . BASEURL . "/" . $route . "';</script>";
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
