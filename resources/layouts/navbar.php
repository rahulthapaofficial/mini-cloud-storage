<?php
$display_name = $_SESSION['loginData']['userInfo']['display_name'];
?>
<div id="navbar">
    <span class="logo">
        Mini-Cloud Storage
    </span>
    <ul class="menu">
        <li>Notifications</li>
        <li>Add</li>
        <li><?php echo $display_name; ?></li>
    </ul>
</div>