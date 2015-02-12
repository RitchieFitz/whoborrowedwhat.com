<!DOCTYPE html>
<!-- This is the View in the MVC pattern -->
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <title>Who Borrowed What | Login</title>
  <link rel="stylesheet" type="text/css" href="css/normalize.css" media="screen" >
  <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" >
</head>
<body>
  <header class='main_nav'>
    <a href="index.php" id='logo'>Who Borrowed What?</a>
  </header>
  <div class="center">
    <div class="module-wrapper steps">
      <div class="module">
        <h2 class="center">So Easy!</h2>
        <ol>
          <li>Login</li>
          <li>View Active Transactions</li>
          <li>Make A New Transaction</li>
        </ol>
      </div>
    </div>
    <div class="module-wrapper login">
      <div class='module center'>
        <h2>Login</h2>
        <form action="index.php" method='POST'>
          <div class="horizontal">
            <div class="left">
              <label>Email:</label>
              <input type="email" name="email" placeholder="example@example.com" required>
              <br>
              <label>Password:</label>
              <input type="password" name="password" required >
            </div>
          </div>
          <div class="center login-submit">
            <input type="submit" value="Login">
          </div>
        </form>
      </div>
    </div>
  </div>
  <footer>
    <span>&copy; 2015 WhoBorrowedWhat.com, All Rights Reserved</span>
  </footer>
</body>
</html>