<?php
class Trash extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
    }

    public function index()
    {
        $data['page_title'] = "Trash";
        $this->view('front/pages/trash', $data);
    }
}
