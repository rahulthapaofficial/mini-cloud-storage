<?php

require  APPROOT . '/views/front/layouts/partial/header.php';
require  APPROOT . '/views/front/layouts/partial/navbar.php';
require  APPROOT . '/views/front/layouts/partial/sidebar.php';
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
                    <th>Owner</th>
                    <th>Created At</th>
                    <th>Last Modified</th>
                    <th>File Size</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($data['folders'] as $key => $folder) : ?>
                    <tr>
                        <td><?php echo $folder->name ?></td>
                        <td><?php echo $folder->owner ?></td>
                        <td><?php echo $folder->created_time ?></td>
                        <td><?php echo $folder->modified_time ?></td>
                        <td><?php echo $folder->size ?></td>
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
    document.querySelector('#sidebar ul li#myFilesMainNav').classList.add('active');
</script>