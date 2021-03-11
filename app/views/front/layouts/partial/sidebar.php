<div id="sidebar">
    <ul>
        <li>
            <div class="dropdown">
                <button id="newBtn"><i class="fas fa-plus-circle"></i> New</button>
                <div id="myDropdown" class="dropdown-content">
                    <a href="#">Folder</a>
                    <a href="#">File Upload</a>
                    <a href="#">Folder Upload</a>
                </div>
            </div>
        </li>
        <li id="myFilesMainNav">
            <a href="<?php echo BASEURL . '/mystorage' ?>"><i class="fas fa-hdd mr-4"></i> My Storage</a>
        </li>
        <li id="sharedWithMeMainNav">
            <a href="<?php echo BASEURL . '/sharedwithme' ?>"><i class="fas fa-users mr-4"></i> Shared with me</a>
        </li>
        <li id="trashMainNav">
            <a href="<?php echo BASEURL . '/trash' ?>"><i class="fas fa-trash-alt mr-4"></i> Trash</a>
        </li>
        <li>
            <a href="<?php echo BASEURL . '/auth/logout' ?>"><i class="fas fa-sign-out-alt mr-4"></i> Logout</a>
        </li>
    </ul>
</div>