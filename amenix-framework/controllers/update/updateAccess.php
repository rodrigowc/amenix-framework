<?php

function newAccessCategorie($conn, $linkA){
    $sql_updateAccess = mysqli_query($conn, "SELECT * FROM `categorie` WHERE md5(`name`) = '$linkA' LIMIT 1");

    $sql_rows = mysqli_num_rows($sql_updateAccess);

    if ($sql_rows >= 1) {
        
        while ($a = mysqli_fetch_assoc($sql_updateAccess)) {
            $name_db    = $a['name'];
            $access_db  = $a['access'];
        }
        
        $new_access = $access_db + 1;
        $sql_updateAccess2 = "UPDATE `categorie` SET `access` = '$new_access' WHERE `name` = '$name_db'";

        if ($conn->query($sql_updateAccess2) === TRUE) {
            echo 'Novo acesso registrado com sucesso';
        }else {
            echo 'Erro inesperdao. Tente novamente!';
        }
    }else{
        echo 'Link Inspirado ou pagina removida. Tente novamente!';
    }
}

function newAccessAnnouncement($conn, $linkP, $id_user){
    $sql_updateAccessAnnouncement = mysqli_query($conn, "SELECT * FROM `jobs` WHERE md5(`id-job`) = '$linkP' LIMIT 1 ");
    
    $sql_rows = mysqli_num_rows($sql_updateAccessAnnouncement);

    if ($sql_rows >= 1) {
        while ($b = mysqli_fetch_assoc($sql_updateAccessAnnouncement) ) {
            $id_person_db     = $b['id'];
            $id_db            = $b['id-job'];
            $access_db        = $b['access'];
        }

        $new_access = $access_db + 1;
        if($new_access == '25' or $new_access == '50' or $new_access == '200' or $new_access == '500' or $new_access == '1000' or $new_access == '5000' or $new_access == '10000' or $new_access == '50000' or $new_access == '100000' or $new_access == '500000' or $new_access == '1000000'){
            $msg = 'Parabéns, seu job chegou a '.$new_access.' views';
            $sql_new_notification_accessannouncement = mysqli_query($conn, "INSERT INTO `notifications` VALUES ('DEFAULT', '$id_person_db', '$msg', '0', 'announcement', NULL, NOW(), '1' ) "); 
        }
        
        if($id_person_db == $id_user){
            $sql_updateAccessAnnouncement2 = "UPDATE `jobs` SET `access` = '$new_access' WHERE `id-job` = 'x'";
        }else{
            $sql_updateAccessAnnouncement2 = "UPDATE `jobs` SET `access` = '$new_access' WHERE `id-job` = '$id_db'";
        }

        if ($conn->query($sql_updateAccessAnnouncement2) === TRUE) {
            echo 'Novo acesso registrado com sucesso';
        }else {
            echo 'Erro inesperdao. Tente novamente!';
        }
    }else{
        echo 'Link Inspirado ou pagina removida. Tente novamente!';
    }
}

function newAccessCurriculum($conn, $linkC, $id_user){
    $sql_updateAccessCurriculum = mysqli_query($conn, "SELECT * FROM `curriculum` WHERE md5(`id-curriculum`) = '$linkC' LIMIT 1 ");
    
    $sql_rows = mysqli_num_rows($sql_updateAccessCurriculum);

    if ($sql_rows >= 1) {
        while ($b = mysqli_fetch_assoc($sql_updateAccessCurriculum) ) {
            $id_person_db     = $b['id'];
            $id_db    = $b['id-curriculum'];
            $access_db  = $b['access'];
        }

        $new_access = $access_db + 1;
        if($new_access == '25' or $new_access == '50' or $new_access == '200' or $new_access == '500' or $new_access == '1000' or $new_access == '5000' or $new_access == '10000' or $new_access == '50000' or $new_access == '100000' or $new_access == '500000' or $new_access == '1000000'){
            $msg = 'Parabéns, seu curriculo chegou em '.$new_access.' views';
            $sql_new_notification_Curriculum = mysqli_query($conn, "INSERT INTO `notifications` VALUES ('DEFAULT', '$id_person_db', '$msg', '0', 'account-p', NULL, NOW(), '1' ) "); 
        }
        
        if($id_person_db == $id_user){
            $sql_updateAccessCurriculum2 = "UPDATE `curriculum` SET `access` = '$new_access' WHERE `id-curriculum` = 'xxxxx'";
        }else{
            $sql_updateAccessCurriculum2 = "UPDATE `curriculum` SET `access` = '$new_access' WHERE `id-curriculum` = '$id_db'";
        }

        if ($conn->query($sql_updateAccessCurriculum2) === TRUE) {
            echo 'Novo acesso registrado com sucesso (perfil)';
        }else {
            echo 'Erro inesperdao. Tente novamente!';
        }
    }else{
        echo 'Link Inspirado ou pagina removida. Tente novamente!';
    }
}

