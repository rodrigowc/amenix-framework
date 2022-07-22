<?php

include_once('../config/connection.php');

if (isset($_POST['bt-read'])) {

    $id_notification            = mysqli_real_escape_string($conn, $_POST['id-notification']);

    $sql_read_notification      = "UPDATE `notifications` SET `read` = '1', `read-at` = NOW() WHERE `id-notifications` = '$id_notification'";
    
    if ($conn->query($sql_read_notification) === TRUE) {
        echo 'Lido com sucesso';
        header('Location: ../../notifications');
    }else{
        echo 'Tente novamente!';
        header('Location: ../../notifications');
    }
}

if (isset($_POST['bt-delete'])) {

    $id_notification              = mysqli_real_escape_string($conn, $_POST['id-notification']);

    $sql_delete_notification      = "UPDATE `notifications` SET `authorization` = '0' WHERE `id-notifications` = '$id_notification'";
    
    if ($conn->query($sql_delete_notification) === TRUE) {
        echo 'Excluído com sucesso';
        header('Location: ../../notifications');
    }else{
        echo 'Tente novamente!';
        header('Location: ../../notifications');
    }
}

if (isset($_POST['bt-link'])) {

    $id_notification            = mysqli_real_escape_string($conn, $_POST['id-notification']);
    $bt_link                    = mysqli_real_escape_string($conn, $_POST['bt-link']);

    $sql_read_notification      = "UPDATE `notifications` SET `read` = '1', `read-at` = NOW() WHERE `id-notifications` = '$id_notification'";
    
    if ($conn->query($sql_read_notification) === TRUE) {
        echo 'Lido com sucesso';
        header('Location: ../../'.$bt_link.'');
    }else{
        echo 'Tente novamente!';
        header('Location: ../../'.$bt_link.'');
    }
}