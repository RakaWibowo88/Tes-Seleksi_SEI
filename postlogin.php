<?php

require_once('connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);

    if (isset($input['username']) && isset($input['password'])) {
        $username = mysqli_real_escape_string($connection, $input['username']);
        $password = mysqli_real_escape_string($connection, $input['password']);

        $query = mysqli_query($connection, "SELECT * FROM akun WHERE username = '$username' AND password = '$password'");

        if ($row = mysqli_fetch_assoc($query)) {
            $response = array(
                'username' => $row['username'],
                'name' => $row['name'],
                'email' => $row['email']
            );

            echo json_encode($response);
        } else {
            // Login failed
            echo json_encode(array('error' => 'Invalid username or password'));
        }
    } else {
        // Invalid request
        echo json_encode(array('error' => 'Invalid request'));
    }
}

?>
