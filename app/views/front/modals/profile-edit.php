<div id="editProfileModal" class="modal">
    <div class="modal-content" style="margin: 7% auto;">
        <div class="modal-top-header">
            <div class="close" id="editProfileModalCloseBtn">
                <span>&times;</span>
            </div>
        </div>
        <div class="modal-header">
            <label>Edit Profile</label>
        </div>
        <hr>
        <form action="<?php echo BASEURL . '/profile/update' ?>" method="POST">
            <div class="modal-body">
                <div class="form-group">
                    <label for="firstName">First Name <span class="required">*</span></label>
                    <input type="text" name="first_name" class="form-control" id="firstName" value="<?php echo $this->data['my_profile']->first_name ?>" required>
                </div>
                <div class="form-group">
                    <label for="firstName">Last Name <span class="required">*</span></label>
                    <input type="text" name="last_name" class="form-control" id="firstName" value="<?php echo $this->data['my_profile']->last_name ?>" required>
                </div>
                <div class="form-group">
                    <label for="firstName">Mobile No.</label>
                    <input type="text" class="form-control" id="mobileNo" value="<?php echo $this->data['my_profile']->mobile_no ?>" disabled>
                </div>
                <div class="form-group">
                    <label for="firstName">Email</label>
                    <input type="text" class="form-control" id="email" value="<?php echo $this->data['my_profile']->email ?>" disabled>
                </div>
                <div class="form-group">
                    <label for="firstName">Address <span class="required">*</span></label>
                    <input type="text" name="address" class="form-control" id="firstName" value="<?php echo $this->data['my_profile']->address ?>" required>
                </div>
                <div class="form-group">
                    <label for="firstName">Gender <span class="required">*</span></label>
                    <div style="display: flex;">
                        <label class="mr-10" style="display: flex; align-items: center; cursor: pointer;">
                            <input type="radio" name="gender" value="1" class="mr-3" <?php echo $this->data['my_profile']->gender == 1 ? 'checked' : '' ?>>
                            Male
                        </label>
                        <label class="mr-10" style="display: flex; align-items: center; cursor: pointer;">
                            <input type="radio" name="gender" value="0" class="mr-3" <?php echo $this->data['my_profile']->gender == 0 ? 'checked' : '' ?>>
                            Female
                        </label>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="pull-right">
                    <div class="form-group">
                        <button type="reset" class="btn btn-warning mr-10"><i class="fas fa-redo"></i> Reset</button>
                        <button class="btn btn-success"><i class="fas fa-check-circle"></i> Update</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>