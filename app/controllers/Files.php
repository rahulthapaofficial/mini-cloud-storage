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
        $folders = $this->model_folder->getAllFolders($userInfo['uid']);
        $this->data['folders'] = $folders;
        $this->view('front/pages/mystorage', $this->data);
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
                    $this->redirect('mystorage');
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
                    $this->redirect('mystorage');
                } else
                    echo "Server Error.";
            } else
                echo "File Already Exists.";
        }
    }
}
