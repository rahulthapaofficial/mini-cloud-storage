<?php
require  APPROOT . '/views/front/layouts/partial/header.php';
require  APPROOT . '/views/front/layouts/partial/navbar.php';
require  APPROOT . '/views/front/layouts/partial/sidebar.php';
include './app/views/front/modals/profile-edit.php';
?>

<div class="content">
    <div class="content-header" style="display: flex; justify-content: space-between; align-items: center;">
        <span>My Profile</span>
        <span style="font-size: small;">Home | Profile</span>
    </div>
    <div class="container">
        <div style="display: flex; flex-direction: column; justify-content: center; align-items: center; background: silver; padding: 10px;">
            <img style="border-radius: 50%; border: 2px solid #24292e;" src="https://ui-avatars.com/api/?name=<?php echo $this->data['user_info']['display_name'] ?>" alt="<?php echo $this->data['user_info']['display_name'] ?>" />
            <div style="text-align: center; margin: 10px 0;">
                <h3><?php echo $this->data['user_info']['display_name'];
                    echo $this->data['user_info']['is_verified'] ? ' <small><i class="fa fa-check-circle text-success"></i></small>' : '' ?>
                </h3>
                <p>+977 <?php echo $this->data['user_info']['mobile_no'] ?></p>
                <p><?php echo $this->data['user_info']['email'] ?></p>
            </div>
            <button id="editProfileBtn" class="btn btn-system"><i class="fas fa-user-edit"></i> Edit Profile</button>
        </div>
        <div style="padding: 10px; background: #24292e; color: #fff;">
            <h4>My Folders</h4>
        </div>
        <div style="margin: 20px; display: grid; grid-template-columns: auto auto auto auto; grid-gap: 10px">
            <?php foreach ($this->data['my_folders'] as $key => $folder) : ?>
                <div style="display: flex; justify-content: space-between; align-items: center; border-radius: 10px; padding: 10px; border: 1px solid #24292e; cursor: pointer"><?php echo $folder->name ?><i class="fa fa-ellipsis-v"></i></div>
            <?php endforeach ?>
        </div>
        <div style="padding: 10px; background: #24292e; color: #fff;">
            <h4>My Files</h4>
        </div>
        <div style="margin: 20px; display: grid; grid-template-columns: auto auto auto auto; grid-gap:10px">
            <?php foreach ($this->data['my_files'] as $key => $file) : ?>
                <div style="display: flex; flex-direction: column; justify-content: center; align-items: center; border-radius: 10px; padding: 10px; border: 1px solid #24292e; cursor: pointer;">
                    <img src="https://icons-for-free.com/iconfiles/png/512/file+sql+icon-1320183612970878250.png" style="height: 200px;">
                    <p style="background: silver; color: #000; padding: 10px; border-radius: 10px; font-size: small;"><?php echo $file->name ?></p>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</div>

<script>
    var editProfileBtn = document.querySelector("#editProfileBtn");
    var editProfileModal = document.querySelector("#editProfileModal");
    var editProfileModalCloseBtn = document.querySelector(
        "#editProfileModalCloseBtn"
    );

    editProfileBtn.onclick = function() {
        setTimeout(() => {
            mcsQuery("#editProfileName").select();
        }, (editProfileModal.style.display = "block"));
    };

    editProfileModalCloseBtn.onclick = function() {
        editProfileModal.style.display = "none";
    };
</script>

<?php
require  APPROOT . '/views/front/layouts/partial/footer.php';
