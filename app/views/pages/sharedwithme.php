<?php
require  APPROOT . '/views/layouts/partial/header.php';
require  APPROOT . '/views/layouts/partial/navbar.php';
require  APPROOT . '/views/layouts/partial/sidebar.php';
?>
<div class="content">
    Content
</div>
<?php
require  APPROOT . '/views/layouts/partial/footer.php';
?>
<script>
    document.querySelector('#sidebar ul li.active').classList.remove('active');
    document.querySelector('#sidebar ul li#sharedWithMeMainNav').classList.add('active');
</script>