<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi">
	<!-- phần hiển thị nổi dung (content) -->
	<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
		<strong>QUẢN LÝ ĐỢT HIẾN MÁU</strong>
	</h3>
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Tìm kiếm" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">
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
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">
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
				<th scope="col" style="width: 180px;">Hành động</th>
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
				<a href="INFO_DotHienMau.jsp"><button type="button"
						class="btn btn-outline-info">
						<i class="fas fa-info-circle"></i> Xem
					</button></a>
					
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
					<a href="INFO_DotHienMau.jsp"><button type="button"
						class="btn btn-outline-info">
						<i class="fas fa-info-circle"></i> Xem
					</button></a>
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
					<a href="INFO_DotHienMau.jsp"><button type="button"
						class="btn btn-outline-info">
						<i class="fas fa-info-circle"></i> Xem
					</button></a>
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
		<span onclick="document.getElementById('id01').style.display='none'"
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
					placeholder="nhập địa điểm" name="ngayketthuc" required> <label
					for="email"><b>Số người tham gia:</b></label> <input type="number"
					placeholder="số người tham gia" name="songuoi" required> <label
					for="email"><b>Địa chỉ:</b></label> <input type="text"
					placeholder="nhập địa chỉ" name="diachi" required> <label
					for="email"><b>Số lượng máu A:</b></label> <input type="text"
					placeholder="nhập số lượng máu A (dv: cc)" name="slA" required>
				<label for="email"><b>Số lượng máu B:</b></label> <input type="text"
					placeholder="nhập số lượng máu B (dv: cc)" name="slB" required>
				<label for="email"><b>Số lượng máu O:</b></label> <input type="text"
					placeholder="nhập số lượng máu O (dv: cc)" name="slO" required>
				<label for="email"><b>Số lượng máu AB:</b></label> <input
					type="text" placeholder="nhập số lượng máu AB (dv: cc)" name="slAB"
					required> <label for="email"><b>Tình trạng:</b></label> <input
					type="text" placeholder="nhập tình trạng" name="tinhtrang" required>

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

	<!-- phần popup xóa đợt hiến máu -->
	<div class="modal fade" id="myModal" role="dialog" style="padding-right: 100px;">
		<div class="modal-dialog modal-sm">
			<div class="modal-content" style="width: 450px;">
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
					<button type="button" class="btn btn-success" data-dismiss="modal">Không</button>
					<a href=""><button type="button" class="btn btn-danger">Có</button></a>
				</div>
			</div>
		</div>
	</div>
	<!-- kết thúc popup xóa đơt hiến máu -->
</div>

<jsp:include page="block/block_down.jsp"></jsp:include>
<!-- phần dùng chung ở phía dưới -->