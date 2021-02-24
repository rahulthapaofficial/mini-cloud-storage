<?php
session_start();
if (!$_SESSION['loginData']['is_authenticated'])
    header('Location: auth/login');
require_once 'config/connection.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mini-Cloud Storage</title>
    <link rel="stylesheet" href="public/css/style.css">
</head>

<body>