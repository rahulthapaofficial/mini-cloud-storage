<?php
class Sharedwithme extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
    }

    public function index()
    {
        $this->data['page_title'] = "Shared With Me";
        $this->view('front/pages/sharedwithme', $this->data);
    }
}
