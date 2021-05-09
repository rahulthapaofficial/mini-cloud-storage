<?php

class Dashboard extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
        $this->model_file = $this->model('File');
    }

    public function index()
    {
        $data['page_title'] = "Dashboard";
        $this->data['my_files'] = $this->model_file->getFileData($this->data['user_info']['uid']);
        $this->view('front/pages/dashboard', $data);
    }
}
