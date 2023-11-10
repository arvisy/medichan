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
            <form method="post" action="update-account-data.php">
                <div class="field-form">
                    <label for="email"></label>
                    <div class="input-with-icon">
                        <img src="../asset/image/email.png" alt="User Icon">
                        <input type="text" id="email" name="email" placeholder="Email" required>
                    </div>
                </div>                
                <div class="field-form">
                    <label for="password"></label>
                    <div class="input-with-icon">
                        <img src="../asset/image/padlock.png" alt="Padlock Icon">
                        <input type="password" name="password" placeholder="Password" required>
                    </div>
                </div>
                <div class="field-form">
                    <label for="newPassword"></label>
                    <div class="input-with-icon">
                        <img src="../asset/image/padlock.png" alt="Padlock Icon">
                        <input type="password" name="newPassword" placeholder="New password" required>
                    </div>
                </div>
                <div class="field-form">
                    <input type="submit" name="update-account" value="Save">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
