<?php
session_start();

function isLoggedIn()
{
    if (isset($_SESSION['user_id'])) return true;
    return false;
}

function isVerified()
{
    if ($_SESSION['is_verified'] == 1) return true;
    return false;
}
