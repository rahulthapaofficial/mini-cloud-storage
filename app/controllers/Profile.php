<?php
class Profile extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
    }

    public function index()
    {
        $this->data['page_title'] = "Profile";
        $this->view('pages/profile', $this->data);
    }
}
