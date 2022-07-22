<?php if (!isset($_SESSION)) { session_start(); } @$error = addslashes($_SESSION['error']);?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
    <body>
        <?php 
            switch(@$error) {
                case '':
                    echo '<h1>Unknown</h1><p>unexpected error</p>';
                    unset($_SESSION['error']);
                break;

                case '403':
                    echo "<h1>Forbidden</h1><p>You don't have permission to access this resource.</p>";
                    unset($_SESSION['error']);
                break;

                case '404':
                    echo "<h1>Not Found</h1><p>The requested URL was not found on this server.</p>";
                    unset($_SESSION['error']);
                break;

                case '500':
                    echo "<h1>Internal server error</h1>";
                    unset($_SESSION['error']);
                break;

                case '503':
                    echo "<h1>Unavailable service</h1>";
                    unset($_SESSION['error']);
                break;

                case '504':
                    echo "<h1>Gateway Timeout</h1>";
                    unset($_SESSION['error']);
                break;
                
                default:
                    echo '<h1>Unknown</h1><p>unexpected error</p>';
                    unset($_SESSION['error']);
                break;
            } 
        ?>
        <hr>
        <address><?php echo $_SERVER['SERVER_SOFTWARE']. ' Server at '. $_SERVER['SERVER_NAME']; ?></address>

        <?php header("Refresh: 3; url= ./");?>
    </body>
</html>