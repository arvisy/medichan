<?php
    include("login-data.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="../asset/css/login.css">
    <script src="../js/script.js"></script>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <form method="post" action="../php/login-data.php">
                <div class="field-form">
                    <label for="email"></label>
                    <div class="input-with-icon">
                        <img src="../asset/image/email.png" alt="User Icon">
                        <input type="text" id="email" name="email" placeholder="Email" required>
                    </div>
                </div>                
                <div class="field-form">
                    <label for="username"></label>
                    <div class="input-with-icon">
                        <img src="../asset/image/padlock.png" alt="Padlock Icon">
                        <input type="password" name="password" placeholder="Password" required>
                    </div>
                </div>
                <div class="field-form">
                    <input type="submit" name="login" value="Login">
                </div>
                <div class="field-form">
                    <p>Want to delete account? <a href="delete-account.php">Delete account</a></p>
                </div>
                <div class="field-form">
                    <p>Change password? <a href="update-account.php">Change</a></p>
                </div>
            </form>
        </div>
    </div>
</body>
</html>