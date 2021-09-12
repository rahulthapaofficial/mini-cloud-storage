<?php

require  APPROOT . '/views/front/layouts/partial/header.php';
require  APPROOT . '/views/front/layouts/partial/navbar.php';
require  APPROOT . '/views/front/layouts/partial/sidebar.php';
$username = $this->data['user_info']['username'];
?>
<div class="content">
    <div class="content-header">
        My Storage
    </div>
    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Created At</th>
                    <th>Last Modified</th>
                    <th>File Size</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($data['files'] as $key => $file) : ?>
                    <tr>
                        <td><?php echo $file->name ?></td>
                        <td><?php echo $file->created_time ?></td>
                        <td><?php echo $file->modified_time ?></td>
                        <td><?php echo $file->size ?></td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
</div>
<?php
require  APPROOT . '/views/front/layouts/partial/footer.php';
?>
<script>
    document.querySelector('#sidebar ul li#filesMainNav').classList.add('active');
</script>