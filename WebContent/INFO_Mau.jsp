<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi" style="max-width: 600px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>THÔNG TIN NHÓM MÁU</strong>
			</h3>
			<h5>
				Nhóm máu: <strong>A</strong>
			</h5>
			<table class="table table-borderless"
				style="background-color: white;">
				<tbody>
					<tr>
						<th scope="row">Mã nhóm máu:</th>
						<td>Mau01</td>
					</tr>
					<tr>
						<th scope="row">Tên nhóm máu:</th>
						<td colspan="2">Nhóm máu A</td>
					</tr>
					<tr>
						<th scope="row">Số lượng:</th>
						<td colspan="2">500 túi</td>
					</tr>
					<tr>
						<th scope="row">Thông tin 1:</th>
						<td>00</td>
					</tr>
					<tr>
						<th scope="row">Thông tin 2:</th>
						<td>00</td>
					</tr>
					<tr>
						<th scope="row">Thông tin 3:</th>
						<td>00</td>
					</tr>
				</tbody>

			</table>
			<div style="float: right;">
				<button type="button" style="margin-right: 4px"
					class="btn btn-outline-primary"
					onclick="document.getElementById('id02').style.display='block'">
					<i class="fas fa-edit"></i> Sửa
				</button>
				<a href="QL_Mau.jsp"><button type="button"
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
			<h1>Cập nhật thông tin máu</h1>
			<p>
				Mã: MAU001. <br> Vui lòng thay đổi những mục cần chỉnh sửa và
				không được để trống.
			</p>
			<hr>
			<label for="email"><b>Mã nhóm máu:</b></label> <input type="text"
				placeholder="nhập mã" name="mamau" value="Mau01" required> <label
				for="email"><b>Tên nhóm máu:</b></label> <input type="text"
				placeholder="nhập tên nhóm máu" value="Nhóm máu A" name="tennhommau"
				required> <label for="email"><b>Số lượng:</b></label> <input
				type="text" placeholder="nhập số lượng" value="500 túi"
				name="soluong" required> <label for="email"><b>Thông
					tin 1:</b></label>
			<textarea class="form-control" placeholder="" name="thongtin1"
				rows="5" id="comment"> 00</textarea>
			<label for="email"><b>Thông tin 2:</b></label>
			<textarea class="form-control" placeholder="" name="thongtin2"
				rows="5" id="comment"> 00</textarea>
			<label for="email"><b>Thông tin 3:</b></label>
			<textarea class="form-control" placeholder="" name="thongtin3"
				rows="5" id="comment"> 00</textarea>
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