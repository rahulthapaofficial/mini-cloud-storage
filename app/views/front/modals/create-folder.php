<div id="createFolderModal" class="modal">
    <div class="modal-content">
        <div class="modal-top-header">
            <div class="close" id="createFolderModalCloseBtn">
                <span>&times;</span>
            </div>
        </div>
        <div class="modal-header">
            <label>Create Folder</label>
        </div>
        <form action="<?php echo BASEURL . '/folders/store' ?>" method="POST">
            <div class="modal-body">
                <div class="form-group">
                    <input type="text" name="folder_name" class="form-control" id="createFolderName" value="Untitled Folder" required>
                </div>
            </div>
            <div class="modal-footer">
                <div class="pull-right">
                    <div class="form-group">
                        <button type="reset" class="btn btn-warning mr-10">Reset</button>
                        <button class="btn btn-success">Create</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>