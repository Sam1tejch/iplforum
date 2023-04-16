<?php
require 'connection/_dbconnect.php';
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <link rel="stylesheet" href="css/answer.css">

    <title>Answer</title>
</head>

<body>

    <?php require 'partials/_header.php'; ?>

    <div>

        
        <div class="container col-md-8 my-5" id="space">
        <h1>Questions for You</h1>
        <hr>

        <?php
        $sql = "SELECT * FROM `threads` ";
        $result = mysqli_query($conn, $sql);
        $noResult = true;
        while ($row = mysqli_fetch_assoc($result)) {
            $noResult = false;
            $thread_user_id = $row['thread_user_id'];
            $sqluser = "SELECT `user_name` FROM `users` WHERE `user_id`=$thread_user_id";
            $resultuser = mysqli_query($conn, $sqluser);
            $user = mysqli_fetch_assoc($resultuser);
            $user_name = $user['user_name'];
            $thread_id = $row['thread_id'];


           

            if ($login and strtolower($_SESSION['users_name']) == strtolower($user_name)){
                echo '<div class="media py-2">
                <div class="media-body">
                    <h3>' . $row['thread_description'] . '</h3>
                    <p class="font-weight-bold my-0"><span> Posted by: </span>     ' . $user_name . '    <span class="badge bg-secondary">' . $row['time'] . '</span></p>

                </div>
               <button style="margin: 0px 5px 0px 0px;" class="btn btn-danger" type="button"> <a href="delete.php ?did1=' . $thread_id . '"class = "text-light">Delete</a></button>
               <button style="margin: 0px 5px 0px 0px;" class="btn btn-success" type="button"> <a href="threads.php?threadid=' . $row['thread_id'] . '"class = "text-light">Answer</a></button>
               
            </div>';

            } else {
                echo '<div class="media py-2">
                <div class="media-body">
                    <h3>' . $row['thread_description'] . '</h3>
                    <p class="font-weight-bold my-0"><span> Posted by: </span>     ' . $user_name . '    <span class="badge bg-secondary">' . $row['time'] . '</span></p>

                </div>
               <button style="margin: 0px 5px 0px 0px;" class="btn btn-success" type="button"> <a href="threads.php?threadid=' . $row['thread_id'] . '"class = "text-light">Answer</a></button>
               
            </div>';
            }

            echo '<br> <hr>';


        }



        if ($noResult) {
            echo '<div class="jumbotron jumbotron-fluid">
                <div class="container">
                  <p class="display-4">No Question Found!</p>
                  <p class="lead">Be the First user to ask the Question.</p>
                </div>
              </div>';
        }
        ?>

    </div>
    </div>




</body>

</html>