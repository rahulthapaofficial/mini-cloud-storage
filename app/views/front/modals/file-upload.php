<div id="fileUploadModal" class="modal">
    <div class="modal-content">
        <div class="modal-top-header">
            <div class="close" id="fileUploadModalCloseBtn">
                <span>&times;</span>
            </div>
        </div>
        <div class="modal-header">
            <label>Upload File</label>
        </div>
        <form action="<?php echo BASEURL . '/files/store' ?>" method="POST">
            <div class="modal-body">
                <div class="form-group">
                    <select name="folder_id" id="folder_id" class="form-control">
                        <option value="">Select Folder</option>
                        <?php foreach ($this->data['my_folders'] as $key => $folder) : ?>
                            <option value=""><?php echo $folder->name; ?></option>
                        <?php endforeach ?>
                    </select>
                </div>
                <div class="form-group">
                    <input type="file" name="file_name" class="form-control" id="fileUploadName" required>
                </div>
            </div>
            <div class="modal-footer">
                <div class="pull-right">
                    <div class="form-group">
                        <button type="reset" class="btn btn-warning mr-10">Reset</button>
                        <button class="btn btn-success"><i class="fa fa-upload"></i> Upload</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>