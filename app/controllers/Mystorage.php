<?php
class Mystorage extends Controller
{
    public function __construct()
    {
        $this->not_logged_in();
    }

    public function index()
    {
        $data['page_title'] = "My Storage";
        $this->view('pages/mystorage', $data);
    }
}
