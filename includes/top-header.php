<?php 
//session_start();

?>

<div class="top-bar animate-dropdown" style="background-color:black">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled" >

<?php if(strlen($_SESSION['login']))
    {   ?>
				<li ><a href="#" style="color:white"><i class="icon fa fa-user"></i>Welcome -<?php echo htmlentities($_SESSION['username']);?></a></li>
				<?php } ?>

					<li><a href="my-account.php" style="color:white"><i class="icon fa fa-user"></i>My Account</a></li>
					<!-- <li><a href="my-wishlist.php"><i class="icon fa fa-heart"></i>Wishlist</a></li> -->
					<li><a href="my-cart.php" style="color:white"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
					<?php if(strlen($_SESSION['login'])==0)
    {   ?>
<li><a href="login.php" style="color:white"><i class="icon fa fa-sign-in"></i>Login</a></li>
<?php }
else{ ?>
	
				<li><a href="logout.php" style="color:white"><i class="icon fa fa-sign-out"></i>Logout</a></li>
				<?php } ?>	
				</ul>
			</div><!-- /.cnt-account -->

<div class="cnt-block">
				<ul class="list-unstyled list-inline">
					<li class="dropdown dropdown-small">
						<!-- <a href="track-orders.php" class="btn btn-primary" ><span class="key" style="color:white">Track Order</b></a> -->
						
					</li>

				
				</ul>
			</div>
			
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div>