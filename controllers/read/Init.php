<?php
if (!isset($_SESSION)) {
    session_start();
}

$config_sql = mysqli_query($conn, "SELECT * FROM `init`");

while ($res_config = mysqli_fetch_assoc($config_sql) ) {
    $name_project_init       = $res_config['project-name'];
    $email_init              = $res_config['email'];
    $url_base_init           = $res_config['url_base'];
    $tel1_init               = $res_config['tel1'];
    $tel2_init               = $res_config['tel2'];
    $tel3_init               = $res_config['tel3'];
    $tel4_init               = $res_config['tel4'];
    $street_init             = $res_config['street'];
    $zip_init                = $res_config['zip'];
    $city_init               = $res_config['city'];
    $state_init              = $res_config['state'];
    $number_init             = $res_config['number'];
    $cnpj_init               = $res_config['cnpj'];
}
