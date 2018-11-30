<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi" style="max-width: 600px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>THÔNG TIN TÀI KHOẢN</strong>
			</h3>
			<table class="table table-borderless"
				style="background-color: white;">
				<tbody>
					<tr>
						<th scope="row">Họ và tên:</th>
						<td>Nguyễn Trần Nhã Huyền</td>
					</tr>
					<tr>
						<th scope="row">Số điện thoại:</th>
						<td>0971718484</td>
					</tr>
					<tr>
						<th scope="row">Email:</th>
						<td colspan="2">nhahuyen@gmail.com</td>
					</tr>
					<tr>
						<th scope="row">Ngày sinh:</th>
						<td colspan="2">13/01/1996</td>
					</tr>
					<tr>
						<th scope="row">Địa chỉ:</th>
						<td colspan="2">TP Huế</td>
					</tr>
					<tr>
						<th scope="row">Giới tính:</th>
						<td colspan="2">Nữ</td>
					</tr>

				</tbody>

			</table>
			<div style="float: right;">
				<button type="button" style="margin-right: 4px"
					class="btn btn-outline-primary"
					onclick="document.getElementById('id02').style.display='block'">
					<i class="fas fa-edit"></i> Sửa
				</button>
				<a href="QL_DoiMatKhau.jsp"><button type="button"
						class="btn btn-outline-success"><i class="fas fa-exchange-alt"></i> Đổi mật khẩu</button></a>
				<a href='javascript:goback()'><button type="button"
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
			<h1>Cập nhật thông tin</h1>
			<p>
				 Vui lòng thay đổi những mục cần chỉnh sửa và
				không được để trống.
			</p>
			<hr>
			<label for="email"><b>Họ và tên:</b></label> <input type="text"
				placeholder="nhập Tên" name="ten" value="Nguyễn Huỳnh Hổ" required>
			<label for="email"><b>Số điện thoại:</b></label> <input type="text"
				placeholder="nhập số điện thoại" value="0123456789"
				name="sodienthoai" required> <label for="email"><b>Email:</b></label>
			<input type="email" placeholder="nhập email"
				value="huynhho@gmail.com" name="email" required> <label
				for="email"><b>Ngày sinh:</b></label> <input type="date"
				placeholder="" name="ngaysinh" value="1997-12-14" required>
			<label for="email"><b>Địa chỉ:</b></label> <input type="text"
				placeholder="Địa chỉ" value="Huế" name="diachi" required> <label
				for="email"><b>Giới tính:</b></label>
			<div class="form-group">
				<select name="gioitinh" class="form-control" id="sel1">
					<option value="N/A">Chưa xác định</option>
					<option value="nam" selected>Nam</option>
					<option value="nu">Nữ</option>
				</select>
			</div>
			
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


<!--js trở về trang trước đó  -->
<script type="text/javascript">
	function goback() {
		history.back(-1)
	}
</script>

<jsp:include page="block/block_down.jsp"></jsp:include>
<!-- phần dùng chung ở phía dưới -->