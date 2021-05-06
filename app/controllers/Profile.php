<?php
class Profile extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
        $this->model_file = $this->model('File');
    }

    public function index()
    {
        $this->data['page_title'] = "Profile";
        $this->data['my_files'] = $this->model_file->getFileData();
        $this->view('front/pages/profile', $this->data);
    }
}
