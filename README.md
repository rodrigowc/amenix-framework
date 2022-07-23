**************************
:smile: What is Amenix FrameWorK 
**************************

Amenix FrameWork is an Application Development - a toolkit - for people
who build web sites using PHP. Its goal is to enable you to develop projects
much faster than you could if you were writing code from scratch, by providing
a rich set of libraries for commonly needed tasks, as well as a simple
interface and logical structure to access these libraries.

> We accept security suggestions.
> We intend to use PHP in its pure form and do not use PDO

**************************
:new: New Features
**************************

<https://github.com/rodrigowc/amenix-framework>`_.

*******************
:computer: Server Requirements
*******************

PHP version 5.6.33 or newer is recommended.

It should work on 5.6.33 as well, but we strongly advise you NOT to run
such old versions of PHP, because of potential security and performance
issues, as well as missing features.


*******
:heart: License
*******

Please see the `license
agreement <https://github.com/rodrigowc/amenix-framework/license.txt>`_.



************
:smiley: Installation
************

**1° Create your database**, 
> with at least the following tables:
**'init'** and **'email_config'** (are available in files database.sql)


**2° Go to /controllers/config/connection.php** and
>configure line 10 with the information pertinent to your database

>'$infoDataBase[]' will receive **4 parameters**, they are:

>Nameserver, Username, Password , Database_name.


**3° Exchange the file 
> **"htaccess.txt"** to **".htacess"**, 

