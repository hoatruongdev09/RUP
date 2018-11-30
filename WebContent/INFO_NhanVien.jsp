<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi" style="max-width: 600px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>THÔNG TIN NHÂN VIÊN</strong>
			</h3>
			<h5>
				Mã nhân viên: <strong>NV001</strong>
			</h5>
			<table class="table table-borderless"
				style="background-color: white;">
				<tbody>
					<tr>
						<th scope="row">Tên nhân viên:</th>
						<td>Nguyễn Huỳnh Hổ</td>
					</tr>
					<tr>
						<th scope="row">Số điện thoại:</th>
						<td colspan="2">0123456789</td>
					</tr>
					<tr>
						<th scope="row">Email:</th>
						<td colspan="2">huynhoh@gmail.com</td>
					</tr>
					<tr>
						<th scope="row">Ngày sinh:</th>
						<td>1997-12-14</td>
					</tr>
					<tr>
						<th scope="row">Địa chỉ:</th>
						<td colspan="2">Huế</td>
					</tr>
					<tr>
						<th scope="row">Giới tính:</th>
						<td colspan="2">Nam</td>
					</tr>
					<tr>
						<th scope="row">Chức vụ/công việc:</th>
						<td colspan="2">Quản lý Nhân viênc</td>
					</tr>
					<tr>
						<th scope="row">Tài khoản:</th>
						<td colspan="2">huynhho</td>
					</tr>
					<tr>
						<th scope="row">Mật khẩu:</th>
						<td colspan="2">123</td>
					</tr>
				</tbody>

			</table>
			<div style="float: right;">
				<button type="button" style="margin-right: 4px"
					class="btn btn-outline-primary"
					onclick="document.getElementById('id02').style.display='block'">
					<i class="fas fa-edit"></i> Sửa
				</button>
				<a href="QL_NhanVien.jsp"><button type="button"
						class="btn btn-outline-warning"><i class="fas fa-undo-alt"></i> Trở về</button></a>


			</div>
		</div>
	</div>
</div>
<!-- Phần chỉnh sửa thông tin -->
<div id="id02" class="modal1">
	<span onclick="document.getElementById('id02').style.display='none'"
		class="close" title="Close Modal1">&times;</span>
	<form class="modal-content" action="">
		<div class="container">
			<h1>Cập nhật thông tin nhân viên</h1>
			<p>
				Mã: NV001. <br> Vui lòng thay đổi những mục cần chỉnh
				sửa và không được để trống.
			</p>
			<hr>
			<label for="email"><b>Tên nhân viên:</b></label> <input type="text"
				placeholder="nhập Tên" name="ten" value="Nguyễn Huỳnh Hổ" required> <label
				for="email"><b>Số điện thoại:</b></label> <input type="text"
				placeholder="nhập số điện thoại" value="0123456789" name="sodienthoai" required>
			<label for="email"><b>Email:</b></label> <input type="email"
				placeholder="nhập email" value="huynhho@gmail.com"  name="email" required> <label
				for="email"><b>Ngày sinh:</b></label> <input type="date"
				placeholder="" name="ngaysinh" value="1997-12-14"  required> <label for="email"><b>Địa
					chỉ:</b></label> <input type="text" placeholder="Địa chỉ" value="Huế" name="diachi"
				required> <label for="email"><b>Giới tính:</b></label>
			<div class="form-group">
				<select name="gioitinh" class="form-control" id="sel1">
					<option value="N/A">Chưa xác định</option>
					<option value="nam" selected>Nam</option>
					<option value="nu">Nữ</option>
				</select>
			</div>
			<label for="email"><b>Chức vụ/công việc:</b></label>
			<div class="form-group">
				<select name="gioitinh" class="form-control" id="sel1">
					<option value="qlmau" selected>Quản lý máu</option>
					<option value="qlnv">Quản lý nhân viên</option>
					<option value="qldhm">Quản lý đợt hiến máu</option>
					<option value="qlnhm">Quản lý người hiến máu</option>
				</select>
			</div>
			<label for="email"><b>Tên đăng nhập:</b></label> <input type="text"
				placeholder="nhập username" value="huynhho" name="username" required> <label
				for="email"><b>Mật khẩu:</b></label> <input type="text"
				placeholder="nhập password" value="123" name="password" required>

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


<jsp:include page="block/block_down.jsp"></jsp:include>
<!-- phần dùng chung ở phía dưới -->