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
        $this->view('front/pages/mystorage', $this->data);
    }

    public function store()
    {
        $userId = $this->data['user_info']['uid'];
        $createFolder = $this->model_folder->store($this->request, $userId);
        if ($createFolder) {
            echo "Folder Created Successfully.";
            $this->redirect('mystorage');
        } else {
            echo "Cannot Create Folder.";
        }
    }
}
