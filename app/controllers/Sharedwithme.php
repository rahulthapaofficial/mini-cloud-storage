<?php
class Sharedwithme extends Controller
{
    public function __construct()
    {
        $this->not_logged_in();
    }

    public function index()
    {
        $data['page_title'] = "Shared With Me";
        $this->view('pages/sharedwithme', $data);
    }
}
