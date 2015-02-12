<?php 
// Bring in the View of the MVC pattern
if (!isset($_SESSION['loggedin'])) {
//header( 'Location: http://www.yoursite.com/new_page.html' ) 
   header('Location: index.php');
}
?>
<!DOCTYPE html>
<!-- This is the View in the MVC pattern -->
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width">
   <title>Who Borrowed What | Home</title>
   <link rel="stylesheet" type="text/css" href="css/normalize.css" media="screen" >
   <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" >
</head>
<body>
   <?php
   $display = FALSE;
   if ($display) {
      echo "<div class='filter'></div> <div class='popout'></div>"; 
   }
   ?>

   <header class='main_nav'>
      <a href="index.php" id='logo'>Who Borrowed What?</a>
      <!-- <div id='personalized_welcome'><?php personalizedWelcom();?></div> -->
   </header>

   <div class="page-container center">
      <div class="module-wrapper sidebar-container">
         <div class='module'>
            <nav class="sidebar-nav">
               <ul>
                  <li>New Transation</li>
                  <li>Borrowed History</li>
                  <li>Lent History</li>
               </ul>
            </nav>
         </div>
      </div> <!-- end of sidebar-nav module -->
      <div class="content">
         <div class="module-wrapper borrowed-view">
            <div class='module'>
               <h1>Borrowed</h1>
               <?php 
               $borrowedTransactions = getBorrowedTransactions($_SESSION['user_id']);
               foreach ($borrowedTransactions as $key => $value) {
                  echo "<div class='transaction'><div class='trans_left'>";
                  echo "<img class='trans_item_picture' src='" . $value['item_picture'] . "' /><span class='trans_item_name'>". $value['name'] . "</span></div>";
                  echo "<div class='arrow-right'> </div>";
                  echo "<div class='trans_right'> <img class='trans_user_picture' src='" . $value['profile_picture'] . "' /><span class='trans_user_name'>" . $value['name_first'] . " " . $value['name_last'] . "</span></div>";
                  echo "</div>";
               }
               ?>
            </div>
         </div> <!-- end of borrowed module -->
         <div class="module-wrapper lent-view">
            <div class="module">
               <h1>Lent</h1>
               <?php 
               $lentTransactions = getLentTransactions($_SESSION['user_id']);
               foreach ($lentTransactions as $key => $value) {
                  echo "<div class='transaction'><div class='trans_left'>";
                  echo "<img class='trans_item_picture' src='" . $value['item_picture'] . "' /><span class='trans_item_name'>". $value['name'] . "</span></div>";
                  echo "<div class='arrow-right'> </div>";
                  echo "<div class='trans_right'> <img class='trans_user_picture' src='" . $value['profile_picture'] . "' /><span class='trans_user_name'>" . $value['name_first'] . " " . $value['name_last'] . "</span></div>";
                  echo "</div>";
               }
               ?>
            </div> <!-- end of lent view -->
         </div> <!-- end of lent module -->
      </div> <!-- end of content -->
   </div> <!-- end of page container -->

   <footer>
    <span>&copy; 2015 WhoBorrowedWhat.com, All Rights Reserved</span>
 </footer>

</body>
</html>