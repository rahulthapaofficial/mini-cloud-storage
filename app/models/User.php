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
        if ($auth) {
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
        return false;
    }

    public function register($data)
    {
        $first_name = $data['first_name'];
        $last_name = $data['last_name'];
        $email = $data['email'];
        $mobile_no = $data['mobile_no'];
        $display_name = $first_name . ' ' . $last_name;
        $password = password_hash($data['password'], PASSWORD_DEFAULT);
        $otp = rand(100000, 999999);
        $hash = hash('ripemd160', $otp);

        $this->db->query("INSERT INTO users (first_name, last_name, email, mobile_no, password, display_name, otp, hash, created_at, updated_at) VALUES (:fname, :lname, :uemail, :mobileno, :password, :displayname, :otp, :hash, :created, :updated)");
        $this->db->bind(':fname', $first_name);
        $this->db->bind(':lname', $last_name);
        $this->db->bind(':uemail', $email);
        $this->db->bind(':mobileno', $mobile_no);
        $this->db->bind(':password', $password);
        $this->db->bind(':displayname', $display_name);
        $this->db->bind(':otp', $otp);
        $this->db->bind(':hash', $hash);
        $this->db->bind(':created', time());
        $this->db->bind(':updated', time());
        $result = $this->db->execute();
        if ($result) {
            $username = preg_replace('/\s+/', '', $display_name);
            $username = strtolower($username) . '2';
            $this->db->query("UPDATE users SET username = :uname");
            $this->db->bind(':uname', $username);
            $result = $this->db->execute();
            if ($result) {
                $this->db->query("SELECT * FROM users");
                $auth = $this->db->single();
                return $auth;
            }
        }
    }

    public function getMyProfile($userId)
    {
        $this->db->query("SELECT * FROM users WHERE id = :uid");
        $this->db->bind(':uid', $userId);
        $result = $this->db->single();
        unset($result->password, $result->otp, $result->hash, $result->created_at, $result->updated_at);
        return $result;
    }
}
