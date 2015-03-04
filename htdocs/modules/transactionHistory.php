<?php if (isset($_SESSION['message'])) {displayMessage($_SESSION['message']); } ?>

<div class="module-wrapper borrowed-view">
  <div class="module">
    <h2>Borrowed History</h2>
    <div class='transactions'>
      <?php 
        $borrowedTransactions = getBorrowedTransactions($_SESSION['user_id'], -1);
        foreach ($borrowedTransactions as $key => $value) {
          displayBorrowedTransaction($value);
        }
      ?>
    </div>
  </div>
</div>
<div class="module-wrapper lent-view">
  <div class="module">
    <h2>Lent To</h2>
    <div class="transactions">
      <?php 
        $lentTransactions = getLentTransactions($_SESSION['user_id'], -1);
        foreach ($lentTransactions as $key => $value) {
          displayLentTransaction($value);
        }
      ?>
    </div>
  </div>
</div>