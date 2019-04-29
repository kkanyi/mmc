<?php 
$attributes = array('class' => 'md-float-material', 'id' => 'login_form');
echo form_open(base_url('secure/login'), $attributes);
?>
<!-- <form class="md-float-material"> -->
	<div class="text-center">
		<img src="<?php echo base_url('assets/'); ?>images/logo-black.html">
	</div>
	<h3 class="text-center txt-primary">
		Sign In to your account
	</h3>
		<?php echo $messages; ?>
	<div class="md-input-wrapper">

		<input type="email" class="md-form-control" name="email" id="email"/>
		<label>Email</label>
		<?php echo form_error('email'); ?>
	</div>
	<div class="md-input-wrapper">
		<input type="password" class="md-form-control" name="password" id="password" />
		<label>Password</label>
		<?php echo form_error('password'); ?>
	</div>
	<div class="row">
		<div class="col-sm-6 col-xs-12">
		<div class="rkmd-checkbox checkbox-rotate checkbox-ripple m-b-25">
			<label class="input-checkbox checkbox-primary">
				<input type="checkbox" id="checkbox" id="remember" name="remember" >
				<span class="checkbox"></span>
			</label>
			<div class="captions">Remember Me</div>

		</div>
			</div>
		<div class="col-sm-6 col-xs-12 forgot-phone text-right">
			<a href="forgot-password.html" class="text-right f-w-600"> Forget Password?</a>
			</div>
	</div>
	<div class="row">
		<div class="col-xs-10 offset-xs-1">
			<button type="submit" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">LOGIN</button>
		</div>
	</div>
	<!-- <div class="card-footer"> -->
	<div class="col-sm-12 col-xs-12 text-center">
		<span class="text-muted">Don't have an account?</span>
		<a href="register2.html" class="f-w-600 p-l-5">Sign up Now</a>
	</div>

	<!-- </div> -->
</form>
<!-- end of form -->