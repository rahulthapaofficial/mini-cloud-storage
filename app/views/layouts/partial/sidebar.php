<div id="sidebar">
    <ul>
        <li>
            <div class="dropdown">
                <button id="newBtn">New</button>
                <div id="myDropdown" class="dropdown-content">
                    <a href="#">Folder</a>
                    <a href="#">File Upload</a>
                    <a href="#">Folder Upload</a>
                </div>
            </div>
        </li>
        <li id="myFilesMainNav" class="active">
            <a href="<?php echo BASEURL . '/mystorage' ?>">My Storage</a>
        </li>
        <li id="sharedWithMeMainNav">
            <a href="<?php echo BASEURL . '/sharedwithme' ?>">Shared with me</a>
        </li>
        <li>
            <a href="#">Trash</a>
        </li>
        <li>
            <a href="<?php echo BASEURL . '/auth/logout' ?>">Logout</a>
        </li>
    </ul>
</div>