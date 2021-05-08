<div id="navbar">
    <span class="logo">
        <a href="<?php echo BASEURL ?>">Mini-Cloud Storage</a>
    </span>
    <span class="searchBox">
        <span class="fas fa-search inputIcon"></span>
        <input type="text" name="search" id="search" placeholder="Find your files here...">
        <span class="fas fa-caret-down inputIconRight"></span>
    </span>
    <ul class="menu">
        <li class="mr-5"><i class="fas fa-bell"></i></li>
        <li class="mr-5"><i class="fas fa-plus"></i></li>
        <li>
            <div class="dropdown">
                <span id="profileMenu">
                    <img src="https://ui-avatars.com/api?name=<?php echo $this->data['user_info']['display_name'] ?>" alt="Profile Image"> <i class="fas fa-caret-down mr-2"></i>
                </span>
                <div id="profileMenuDropdown" class="profile-menu-dropdown-content">
                    <a href="<?php echo BASEURL . '/profile' ?>">
                        Signed in as<br />
                        <b><?php echo $this->data['user_info']['username'] ? $this->data['user_info']['username'] : $this->data['user_info']['email'] ?></b>
                    </a>
                    <hr>
                    <a href="<?php echo BASEURL . '/profile' ?>"><i class="fas fa-user-circle"></i> Profile</a>
                    <a href="<?php echo BASEURL . '/profile' ?>"><i class="fas fa-folder"></i> Folders</a>
                    <a href="<?php echo BASEURL . '/profile' ?>"><i class="fas fa-file-alt"></i> Files</a>
                    <hr>
                    <a href="#"><i class="fas fa-cogs"></i> Settings</a>
                    <a href="#"><i class="fas fa-lock"></i> Lock</a>
                    <a href="<?php echo BASEURL . '/auth/logout' ?>"><i class="fas fa-sign-out-alt mr-4"></i> Sign out</a>
                </div>
            </div>
        </li>
    </ul>
</div>