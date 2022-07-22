<?php

/* 

    nameserver, username, password, database

*/

// INFO DB
    $InfoDataBase = array('localhost', 'root', '', 'erp' );



// CREATE CONNECTION
    $conn = new mysqli($InfoDataBase[0], $InfoDataBase[1], $InfoDataBase[2], $InfoDataBase[3]);



// CHECK CONNECTION
    if ($conn->connect_error) {  die("Connection failed: " . $conn->connect_error);}