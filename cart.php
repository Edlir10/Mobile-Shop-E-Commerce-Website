<?php
ob_start();
//include header.php file
include ('header.php');
?>

<?php

/*include cart section*/
include ('Template/_cart-template.php');
/*include cart section*/

/*include cart section*/
include ('Template/_wishlist_template.php');
/*include cart section*/

/*include new phones section*/
include ('Template/_new-phones.php');
/*include new phones section*/

?>

<?php
//include footer.php file
include ('footer.php');
?>