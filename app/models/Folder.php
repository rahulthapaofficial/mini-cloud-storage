<?php
class Folder
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }

    public function store($folderData, $userId)
    {
        $this->db->query("INSERT INTO folders (user_id, name) VALUES (:uid, :name)");
        $this->db->bind(':uid', $userId);
        $this->db->bind(':name', $folderData['folder_name']);
        if ($this->db->execute()) {
            if (!file_exists('public/storage/folders/' . $folderData['folder_name'])) {
                echo 'creating';
                rmdir('/var/www/html/mini-cloud-storage/public/New', 0777, true);
            } else {
                echo "Folder Already Exists";
            }
        }
    }
}
