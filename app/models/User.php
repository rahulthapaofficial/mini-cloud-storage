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
            $username = strtolower(preg_replace('/\s+/', '', $display_name));
            $this->db->query("SELECT * FROM users WHERE username = :uname");
            $this->db->bind(':uname', $username);
            $user = $this->db->single();
            if ($user)
                $username = $username . '-mcs' . $user->id;

            $this->db->query("UPDATE users SET username = :uname WHERE email = :uemail");
            $this->db->bind(':uname', $username);
            $this->db->bind(':uemail', $email);
            if ($this->db->execute()) {
                $this->db->query("SELECT * FROM users WHERE email = :uemail");
                $this->db->bind(':uemail', $email);
                $auth = $this->db->single();
                return $auth;
            }
        }
    }

    public function verifyOTP($userId, $otp)
    {
        $this->db->query("SELECT * FROM users WHERE id = :uid AND otp = :otp");
        $this->db->bind(':uid', $userId);
        $this->db->bind(':otp', $otp);
        $this->db->execute();
        if (!$this->db->rowCount())
            return false;
        $this->db->query("UPDATE users SET is_verified = 1, status = 1 WHERE id = :uid AND otp = :otp");
        $this->db->bind(':uid', $userId);
        $this->db->bind(':otp', $otp);
        $result = $this->db->execute();
        return $result ? true : false;
    }

    public function verify($email, $hash)
    {
        $this->db->query("SELECT * FROM users WHERE email = :uemail AND hash = :hash");
        $this->db->bind(':uemail', $email);
        $this->db->bind(':hash', $hash);
        if ($this->db->execute()) {
            $this->db->query("UPDATE users SET is_verified = 1, status = 1");
            if ($this->db->execute()) {
                $this->db->query("SELECT * FROM users WHERE email = :uemail AND hash = :hash");
                $this->db->bind(':uemail', $email);
                $this->db->bind(':hash', $hash);
                return $this->db->single();
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
