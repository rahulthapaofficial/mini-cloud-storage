<?php include './app/views/front/modals/create-folder.php' ?>
<?php include './app/views/front/modals/file-upload.php' ?>
<?php include './app/views/front/modals/folder-upload.php' ?>
<div id="sidebar">
    <ul>
        <li id="newBtnList">
            <div class="dropdown">
                <button id="newBtn"><i class="fas fa-plus-circle"></i> New</button>
                <div id="myDropdown" class="dropdown-content">
                    <a href="#" id="createFolderBtn"><i class="fas fa-folder-plus mr-4"></i> Folder</a>
                    <hr>
                    <a href="#" id="fileUploadBtn"><i class="fas fa-file-upload mr-4"></i> File Upload</a>
                    <a href="#" id="folderUploadBtn"><i class="fas fa-upload mr-4"></i> Folder Upload</a>
                </div>
            </div>
        </li>
        <li id="dashboardMainNav">
            <a href="<?php echo BASEURL . '/dashboard' ?>"><i class="fas fa-tachometer-alt mr-4"></i> Dashboard</a>
        </li>
        <li id="myFilesMainNav">
            <a href="<?php echo BASEURL . '/mystorage' ?>"><i class="fas fa-hdd mr-4"></i> My Storage</a>
        </li>
        <li id="foldersMainNav">
            <a href="<?php echo BASEURL . '/folders' ?>"><i class="fas fa-folder-open mr-4"></i> Folders</a>
        </li>
        <li id="filesMainNav">
            <a href="<?php echo BASEURL . '/files' ?>"><i class="fas fa-file-alt mr-4"></i> Files</a>
        </li>
        <li id="sharedWithMeMainNav">
            <a href="<?php echo BASEURL . '/sharedwithme' ?>"><i class="fas fa-users mr-4"></i> Collaboration</a>
            <!-- <a href="<?php echo BASEURL . '/sharedwithme' ?>"><i class="fas fa-users mr-4"></i> Shared with me</a> -->
        </li>
        <li id="recentMainNav">
            <a href="<?php echo BASEURL . '/sharedwithme' ?>"><i class="fas fa-clock mr-4"></i> Recent</a>
        </li>
        <li id="trashMainNav">
            <a href="<?php echo BASEURL . '/trash' ?>"><i class="fas fa-trash-alt mr-4"></i> Trash</a>
        </li>
        <hr>
        <li id="trashMainNav">
            <a href="<?php echo BASEURL . '/' ?>"><i class="fas fa-cloud mr-4"></i> Storage (<?php echo $this->data['storage_details']['totalUsedSpacePercent'] ?>% full)</a>
            <div id="myTotalStorage" class="mt-10">
                <div id="usedStorage" style="width: <?php echo $this->data['storage_details']['totalUsedSpacePercent'] ?>%; background: <?php echo $this->data['storage_details']['totalUsedSpacePercent'] > 90 ? 'red' : ($this->data['storage_details']['totalUsedSpacePercent'] > 50 ? '#f9ab00' : 'green') ?>;"></div>
            </div>
            <p style="font-size: small;" class="mt-5"><?php echo $this->data['storage_details']['totalUsedSpace'] ?> of <?php echo $this->data['storage_details']['totalStorage'] ?> Used</p>
            <div class="mt-5" style="display: flex; align-items: center; font-size: small; font-weight: 700;">
                <span class="mr-5">Storage Status</span>
                <span>
                    <div style="background: <?php echo $this->data['storage_details']['totalUsedSpacePercent'] > 90 ? 'red' : ($this->data['storage_details']['totalUsedSpacePercent'] > 50 ? '#f9ab00' : 'green') ?>; width: 8px; height: 8px; border-radius: 50%;"></div>
                </span>
            </div>
        </li>
        <div class="mt-10" style="display: flex; justify-content: space-between;">
            <button class="btn btn-system btn-outline"><i class="fas fa-shopping-basket mr-5"></i> Buy Storage</button>
            <button class="btn btn-system btn-outline"><i class="fas fa-share-alt mr-5"></i> Share Storage</button>
        </div>
    </ul>
</div>