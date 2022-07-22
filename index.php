<?php


/*
  
  INCLUDE ON ALL PAGES
  

*/  
  // START SESSION
    if (!isset($_SESSION)) {session_start();}

  // CONNECTION INCLUDE
    @include_once('./controllers/config/connection.php');



/*
  
  LINK PAGE 
  

*/  @$page = addslashes($_GET['page']);




/*

   
    // IF YOU NEED A SYSTEM WITH LOGIN, YOU WILL NEED
    // UNCOMMENT THIS SECTION (LINE 25 AND 85), AND DELETE THE SWITCH ON LINE 90.

    // EXCHANGE $_SESSION['user'] TO $_SESSION['SUAESCOLHA'] (LINE 39)





if (isset($_SESSION['user']) != '') {

  switch($page){

    // CALL USER PAGES IF USER IS CONNECTED
      case 'home':
        include_once('./views/pages/app/home.php');
      break;

      default:
        // PAGE TO ACTIVATE IF NO PAGE CALL
        include_once('./views/pages/app/home.php');
      break;




    // WAIT, DON'T TRY MODIFY THIS ( PAGES CONFIG ) 

      case 'error':
        include_once('./views/errors/index.php');
      break;
  }

}else{
  switch($page){
    
    // CALL VISITORS PAGES IF YOU DO NOT HAVE A LOG IN USER

      case 'term':
        include_once('./views/pages/app/term.php');
      break;

      default:
        include_once('./views/pages/app/home.php');
      break;

    

    // WAIT, DON'T TRY MODIFY THIS ( PAGES CONFIG ) 

      case 'error':
        include_once('./views/errors/index.php');
      break;
  
  }
}

*/




switch($page){
  
  // CALL VISITORS PAGES IF YOU DO NOT HAVE A LOG IN USER

    case 'home':
      include_once('./views/pages/app/home.php');
    break;

    default:
      include_once('./views/pages/app/home.php');
    break;

  

  // WAIT, DON'T TRY MODIFY THIS ( PAGES CONFIG ) 

    case 'error':
      include_once('./views/errors/index.php');
    break;

}