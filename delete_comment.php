<?php
require 'connection/_dbconnect.php';
?>

<!doctype html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <!--  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <link rel="stylesheet" href="css/style.css">

    <title>Home</title>
</head>

<body>

<?php require 'partials/_header.php'; ?>
<?php
if (isset($_GET['did1'])) {
    $id = $_GET['did'];
    $threadid = $_GET['did1'];
    $query = "DELETE FROM comments WHERE comments.comment_id = $id";

    $res = mysqli_query($conn, $query);

    if ($res) {
        // // header("Location: threadlist.php?catid= ".$catid." ' </a>");

        // header("location: threadlist.php?catid= '.$catid.'"); 

        // // header("location = the")
          echo "<span style='margin: 100px 5px 0px 50px;'> Comment deleted Successfully <br><br> </span>";
          echo '<button  style="margin: 10px 5px 0px 50px;" class="btn btn-danger" type="button"><a href="threads.php?threadid='.$threadid.'" class="text-light">GO back </button>';
        //  echo '<button type="button" class="btn btn-success"> <a href="threadlist.php?catid='.$catid.'"> Success</button>';
    } else {
        die(mysqli_error($conn));
    }
}
else
echo "error";
?>
</body>