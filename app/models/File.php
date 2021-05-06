<?php
class File
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }

    public function getFileData($userId = null, $id = null)
    {
        if ($id && $userId) {
            $this->db->query("SELECT * FROM files WHERE id = :id AND user_id = :uid");
            $this->db->bind(':id', $id);
            $this->db->bind(':uid', $userId);
            $result = $this->db->single();
            return $result;
        } elseif ($userId) {
            $this->db->query("SELECT * FROM files WHERE user_id = :uid");
            $this->db->bind(':uid', $userId);
            $result = $this->db->resultSet();
            return $result;
        } else {
            $this->db->query("SELECT * FROM files");
            $result = $this->db->resultSet();
            return $result;
        }
    }

    public function store($fileName, $userId, $folderId = null)
    {
        if ($folderId) {
            $this->db->query("INSERT INTO files (user_id, folder_id, name, created_at, updated_at) VALUES (:uid, :folderid, :name, :created, :updated)");
            $this->db->bind(':uid', $userId);
            $this->db->bind(':folderid', $folderId);
            $this->db->bind(':name', $fileName);
            $this->db->bind(':created', time());
            $this->db->bind(':updated', time());
            $result = $this->db->execute();
            return $result ? true : false;
        } else {
            $this->db->query("INSERT INTO files (user_id, name, created_at, updated_at) VALUES (:uid, :name, :created, :updated)");
            $this->db->bind(':uid', $userId);
            $this->db->bind(':name', $fileName);
            $this->db->bind(':created', time());
            $this->db->bind(':updated', time());
            $result = $this->db->execute();
            return $result ? true : false;
        }
    }
}
