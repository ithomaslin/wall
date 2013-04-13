<?php
define('DB_SERVER', 'mysql-mastermerit.j.layershift.co.uk');
define('DB_USERNAME', 'mmview');
define('DB_PASSWORD', '7AmjYU2FY4THMJz4');
define('DB_DATABASE', 'meritmaster');
$connection = mysql_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD) or die(mysql_error());
$database = mysql_select_db(DB_DATABASE) or die(mysql_error());
mysql_query ("set character_set_results='utf8'");   
$path = "uploads/";
$perpage=10; // Updates perpage
$base_url='http://locahost/wall/';
$gravatar=1; // 0 false 1 true gravatar image
?>
