<?php
require  APPROOT . '/views/front/layouts/partial/header.php';
require  APPROOT . '/views/front/layouts/partial/navbar.php';
require  APPROOT . '/views/front/layouts/partial/sidebar.php';
?>
<div class="content">
    <div class="content-header" style="display: flex; justify-content: space-between; align-items: center;">
        <span>Dashboard</span>
        <div style="display: flex;">
            <span style="font-size: medium; cursor: pointer;" class="mr-10"><i class="fas fa-th"></i></span>
            <span style="font-size: medium; cursor: pointer;"><i class="fas fa-info-circle"></i></span>
        </div>
    </div>
    <div class="container">
        <div style="padding: 10px 20px; border-radius: 20px; background: rgba(36, 41, 46, 0.6); color: #fff;">
            <h4>My Folders</h4>
        </div>
        <?php if (!count($this->data['my_folders'])) : ?>
            <div style="display: flex; justify-content: center; margin: 30px;">
                <div style="display: flex; flex-direction: column; justify-content: center; align-items: center; height:350px; width: 350px; border-radius: 50%; padding: 10px; background: rgba(0, 0, 0, .07); color: rgba(0, 0, 0, .5); cursor: pointer">
                    <div><i class="fas fa-folder-plus fa-8x"></i></div>
                    <h3>No Folder Available</h3>
                    <p class="mt-10" style="font-weight: 600;">To Create Your Folder,</p>
                    <p class="mt-1">Click the "New" Button</p>
                </div>
            </div>
        <?php else : ?>
            <div style="margin: 20px; display: grid; grid-template-columns: auto auto auto auto; grid-gap: 10px">
                <?php foreach ($this->data['my_folders'] as $key => $folder) : ?>
                    <div style="display: flex; justify-content: space-between; align-items: center; border-radius: 10px; padding: 10px; border: 1px solid #24292e; cursor: pointer">
                        <span><i class="fas fa-folder mr-10" style="font-size: 15px;"></i><?php echo $folder->name ?></span>
                        <i class="fa fa-ellipsis-v"></i>
                    </div>
                <?php endforeach ?>
            </div>
        <?php endif ?>
        <div style="padding: 10px 20px; border-radius: 20px; background: rgba(36, 41, 46, 0.6); color: #fff;">
            <h4>My Files</h4>
        </div>
        <div style="margin: 20px; display: grid; grid-template-columns: auto auto auto auto; grid-gap: 10px">
            <?php foreach ($this->data['my_files'] as $key => $file) : ?>
                <div style="display: flex; flex-direction: column; justify-content: center; align-items: center; border-radius: 10px; padding: 10px; border: 1px solid #24292e; cursor: pointer;">
                    <div><i class="far fa-file-alt fa-8x"></i></div>
                    <p class="mt-10" style="background: silver; color: #000; padding: 10px; border-radius: 10px; font-size: small;"><?php echo $file->name ?></p>
                </div>
            <?php endforeach ?>
        </div>
    </div>
</div>
<?php
require  APPROOT . '/views/front/layouts/partial/footer.php';
?>
<script>
    document.querySelector('#sidebar ul li#dashboardMainNav').classList.add('active');
</script>