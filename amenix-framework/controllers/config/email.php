<?php if (!isset($_SESSION)) { session_start();}


/* 

EMAIL SETTINGS - PHPMailer 

MORE: https://github.com/PHPMailer/PHPMailer

*/ 

$sql_mail = mysqli_query($conn, "SELECT * FROM `email-config` WHERE id = 'website' ");

while ($email = mysqli_fetch_assoc($sql)) {
    $config_host       = $email['host'];
    $config_smtpauth   = $email['smtpauth'];
    $config_username   = $email['username'];
    $config_password   = $email['password'];
    $config_port       = $email['port'];
    $config_email      = $email['email'];
    $config_name       = $email['name'];
}