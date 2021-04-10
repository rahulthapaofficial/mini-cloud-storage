<?php
class Mystorage extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
        $this->model_folder = $this->model('Folder');
    }

    public function index()
    {
        $this->data['page_title'] = "My Storage";
        $userInfo = $this->data['user_info'];
        $folders = $this->model_folder->getAllFolders($userInfo['uid']);
        $folderData = $this->getFolderDetails($folders);
        $this->data['folders'] = $folderData;
        $this->view('front/pages/mystorage', $this->data);
    }

    private function getFolderDetails($folders)
    {
        $userInfo = $this->data['user_info'];
        $directory = 'public/storage/users/' . $userInfo['username'];
        foreach ($folders as $key => $folder) {
            $folder->owner = $userInfo['display_name'];
            $folder->created_time = date('Y-m-d h:i:s A', $folder->created_at);
            $folder->modified_time = date('Y-m-d h:i:s A', filectime($directory . '/' . $folder->name));
            // Get Directory Size Starts from Here
            $io = popen('/usr/bin/du -sk ' . $directory . '/' . $folder->name, 'r');
            $size = fgets($io, 4096);
            $size = substr($size, 0, strpos($size, "\t"));
            pclose($io);
            if ($size > (1024 * 1024))
                $fileSize = number_format(($size / (1024 * 1024)), 2) . ' GB';
            else if ($size > 1024 && $size < (1024 * 1024))
                $fileSize = number_format(($size / 1024), 2) . ' MB';
            else
                $fileSize = number_format($size, 2) . ' KB';
            $folder->size = $fileSize;
            // Get Directory Size Ends Here
        }
        $data = array_reverse($folders);
        return $data;
    }
}
