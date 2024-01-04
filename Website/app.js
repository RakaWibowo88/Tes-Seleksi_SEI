// Define API endpoints
const loginEndpoint = 'http://localhost/endpoint/postlogin.php';
const getUserEndpoint = 'http://localhost/endpoint/getuser.php';
const addUserEndpoint = 'http://localhost/endpoint/postuser.php';

// Function to handle login
function login() {
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;

    // Perform AJAX request to the login API
    fetch(loginEndpoint, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ username, password }),
    })
    .then(response => response.json())
    .then(data => {
        if (data.error) {
            console.error('Login failed:', data.error);
        } else {
            // Redirect to the list user page after successful login
            window.location.href = 'user-List.html';
        }
    })
    .catch(error => console.error('Error:', error));
}

// Function to get and display the list of users
function getUsers() {
    // Perform AJAX request to the get user API
    fetch(getUserEndpoint)
    .then(response => response.json())
    .then(users => {
        const userList = document.getElementById('userList');
        userList.innerHTML = '';

        // Display the list of users
        users.forEach(user => {
            const listItem = document.createElement('li');
            listItem.textContent = `ID: ${user.user_id}, Username: ${user.username}, Name: ${user.name}, Email: ${user.email}`;
            userList.appendChild(listItem);
            
        });
    })
    .catch(error => console.error('Error:', error));
}

// Function to handle adding a new user
function addUser() {
    const newUsername = document.getElementById('newUsername').value;
    const newPassword = document.getElementById('newPassword').value;
    const newName = document.getElementById('newName').value;
    const newEmail = document.getElementById('newEmail').value;

    // Perform AJAX request to the add user API
    fetch(addUserEndpoint, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ username: newUsername, password: newPassword, name: newName, email: newEmail }),
    })
    .then(response => response.json())
    .then(data => {
        console.log(data); // Handle the response accordingly
        // Refresh the user list after adding a new user
        getUsers();
    })
    .catch(error => console.error('Error:', error));
}

// Initial load of user list
getUsers();
