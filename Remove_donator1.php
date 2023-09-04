<?php




include('session_a.php');

if(!isset($login_session)){
header('Location: adminlogin.php'); 
}




$cheks = implode("','", $_POST['checkbox']);
$sql = "DELETE FROM donator WHERE username in ('$cheks')";
$result = mysqli_query($conn,$sql) or die(mysqli_error($conn));

header('Location: Remove_donator.php');
$conn->close();


?>