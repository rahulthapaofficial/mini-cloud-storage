<?php include './app/views/front/modals/folders.php' ?>
<div id="sidebar">
    <ul>
        <li id="newBtnList">
            <div class="dropdown">
                <button id="newBtn"><i class="fas fa-plus-circle"></i> New</button>
                <div id="myDropdown" class="dropdown-content">
                    <a href="#" id="createFolderBtn"><i class="fas fa-folder-plus mr-4"></i> Folder</a>
                    <hr>
                    <a href="#"><i class="fas fa-file-upload mr-4"></i> File Upload</a>
                    <a href="#"><i class="fas fa-upload mr-4"></i> Folder Upload</a>
                </div>
            </div>
        </li>
        <li id="myFilesMainNav">
            <a href="<?php echo BASEURL . '/mystorage' ?>"><i class="fas fa-hdd mr-4"></i> My Storage</a>
        </li>
        <li id="sharedWithMeMainNav">
            <a href="<?php echo BASEURL . '/sharedwithme' ?>"><i class="fas fa-users mr-4"></i> Shared with me</a>
        </li>
        <li id="recentMainNav">
            <a href="<?php echo BASEURL . '/sharedwithme' ?>"><i class="fas fa-clock mr-4"></i> Recent</a>
        </li>
        <li id="trashMainNav">
            <a href="<?php echo BASEURL . '/trash' ?>"><i class="fas fa-trash-alt mr-4"></i> Trash</a>
        </li>
    </ul>
</div>