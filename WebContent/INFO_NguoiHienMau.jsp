<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi" style="max-width: 600px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>THÔNG TIN NGƯỜI HIẾN MÁU</strong>
			</h3>
			<h5>Mã người hiến máu: <strong>NHM001</strong></h5>
			<table class="table table-borderless"
				style="background-color: white;">
				<tbody>
					<tr>
						<th scope="row">Họ và tên:</th>
						<td>Nguyễn Trần Nhã Huyền</td>
					</tr>
					<tr>
						<th scope="row">Giới tính:</th>
						<td colspan="2">Nữ</td>
					</tr>
					<tr>
						<th scope="row">Ngày sinh:</th>
						<td colspan="2">13/01/1996</td>
					</tr>
					<tr>
						<th scope="row">Số điện thoại:</th>
						<td>0971718484</td>
					</tr>
					<tr>
						<th scope="row">Địa chỉ:</th>
						<td colspan="2">TP Huế</td>
					</tr>
					<tr>
						<th scope="row">Nhóm máu:</th>
						<td colspan="2">A</td>
					</tr>
					<tr>
						<th scope="row">Mô tả thêm:</th>
						<td colspan="2">Không có mô tả</td>
					</tr>
				</tbody>

			</table>
			<div style="float: right;">
				<button type="button" style="margin-right: 4px"
					class="btn btn-outline-primary"
					onclick="document.getElementById('id02').style.display='block'">
					<i class="fas fa-edit"></i> Sửa
				</button>
				<a href="QL_NguoiHienMau.jsp"><button type="button" class="btn btn-outline-warning"><i class="fas fa-undo-alt"></i> Trở
					về</button></a>
				

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
			<h1>Cập nhật thông tin người hiến máu</h1>
			<p>
				Mã: NHM001. <br> Vui lòng thay đổi những mục cần chỉnh sửa và
				không được để trống.
			</p>
			<hr>
			<label for="email"><b>Họ và tên:</b></label> <input type="text"
				placeholder="nhập họ tên" name="hoten" value="Nguyễn Văn A" required>
			<label for="email"><b>Giới tính:</b></label>
			<div class="form-group">
				<select name="gioitinh" class="form-control" id="sel1">
					<option value="N/A">Chưa xác định</option>
					<option value="nam" selected>Nam</option>
					<option value="nu">Nữ</option>
				</select>
			</div>

			<label for="email"><b>Ngày sinh:</b></label> <input type="date"
				placeholder="" name="ngaysinh" value="1997-12-12" required>
			<label for="email"><b>Số điện thoại:</b></label> <input type="text"
				placeholder="nhập số điện thoại" value="0123456789"
				name="sodienthoai" required> <label for="email"><b>Địa
					chỉ:</b></label> <input type="text" placeholder="nhập địa chỉ" value="Huế"
				name="diachi" required> <label for="email"><b>Nhóm
					máu:</b></label>
			<div class="form-group">
				<select name="gioitinh" class="form-control" id="sel1">
					<option value="N/A">Chưa xác định</option>
					<option value="A" selected>A</option>
					<option value="B">B</option>
					<option value="AB">AB</option>
					<option value="O">O</option>
				</select>
			</div>
			<label for="email"><b>Mô tả thêm:</b></label>
			<textarea class="form-control" placeholder="nhập mô tả thêm"
				name="motathem" rows="5" id="comment"> không có mô tả</textarea>
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