<?php
require  APPROOT . '/views/front/layouts/partial/header.php';
require  APPROOT . '/views/front/layouts/partial/navbar.php';
require  APPROOT . '/views/front/layouts/partial/sidebar.php';
?>
<div class="content">
    <div class="content-header">
        Shared With Me
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
                <?php for ($i = 1; $i < 2; $i++) : ?>
                    <tr>
                        <td>CCNA Course <?php echo $i ?></td>
                        <td>Ganesh Gaha</td>
                        <td>Dec <?php echo $i ?>, 2020</td>
                        <td>Dec <?php echo $i ?>, 2020</td>
                        <td><?php echo $i ?> MB</td>
                    </tr>
                <?php endfor ?>
            </tbody>
        </table>
    </div>
</div>
<?php
require  APPROOT . '/views/front/layouts/partial/footer.php';
?>
<script>
    document.querySelector('#sidebar ul li#sharedWithMeMainNav').classList.add('active');
</script>