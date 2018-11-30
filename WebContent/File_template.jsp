<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Quản Lý Đợt Hiến Máu</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="assets/css/style3.css">
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

<!-- Font Awesome JS -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
	integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
	crossorigin="anonymous"></script>
	
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
<style type="text/css">
body {
	background-color: #E8EAED;
	font-family: 'Fira Sans', sans-serif;
}

.sapxep_dhm {
	width: 333px;
}

.sapxep_dhm div button {
	margin-left: 9px;
	width: 112px;
}

.sapxep_dhm1 {
	margin-top: 10px;
}

.ds_dhm {
	margin-top: 10px
}

.phanhienthi{
	max-width: 1200px;
	margin: 0px auto;
	font-family: 'Fira Sans', sans-serif;
}
/* phần style popup thêm đợt hiến máu */
/* Full-width input fields */
input[type=text], input[type=password], input[type=number], input[type=date]
	{
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
.button_popup {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.button_popup:hover {
	opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal1 {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 55%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}
}
</style>
</head>

<body>

	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar">
			<div id="dismiss">
				<i class="fas fa-arrow-left"></i>
			</div>

			<div class="sidebar-header">
				<br>
				<h4 style="text-align: center; margin-top: 5px;">QUẢN LÝ HIẾN MÁU NHÂN ĐẠO</h4>
			</div>

			<ul class="list-unstyled components">
				<li class="active"><a href="#homeSubmenu"
					data-toggle="collapse" aria-expanded="false"
					class="dropdown-toggle">Tài khoản</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#">Đổi mật khẩu</a></li>
						<li><a href="#">Đăng xuất</a></li>
					</ul></li>
				<li><a href="#">Quản lý nhân viên</a></li>
				<li><a href="#">Quản lý máu</a></li>
				<li><a href="#">Quản lý người hiến máu</a></li>
				<li><a href="#">Quản lý đợt hiến máu</a></li>
				<li><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">Báo cáo và thống
						kê</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="#">Báo cáo tình trạng máu</a></li>
						<li><a href="#">Báo cáo từng đợt hiến máu</a></li>
						<li><a href="#">Thống kê số lượng máu</a></li>
					</ul></li>
			</ul>

			<ul class="list-unstyled CTAs">
				<li><a class="article">L11 - DH Khoa Học Huế</a></li>
			</ul>
		</nav>

		<!-- Page Content  -->
		<div id="content">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fas fa-align-left"></i> <span>QUẢN LÝ HIẾN MÁU
							NHÂN ĐẠO THÀNH PHỐ HUẾ</span>
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-align-justify"></i>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="#">Xin
									chào, Admin</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<div class="container-fuild phanhienthi">
				<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
					<strong>QUẢN LÝ ĐỢT HIẾN MÁU</strong>
				</h3>
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-6">
						<form class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Tìm kiếm" aria-label="Search">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">
								<i class="fas fa-search"></i> Tìm kiếm
							</button>
						</form>
					</div>
					<div class="col-sm-4">
						<button type="button" style="margin-right: 4px"
							class="btn btn-outline-primary"
							onclick="document.getElementById('id01').style.display='block'">
							<i class="fas fa-plus-circle"></i> Thêm đợt
						</button>
					</div>
				</div>
				<div class="row sapxep_dhm1">
					<div class="col-sm-2"></div>
					<div class="col-sm-7">
						<form method="get" action="">
							<div class="input-group sapxep_dhm">
								<select class="custom-select">
									<option selected>Sắp xếp theo</option>
									<option value="1">Số lượng người</option>
									<option value="2">Số lượng máu</option>
									<option value="3">Ngày bắt đầu</option>
									<option value="4">Ngày kết thúc</option>
									<option value="5">Địa điểm</option>
								</select>
								<div>
									<button class="btn btn-outline-success my-2 my-sm-0"
										type="submit">
										<i class="fas fa-filter"></i> Lọc
									</button>
								</div>
							</div>
						</form>
					</div>
					<div class="col-sm-3"></div>
				</div>
				<table class="table table-striped table-bordered ds_dhm"
					style="background-color: white;">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Mã đợt</th>
							<th scope="col">Địa điểm</th>
							<th scope="col">Ngày bắt đầu</th>
							<th scope="col">Ngày kết thúc</th>
							<th scope="col">Số người hiến máu</th>
							<th scope="col">Số lượng máu</th>
							<th scope="col" style="width: 266px;">Hành động</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">D001</th>
							<td>Mark</td>
							<td>Otto</td>
							<td>@mdo</td>
							<td>Mark</td>
							<td>Otto</td>
							<td>
								<button data-toggle="modal" data-target="#myModal" type="button"
									class="btn btn-outline-info">
									<i class="fas fa-info-circle"></i> Xem
								</button>
								<button type="button" style="margin-right: 4px"
									class="btn btn-outline-primary"
									onclick="document.getElementById('id02').style.display='block'">
									<i class="fas fa-edit"></i> Sửa
								</button>
								<button data-toggle="modal" data-target="#myModal" type="button"
									class="btn btn-outline-danger">
									<i class="fas fa-minus-circle"></i> Xóa
								</button>
							</td>
						</tr>
						<tr>
							<th scope="row">D002</th>
							<td>Jacob</td>
							<td>Thornton</td>
							<td>@fat</td>
							<td>Mark</td>
							<td>Otto</td>
							<td>
								<button data-toggle="modal" data-target="#myModal" type="button"
									class="btn btn-outline-info">
									<i class="fas fa-info-circle"></i> Xem
								</button>
								<button type="button" style="margin-right: 4px"
									class="btn btn-outline-primary"
									onclick="document.getElementById('id02').style.display='block'">
									<i class="fas fa-edit"></i> Sửa
								</button>
								<button data-toggle="modal" data-target="#myModal" type="button"
									class="btn btn-outline-danger">
									<i class="fas fa-minus-circle"></i> Xóa
								</button>
							</td>
						</tr>
						<tr>
							<th scope="row">D003</th>
							<td>Larry</td>
							<td>the Bird</td>
							<td>@twitter</td>
							<td>Mark</td>
							<td>Otto</td>
							<td>
								<button data-toggle="modal" data-target="#myModal" type="button"
									class="btn btn-outline-info">
									<i class="fas fa-info-circle"></i> Xem
								</button>
								<button type="button" style="margin-right: 4px"
									class="btn btn-outline-primary"
									onclick="document.getElementById('id02').style.display='block'">
									<i class="fas fa-edit"></i> Sửa
								</button>
								<button data-toggle="modal" data-target="#myModal" type="button"
									class="btn btn-outline-danger">
									<i class="fas fa-minus-circle"></i> Xóa
								</button>
							</td>
						</tr>
					</tbody>
				</table>


				<!-- phần popup thêm đợt hiến máu -->
				<div id="id01" class="modal1">
					<span
						onclick="document.getElementById('id01').style.display='none'"
						class="close" title="Close Modal1">&times;</span>
					<form class="modal-content" action="/action_page.php">
						<div class="container">
							<h1>Thêm đợt hiến máu</h1>
							<p>Vui lòng điền đầy đủ thông tin vào form bên dưới.</p>
							<hr>
							<label for="email"><b>Địa điểm:</b></label> <input type="text"
								placeholder="nhập địa điểm" name="diadiem" required> <label
								for="email"><b>Ngày bắt đầu:</b></label> <input type="date"
								placeholder="" name="ngaybatdau" required> <label
								for="email"><b>Ngày kết thúc:</b></label> <input type="date"
								placeholder="nhập địa điểm" name="ngayketthuc" required>
							<label for="email"><b>Số người tham gia:</b></label> <input
								type="number" placeholder="số người tham gia" name="songuoi"
								required> <label for="email"><b>Địa chỉ:</b></label> <input
								type="text" placeholder="nhập địa chỉ" name="diachi" required>
							<label for="email"><b>Số lượng máu A:</b></label> <input
								type="text" placeholder="nhập số lượng máu A (dv: cc)"
								name="slA" required> <label for="email"><b>Số
									lượng máu B:</b></label> <input type="text"
								placeholder="nhập số lượng máu B (dv: cc)" name="slB" required>
							<label for="email"><b>Số lượng máu O:</b></label> <input
								type="text" placeholder="nhập số lượng máu O (dv: cc)"
								name="slO" required> <label for="email"><b>Số
									lượng máu AB:</b></label> <input type="text"
								placeholder="nhập số lượng máu AB (dv: cc)" name="slAB" required>
							<label for="email"><b>Tình trạng:</b></label> <input type="text"
								placeholder="nhập tình trạng" name="tinhtrang" required>

							<div class="clearfix">
								<button type="button"
									onclick="document.getElementById('id01').style.display='none'"
									class="cancelbtn button_popup">Quay lại</button>
								<button type="submit" class="signupbtn button_popup">Thêm</button>
							</div>
						</div>
					</form>
				</div>

				<script>
					// Get the modal
					var modal = document.getElementById('id01');

					// When the user clicks anywhere outside of the modal, close it
					window.onclick = function(event) {
						if (event.target == modal) {
							modal.style.display = "none";
						}
					}
				</script>
				<!-- kết thúc phần popup thêm đợt hiến máu -->

				<!-- Phần chỉnh sửa thông tin -->
				<div id="id02" class="modal1">
					<span
						onclick="document.getElementById('id02').style.display='none'"
						class="close" title="Close Modal1">&times;</span>
					<form class="modal-content" action="">
						<div class="container">
							<h1>Cập nhật thông tin đợt hiến máu</h1>
							<p>
								Địa điểm: ĐHKH Huế. <br> Vui lòng thay đổi những mục cần
								chỉnh sửa và không được để trống.
							</p>
							<hr>
							<label for="email"><b>Địa điểm:</b></label> <input type="text"
								placeholder="nhập địa điểm" value="Đại Học Khoa Học Huế"
								name="diadiem" required> <label for="email"><b>Ngày
									bắt đầu:</b></label> <input type="date" placeholder="" value="2018-11-11"
								name="ngaybatdau" required> <label for="email"><b>Ngày
									kết thúc:</b></label> <input type="date" placeholder="nhập địa điểm"
								value="2018-11-12" name="ngayketthuc" required> <label
								for="email"><b>Số người tham gia:</b></label> <input
								type="number" placeholder="nhập địa điểm" value="79"
								name="songuoi" required> <label for="email"><b>Địa
									chỉ:</b></label> <input type="text" placeholder="nhập địa điểm"
								value="77 Nguyễn Huệ, thành phố Huế" name="diachi" required>
							<label for="email"><b>Số lượng máu A:</b></label> <input
								type="text" placeholder="nhập số lượng máu A (dv: cc)"
								value="2030" name="slA" required> <label for="email"><b>Số
									lượng máu B:</b></label> <input type="text"
								placeholder="nhập số lượng máu B (dv: cc)" value="290"
								name="slB" required> <label for="email"><b>Số
									lượng máu O:</b></label> <input type="text"
								placeholder="nhập số lượng máu O (dv: cc)" value="4500"
								name="slO" required> <label for="email"><b>Số
									lượng máu AB:</b></label> <input type="text"
								placeholder="nhập số lượng máu AB (dv: cc)" value="1200"
								name="slAB" required> <label for="email"><b>Tình
									trạng:</b></label> <input type="text" placeholder="nhập địa điểm"
								value="đã hoàn thành" name="tinhtrang" required>

							<div class="clearfix">
								<button type="button"
									onclick="document.getElementById('id02').style.display='none'"
									class="cancelbtn button_popup">Quay lại</button>
								<button type="submit" class="signupbtn button_popup">Lưu
									lại</button>
							</div>
						</div>
					</form>
				</div>

				<script>
					// Get the modal
					var modal = document.getElementById('id02');

					// When the user clicks anywhere outside of the modal, close it
					window.onclick = function(event) {
						if (event.target == modal) {
							modal.style.display = "none";
						}
					}
				</script>

				<!-- kết thúc phần chinh sửa thông tin -->

				<!-- phần popup xóa đợt hiến máu -->
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog modal-sm">
						<div class="modal-content" style="width: 100%;">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h3 class="modal-title">
									<b>Xóa Đợt hiến máu</b>
								</h3>
							</div>
							<div class="modal-body">
								<p>Bạn có muốn XÓA đợt hiến máu này?</p>
								<br>
								<p>Ngày bắt đầu: dd/mm/yyy</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-success"
									data-dismiss="modal">Không</button>
								<a href=""><button type="button" class="btn btn-danger">Có</button></a>
							</div>
						</div>
					</div>
				</div>
				<!-- kết thúc popup xóa đơt hiến máu -->



			</div>

		</div>
	</div>

	<div class="overlay"></div>

	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>
	<!-- jQuery Custom Scroller CDN -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#sidebar").mCustomScrollbar({
				theme : "minimal"
			});

			$('#dismiss, .overlay').on('click', function() {
				$('#sidebar').removeClass('active');
				$('.overlay').removeClass('active');
			});

			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').addClass('active');
				$('.overlay').addClass('active');
				$('.collapse.in').toggleClass('in');
				$('a[aria-expanded=true]').attr('aria-expanded', 'false');
			});
		});
	</script>
	<footer>
			
	</footer>
</body>

</html>