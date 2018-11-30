<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi" style="max-width: 600px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>THÔNG TIN ĐỢT HIẾN MÁU</strong>
			</h3>
			<h5>
				Mã đợt hiến máu: <strong>DHM001</strong>
			</h5>
			<table class="table table-borderless"
				style="background-color: white;">
				<tbody>
					<tr>
						<th scope="row">Địa điểm:</th>
						<td>Trường ĐHKH Huế</td>
					</tr>
					<tr>
						<th scope="row">Ngày bắt đầu:</th>
						<td colspan="2">2018-09-09</td>
					</tr>
					<tr>
						<th scope="row">Ngày kết thúc:</th>
						<td colspan="2">2018-09-12</td>
					</tr>
					<tr>
						<th scope="row">Số người tham gia:</th>
						<td>156</td>
					</tr>
					<tr>
						<th scope="row">Địa chỉ:</th>
						<td colspan="2">77 Nguyễn Huệ</td>
					</tr>
					<tr>
						<th scope="row">Số lượng máu:</th>
						<td colspan="2" style="padding-bottom: 0px; padding-top: 0px;"><table
								class="table table-borderless">
								<thead>
									<tr>
										<th scope="col">A</th>
										<th scope="col">B</th>
										<th scope="col">AB</th>
										<th scope="col">O</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>4.7L</td>
										<td>4L</td>
										<td>9L</td>
										<td>10L</td>
									</tr>
								</tbody>
							</table></td>
					</tr>
					<tr>
						<th scope="row">Tình trạng:</th>
						<td colspan="2">Đã kết thúc</td>
					</tr>
				</tbody>

			</table>
			<div style="float: right;">
				<button type="button" style="margin-right: 4px"
					class="btn btn-outline-primary"
					onclick="document.getElementById('id02').style.display='block'">
					<i class="fas fa-edit"></i> Sửa
				</button>
				<a href="QL_DotHienMau.jsp"><button type="button"
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
			<h1>Cập nhật thông tin đợt hiến máu</h1>
			<p>
				Mã: DHM001 <br> Vui lòng thay đổi những mục cần chỉnh
				sửa và không được để trống.
			</p>
			<hr>
			<label for="email"><b>Địa điểm:</b></label> <input type="text"
				placeholder="nhập địa điểm" value="Đại Học Khoa Học Huế"
				name="diadiem" required> <label for="email"><b>Ngày
					bắt đầu:</b></label> <input type="date" placeholder="" value="2018-11-11"
				name="ngaybatdau" required> <label for="email"><b>Ngày
					kết thúc:</b></label> <input type="date" placeholder="nhập địa điểm"
				value="2018-11-12" name="ngayketthuc" required> <label
				for="email"><b>Số người tham gia:</b></label> <input type="number"
				placeholder="nhập địa điểm" value="79" name="songuoi" required>
			<label for="email"><b>Địa chỉ:</b></label> <input type="text"
				placeholder="nhập địa điểm" value="77 Nguyễn Huệ, thành phố Huế"
				name="diachi" required> <label for="email"><b>Số
					lượng máu A:</b></label> <input type="text"
				placeholder="nhập số lượng máu A (dv: cc)" value="2030" name="slA"
				required> <label for="email"><b>Số lượng máu B:</b></label>
			<input type="text" placeholder="nhập số lượng máu B (dv: cc)"
				value="290" name="slB" required> <label for="email"><b>Số
					lượng máu O:</b></label> <input type="text"
				placeholder="nhập số lượng máu O (dv: cc)" value="4500" name="slO"
				required> <label for="email"><b>Số lượng máu AB:</b></label>
			<input type="text" placeholder="nhập số lượng máu AB (dv: cc)"
				value="1200" name="slAB" required> <label for="email"><b>Tình
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


<jsp:include page="block/block_down.jsp"></jsp:include>
<!-- phần dùng chung ở phía dưới -->