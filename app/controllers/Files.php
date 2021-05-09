<?php
class Files extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->not_logged_in();
        $this->model_folder = $this->model('Folder');
        $this->model_file = $this->model('File');
    }

    public function index()
    {
        $this->data['page_title'] = "Folders";
        $userInfo = $this->data['user_info'];
        $files = $this->model_file->getFileData($userInfo['uid']);
        $fileData = $this->getFileDetails($files);
        $this->data['files'] = $fileData;
        $this->view('front/pages/files', $this->data);
    }

    public function store()
    {
        $userInfo = $this->data['user_info'];
        $directory = 'public/storage/users/' . $userInfo['username'];

        $folderId = $this->request['folder_id'];
        $file = $_FILES['file_name']['name'];
        $tempFileName = $_FILES['file_name']['tmp_name'];

        $fileName = strtolower(pathinfo($file, PATHINFO_FILENAME));
        $fileType = strtolower(pathinfo($file, PATHINFO_EXTENSION));
        $fileName = $fileName . '_' . $userInfo['uid'] . '_' . time() . '.' . $fileType;
        $fileName = str_replace(' ', '-', strtolower($fileName));

        if ($folderId) {
            $folderName = $this->model_folder->getFolderName($userInfo['uid'], $folderId);
            $directory .= '/' . $folderName;
            if (!file_exists($directory . '/' . $fileName)) {
                $uploadFile = move_uploaded_file($tempFileName, $directory . '/' . $fileName);
                if ($uploadFile) {
                    $this->model_file->store($fileName, $userInfo['uid'], $folderId);
                    $this->redirect('dashboard');
                } else {
                    echo "Server Error.";
                }
            } else {
                echo "File Already Exists.";
            }
        } else {
            if (!file_exists($directory . '/' . $fileName)) {
                $uploadFile = move_uploaded_file($tempFileName, $directory . '/' . $fileName);
                if ($uploadFile) {
                    $this->model_file->store($fileName, $userInfo['uid']);
                    $this->redirect('dashboard');
                } else
                    echo "Server Error.";
            } else
                echo "File Already Exists.";
        }
    }

    private function getFileDetails($files)
    {
        $userInfo = $this->data['user_info'];
        $directory = 'public/storage/users/' . $userInfo['username'];
        foreach ($files as $key => $file) {
            $folderName = $this->model_folder->getFolderName($userInfo['uid'], $file->folder_id);
            if (file_exists($directory . '/' . $folderName . '/' . $file->name)) {
                $file->owner = $userInfo['display_name'];
                $file->created_time = date('Y-m-d h:i:s A', $file->created_at);
                $file->modified_time = filesize($directory . '/' . $folderName . '/' . $file->name);
                $file->modified_time = date('Y-m-d h:i:s A', fileatime($directory . '/' . $folderName . '/' . $file->name));
                // Get Directory Size Starts from Here
                $size = intval(number_format(filesize($directory . '/' . $folderName . '/' . $file->name)));
                if ($size >= (1024 * 1024))
                    $fileSize = number_format(($size / (1024 * 1024)), 2) . ' GB';
                else if ($size >= 1024 && $size < (1024 * 1024))
                    $fileSize = number_format(($size / 1024), 2) . ' MB';
                else
                    $fileSize = number_format($size, 2) . ' KB';
                $file->size = $fileSize;
                // Get Directory Size Ends Here
            }
        }
        $data = array_reverse($files);
        return $data;
    }
}
