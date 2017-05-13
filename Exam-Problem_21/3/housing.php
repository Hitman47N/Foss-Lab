<?php
session_start();
if(isset($_POST['housingcost']))
{	
	$username=$_POST['name'];
	$cost=$_POST['housingcost'];
	$allowance=0;
	echo $cost;
	if($cost<250)
	{
		$allowance=0;
	}
	if($cost >=250 && cost<=2500)
	{
		$allowance=$cost*0.8; 
	}
	 if($cost>2000)
        {
                $allowance=2000;
        }

	echo $allowance;
}
?>
<html>
<title>
Housing Data
</title>
<head>
<h1>Housing Data App</h1>
</head>
<body>
<form name="myform" method="POST">
<label>Username</label>
<input type="text" name="name">
<br>
<label> Reasonable Housing Cost: </label>
<input type="number" name="housingcost">
<br>
<button type="submit">Get housing Allowance</button>
<?php if(isset($allowance)) echo $allowance; ?>
</form>
</body>
<html>
