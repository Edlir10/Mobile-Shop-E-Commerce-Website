<?php 
session_start();

	include("database/connection.php");
	include("database/loginDB.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$user_name = $_POST['user_name'];
		$password = $_POST['password'];
		$email = $_POST['email'];
		$phone = $_POST['phone'];

		if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
		{

			//save to database
			$user_id = random_num(8);
			$query = "insert into user (user_id,user_name,email,phone,password) values ('$user_id','$user_name','$email','$phone','$password')";

			mysqli_query($con, $query);

			header("Location: login.php");
			die;
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>


<!DOCTYPE html>
<html>
<head>
	<title>Signup</title>
</head>
<body>

	<style type="text/css">
	
	#text{

		height: 25px;
		border-radius: 5px;
		padding: 4px;
		border: solid thin #aaa;
		width: 100%;
	}

	#button{

		padding: 10px;
		width: 100px;
		color: white;
		background-color: blue;
		border: none;
	}

	#box{

		background-color: white;
		margin: auto;
		width: 300px;
		padding: 20px;
	}

	</style>

	<div id="box">
		
		<form method="post">
			<div style="font-size: 20px;margin: 10px;color: dark;">Signup</div>

			<input id="text" type="text" name="user_name" placeholder="User Name"><br><br>
			<input id="text" type="email" name="email" placeholder="Email"><br><br>
			<input id="text" type="text" name="phone" placeholder="Phone Number"><br><br>
			<input id="text" type="password" name="password" placeholder="Password"><br><br>
			<input id="text" type="password" name="password" placeholder="Retype Password"><br><br>

			<input id="button" type="submit" value="Signup"><br><br>

			<a href="login.php">Click to Login</a><br><br>
		</form>
	</div>
</body>
</html>