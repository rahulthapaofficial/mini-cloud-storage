<?php
class Profile extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
        $this->model_file = $this->model('File');
        $this->model_user = $this->model('User');
    }

    public function index()
    {
        $this->data['page_title'] = "Profile";
        $this->data['my_files'] = $this->model_file->getFileData();
        $userId = $this->data['user_info']['uid'];
        $this->data['my_profile'] = $this->model_user->getMyProfile($userId);
        // echo json_encode($this->data['my_profile']);
        // return;
        $this->view('front/pages/profile', $this->data);
    }
}
