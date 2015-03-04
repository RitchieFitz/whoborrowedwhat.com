<div class="module-wrapper new-transaction">
	<div class="module">
		<h2>New Transaction</h2>
		<form action='home.php' method='POST' class='newTransaction' enctype='multipart/form-data' autocomplete="off">
			<?php if (isset($_SESSION["message"])) {displayMessage($message);} ?>
			<div class="horizontal">
				<div class="left">
					<label for='lendTo'>Lend to:</label>

					<?php 
					$users = getUsers();
					echo '<select name="lendTo">';
					foreach ($users as $key => $user) {
   				// Don't display users own name as an option.
						if ($user['user_id'] != $_SESSION['user_id']) {
							echo "<option name='user_id' value='$user[user_id]'>$user[name_first] $user[name_last]</option>";
						}
					}
					echo "</select>";
					?>
					<br>
					<label for='item_name'>Item Name:</label>
					<input type='text' required name='item_name' id='item_name'>
					<br>
					<label for='tags'>Item Tag:</label>
					<input type='text' required name='tags' id='tags'>
					<br>
					<label for='description'>Item Description:</label>
					<textarea required name='description' id='description'></textarea>
					<br>
					<label for='return_date'>Return Date</label>
					<input type='date' name='return_date' placeholder='YYYY-MM-DD'>
					<br>
					<label for='fileToUpload'>Item Image:</label>
					<input type="file" required name='fileToUpload' id="fileToUpload">
					<br>
				</div>
			</div>
			<div class="center login-submit">
				<input type="submit" value="Finished"  name='upload'>
			</div>
		</form>
	</div>
</div>