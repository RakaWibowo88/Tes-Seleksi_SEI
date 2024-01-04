<?php

require_once('connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $query = mysqli_query($connection, "SELECT * FROM akun");

    $users = array();
    while ($row = mysqli_fetch_assoc($query)) {
        $users[] = array(
            'user_id' => $row['user_id'],
            'username' => $row['username'],
            'name' => $row['name'],
            'email' => $row['email']
        );
    }

    echo json_encode($users);
}

?>
