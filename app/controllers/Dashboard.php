<?php

class Dashboard extends Controller
{
    public function __construct()
    {
        $this->not_logged_in();
    }

    public function index()
    {
        $data['page_title'] = "Dashboard";
        $this->view('pages/dashboard', $data);
    }
}
