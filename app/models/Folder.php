<?php
class Folder
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getAllFolders($userId = null, $id = null)
    {
        if ($userId) {
            $this->db->query("SELECT * FROM folders WHERE user_id = :uid");
            $this->db->bind(':uid', $userId);
            $result = $this->db->resultSet();
            return $result;
        }
        $this->db->query("SELECT * FROM folders");
        $result = $this->db->resultSet();
        return $result;
    }

    public function store($folderName, $userId)
    {
        $this->db->query("INSERT INTO folders (user_id, name, created_at, updated_at) VALUES (:uid, :name, :created, :updated)");
        $this->db->bind(':uid', $userId);
        $this->db->bind(':name', $folderName);
        $this->db->bind(':created', time());
        $this->db->bind(':updated', time());
        $result = $this->db->execute();
        return $result ? true : false;
    }
}
