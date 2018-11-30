<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Đăng nhập</title>
<link rel="icon" href="assets/img/logo.png" type="image/gif" sizes="16x16">
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap/bootstrap.min.css">
<script type="text/javascript"
	src="assets/bootstrap/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript" src="assets/bootstrap/popper.min.js"></script>
<script type="text/javascript" src="assets/bootstrap/bootstrap.min.js"></script>
<style type="text/css">
html, body {
	height: 100%;
}

.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
}

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-control {
	position: relative;
	box-sizing: border-box;
	height: auto;
	padding: 10px;
	font-size: 16px;
}

.form-signin .form-control:focus {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>

</head>
<body class="text-center">
	<div class="container">
		<form class="form-signin">
			<img class="mb-4" src="assets/img/logoimg.jpg" alt="" width="200"
				height="120">
			<h2 class="h3 mb-3 font-weight-normal"><strong>ĐĂNG NHẬP</strong></h2>
			<label for="inputEmail" class="sr-only">Tên đăng nhập</label> <input
				type="text" id="inputEmail" class="form-control"
				placeholder="Tên đăng nhập" required autofocus> <label
				for="inputPassword" class="sr-only">Mật khẩu</label> <input
				type="password" id="inputPassword" class="form-control"
				placeholder="Mật khẩu" required>
			<div class="checkbox mb-3">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Đăng nhập</button>
			<div class="form-group">
				<div class="col-md-12 control">
					<div
						style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%; margin-top: 10px;">
						<a href="">Quên mật khẩu?</a>
					</div>
				</div>
			</div>
			<p class="mt-5 mb-3 text-muted">&copy; 2018-2019</p>
		</form>
	</div>
</body>
</html>