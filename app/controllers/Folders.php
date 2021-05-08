<?php
class Folders extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
        $this->model_folder = $this->model('Folder');
    }

    public function index()
    {
        $this->data['page_title'] = "Folders";
        $userInfo = $this->data['user_info'];
        $folders = $this->model_folder->getAllFolders($userInfo['uid']);
        $this->data['folders'] = $folders;
        $this->view('front/pages/mystorage', $this->data);
    }

    public function store()
    {
        $folderName = $this->request['folder_name'];
        $userInfo = $this->data['user_info'];
        $directory = 'public/storage/users/' . $userInfo['username'];

        if (!file_exists($directory . '/' . $folderName)) {
            $old = umask(0);
            $createFolder = mkdir($directory . '/' . $folderName, 0777);
            umask($old);
            if ($createFolder) {
                $create = $this->model_folder->store($folderName, $userInfo['uid']);
                if ($create) {
                    echo "Folder Created Successfully.";
                    $this->redirect('dashboard');
                } else {
                    echo "Cannot Create Folder.";
                }
            } else {
                echo "Server Error.";
            }
        } else {
            echo "Folder Already Exists.";
        }
    }
}
