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

    public function getFolderIdAndName($userId, $id = null)
    {
        if ($id) {
            $this->db->query("SELECT id, name FROM folders WHERE id = :id");
            $this->db->bind(':id', $userId);
            $result = $this->db->resultSet();
            return $result;
        }
        $this->db->query("SELECT  id, name FROM folders WHERE user_id = :uid");
        $this->db->bind(':uid', $userId);
        $result = $this->db->resultSet();
        return $result;
    }

    public function getFolderName($userId, $id = null)
    {
        if ($id) {
            $this->db->query("SELECT name FROM folders WHERE id = :id AND user_id = :uid");
            $this->db->bind(':id', $id);
            $this->db->bind(':uid', $userId);
            $result = $this->db->single()->name;
            return $result;
        }
        $this->db->query("SELECT name FROM folders WHERE user_id = :uid");
        $this->db->bind(':uid', $userId);
        $result = $this->db->resultSet();
        return $result->name;
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
