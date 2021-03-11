<?php
class User
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }

    public function login($email, $username, $password)
    {
        $this->db->query("SELECT * FROM users WHERE email = :uemail OR username = :uname");
        $this->db->bind(':uemail', $email);
        $this->db->bind(':uname', $username);
        $auth = $this->db->single();
        if ($email == $auth->email or $username == $auth->username) {
            $hashedPassword = $auth->password;
            if (password_verify($password, $hashedPassword)) {
                return $auth;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public function register()
    {
        //
    }
}
