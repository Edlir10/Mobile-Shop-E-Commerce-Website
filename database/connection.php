<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "shop";

if(!$con = mysqli_connect($dbhost,$dbuser,$dbpass,$dbname))
{

	die("failed to connect!");
}
