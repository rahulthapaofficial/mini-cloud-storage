<?php
require  APPROOT . '/views/front/layouts/partial/header.php';
require  APPROOT . '/views/front/layouts/partial/navbar.php';
require  APPROOT . '/views/front/layouts/partial/sidebar.php';
?>

<div class="content">
    <div class="content-header">
        My Profile
    </div>
    <div class="container">
        <div style="background: silver; padding: 20px; display: flex; flex-direction: column; justify-content: center; align-items: center;">
            <img style="margin-bottom: 10px; border-radius: 50%; border: 2px solid #24292e;" src="https://ui-avatars.com/api/?name=<?php echo $this->data['user_info']['display_name'] ?>" alt="<?php echo $this->data['user_info']['display_name'] ?>" />
            <h3><?php echo $this->data['user_info']['display_name'];
                echo $this->data['user_info']['is_verified'] ? ' <small><i class="fa fa-check-circle text-success"></i></small>' : '' ?>
            </h3>
            <p>+977 <?php echo $this->data['user_info']['mobile_no'] ?></p>
            <p><?php echo $this->data['user_info']['email'] ?></p>
        </div>
        <div style="padding: 10px; background: #24292e; color: #fff;">
            <h4>My Folders</h4>
        </div>
        <div style="margin: 20px; display: grid; grid-template-columns: auto auto auto auto; grid-gap: 10px">
            <?php foreach ($this->data['my_folders'] as $key => $folder) : ?>
                <div style="display: flex; justify-content: space-between; align-items: center; border-radius: 10px; padding: 10px; border: 1px solid #24292e; cursor: pointer;"><?php echo $folder->name ?><i class="fa fa-ellipsis-v"></i></div>
            <?php endforeach ?>
        </div>
        <div style="padding: 10px; background: #24292e; color: #fff;">
            <h4>My Files</h4>
        </div>
        <div style="margin: 20px; display: grid; grid-template-columns: auto auto auto auto; grid-gap:10px">
            <?php foreach ($this->data['my_folders'] as $key => $folder) : ?>
                <div style="display: flex; justify-content: space-between; align-items: center; border-radius: 10px; padding: 10px; border: 1px solid #24292e; cursor: pointer;"><?php echo $folder->name ?><i class="fa fa-ellipsis-v"></i></div>
            <?php endforeach ?>
        </div>
    </div>
</div>
<?php
require  APPROOT . '/views/front/layouts/partial/footer.php';
