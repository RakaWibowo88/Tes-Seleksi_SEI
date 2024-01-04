<?php

require_once('connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);

    if (
        isset($input['username']) &&
        isset($input['password']) &&
        isset($input['name']) &&
        isset($input['email'])
    ) {
        $username = mysqli_real_escape_string($connection, $input['username']);
        $password = mysqli_real_escape_string($connection, $input['password']);
        $name = mysqli_real_escape_string($connection, $input['name']);
        $email = mysqli_real_escape_string($connection, $input['email']);

        $query = mysqli_query($connection, "INSERT INTO akun (username, password, name, email) VALUES ('$username', '$password', '$name', '$email')");

        if ($query) {
            $userId = mysqli_insert_id($connection);

            $response = array('user_id' => $userId);
            echo json_encode($response);
        } else {
            // Insertion failed
            echo json_encode(array('error' => 'Failed to create user'));
        }
    } else {
        // Invalid request
        echo json_encode(array('error' => 'Invalid request'));
    }
}

?>
