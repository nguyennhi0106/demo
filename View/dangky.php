<div class="content">

	<div class="content-agile2">

		<div class="row"></div>

		<div class="row">

			<div class="content-agile1">

				<h1 class="agileits1">Tạo tài khoản của riêng bạn.</h1>

				<p class="agileits2">Tạo tài khoản và hưởng lợi từ trải nghiệm mua sắm cá nhân hơn và thanh toán trực tuyến nhanh hơn.</p>

			</div>

			<form action="index.php?action=dangky&act=dangky_action" method="post">
				<div class="form-control w3layouts"> 
					<input type="text" id="firstname" name="txtName" placeholder="First Name" title="Please enter a valid first name" required="">
				</div>

				<div class="form-control w3layouts">	
					<input type="text" id="user" name="txtUserName" placeholder="User Name" title="Please enter a valid user name" required="">
				</div>

				<div class="form-control agileinfo">	
					<input type="password" class="lock" name="txtPassword" placeholder="Password" id="password1" required="">
				</div>

				<div class="form-control agileinfo">	
					<input type="password" class="lock" name="txtConfirmPassword" placeholder="Confirm Password" id="password2" required="">
				</div>	
				
				<div class="form-control w3layouts">	
					<input type="email" id="email" name="txtEmail" placeholder="mail@example.com" title="Please enter a valid email" required="">
				</div>
				
				<div class="form-control w3layouts">	
					<input type="text" id="phone" name="txtPhone" placeholder="(+84) 123456789 " title="Please enter a valid phone number" required="">
				</div>		
				
				<div class="form-control w3layouts">	
					<input type="text" id="address" name="txtAddress" placeholder="Hồ Chí Minh" title="Please enter a valid address" required="">
				</div>		

				<p>Bằng cách cung cấp thông tin của mình, tôi đồng ý với chúng tôi về Chính sách bảo mật và Điều khoản sử dụng.</p>

				<button><span>Tạo Tài Khoản</span></button>

			</form>

		</div>

		<div class="row"></div>

		<script type="text/javascript">
			window.onload = function () {
				document.getElementById("password1").onchange = validatePassword;
				document.getElementById("password2").onchange = validatePassword;
			}
			function validatePassword(){
				var pass2=document.getElementById("password2").value;
				var pass1=document.getElementById("password1").value;
				if(pass1!=pass2)
					document.getElementById("password2").setCustomValidity("Passwords Don't Match");
				else
					document.getElementById("password2").setCustomValidity('');
			}
		</script>
	</div>
</div>