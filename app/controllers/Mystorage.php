<?php
class Mystorage extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
    }

    public function index()
    {
        $this->data['page_title'] = "My Storage";
        $this->view('front/pages/mystorage', $this->data);
    }
}
