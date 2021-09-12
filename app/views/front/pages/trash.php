<?php
require  APPROOT . '/views/front/layouts/partial/header.php';
require  APPROOT . '/views/front/layouts/partial/navbar.php';
require  APPROOT . '/views/front/layouts/partial/sidebar.php';
?>
<div class="content">
    <div class="content-header">
        Trash
    </div>
    <div class="container">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>
<?php
require  APPROOT . '/views/front/layouts/partial/footer.php';
?>
<script>
    document.querySelector('#sidebar ul li#trashMainNav').classList.add('active');
</script>