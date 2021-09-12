<?php
class Folders extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
        $this->model_folder = $this->model('Folder');
    }

    public function index()
    {
        $this->data['page_title'] = "Folders";
        $userInfo = $this->data['user_info'];
        $folders = $this->model_folder->getAllFolders($userInfo['uid']);
        $folderData = $this->getFolderDetails($folders);
        $this->data['folders'] = $folders;
        $this->view('front/pages/folders', $this->data);
    }

    public function store()
    {
        $folderName = $this->request['folder_name'];
        $userInfo = $this->data['user_info'];
        $directory = 'public/storage/users/' . $userInfo['username'];

        if (!file_exists($directory . '/' . $folderName)) {
            $old = umask(0);
            $createFolder = mkdir($directory . '/' . $folderName, 0777);
            umask($old);
            if ($createFolder) {
                $create = $this->model_folder->store($folderName, $userInfo['uid']);
                if ($create) {
                    echo "Folder Created Successfully.";
                    $this->redirect('dashboard');
                } else {
                    echo "Cannot Create Folder.";
                }
            } else {
                echo "Server Error.";
            }
        } else {
            echo "Folder Already Exists.";
        }
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
            $folderName = str_replace(' ', '\ ', $folder->name);
            $io = popen('/usr/bin/du -sk ' . $directory . '/' . $folderName, 'r');
            $size = fgets($io, 4096);
            $size = substr($size, 0, strpos($size, "\t"));
            pclose($io);
            if ($size > (1024 * 1024))
                $fileSize = number_format(($size / (1024 * 1024)), 2) . ' GB';
            else if ($size > 1024 && $size < (1024 * 1024))
                $fileSize = number_format(($size / 1024), 2) . ' MB';
            else
                $fileSize = number_format($size || 0, 2) . ' KB';
            $folder->size = $fileSize;
            // Get Directory Size Ends Here
        }
        $data = array_reverse($folders);
        return $data;
    }
}
