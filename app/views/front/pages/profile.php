<?php
require  APPROOT . '/views/layouts/partial/header.php';
require  APPROOT . '/views/layouts/partial/navbar.php';
require  APPROOT . '/views/layouts/partial/sidebar.php';
?>

<div class="content">
    <div class="content-header">
        My Profile
    </div>
    <div class="container">
        <table>
            <tbody>
                <tr>
                    <td>Name</td>
                    <td><?php echo $this->data['user_info']['display_name'] ?></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><?php echo $this->data['user_info']['email'] ?></td>
                </tr>
                <td>Username</td>
                <td><?php echo $this->data['user_info']['username'] ?></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<?php
require  APPROOT . '/views/layouts/partial/footer.php';
