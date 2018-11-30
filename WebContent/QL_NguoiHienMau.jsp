<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>QUẢN LÝ NGƯỜI HIẾN MÁU</strong>
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
				<div class="col-sm-2">

					<button type="button" style="margin-right: 8px; float: right;"
						class="btn btn-outline-primary"
						onclick="document.getElementById('id01').style.display='block'">
						<i class="fas fa-plus-circle"></i> Thêm người
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
								<option value="1">Số thứ tự</option>
								<option value="2">Tên người hiến máu</option>
								<option value="3">Ngày sinh</option>
								<option value="4">Địa chỉ</option>
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
						<th scope="col">STT</th>
						<th scope="col">Mã người hiến máu</th>
						<th scope="col">Họ tên người hiến máu</th>
						<th scope="col">Ngày sinh</th>
						<th scope="col">Địa chỉ</th>
						<th scope="col" style="width: 180px;">Hành động</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>	
						<td>Mark</td>
						<td>
							<a href="INFO_NguoiHienMau.jsp"><button type="button"
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
						<th scope="row">2</th>
						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
						<td>Mark</td>
						<td>
							<a href="INFO_NguoiHienMau.jsp"><button type="button"
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
						<th scope="row">3</th>
						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
						<td>Mark</td>
						<td>
							<a href="INFO_NguoiHienMau.jsp"><button type="button"
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
						<h1>Thêm người hiến máu</h1>
						<p>Vui lòng điền đầy đủ thông tin vào form bên dưới.</p>
						<hr>
						<label for="email"><b>Họ và tên:</b></label> <input type="text"
							placeholder="nhập họ tên" name="hoten" required> <label
							for="email"><b>Giới tính:</b></label>
						<div class="form-group">
							<select name="gioitinh" class="form-control" id="sel1">
								<option value="N/A" actived>Chưa xác định</option>
								<option value="nam">Nam</option>
								<option value="nu">Nữ</option>
							</select>
						</div>

						<label for="email"><b>Ngày sinh:</b></label> <input type="date"
							placeholder="" name="ngaysinh" required> <label
							for="email"><b>Số điện thoại:</b></label> <input type="text"
							placeholder="nhập số điện thoại" name="sodienthoai" required> <label
							for="email"><b>Địa chỉ:</b></label> <input type="text"
							placeholder="nhập địa chỉ" name="diachi" required> 
							<label
							for="email"><b>Nhóm máu:</b></label>
						<div class="form-group">
							<select name="nhommau" class="form-control" id="sel1">
								<option value="N/A">Chưa xác định</option>
								<option value="A">A</option>
								<option value="B">B</option>
								<option value="AB">AB</option>
								<option value="O">O</option>
							</select>
						</div>
							<label
							for="email"><b>Mô tả thêm:</b></label>
						<textarea class="form-control" placeholder="nhập mô tả thêm" name="motathem" rows="5" id="comment"></textarea>
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
					<div class="modal-content" style="width: 150%;">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h3 class="modal-title">
								<b>Xóa người hiến máu Này</b>
							</h3>
						</div>
						<div class="modal-body">
							<p>Bạn có muốn XÓA người hiến máu này này?</p>
							<br>
							<p>Mã người hiến máu: NV001</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-success"
								data-dismiss="modal">Không</button>
							<a href=""><button type="button" class="btn btn-danger">Có</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="block/block_down.jsp"></jsp:include>
<!-- phần dùng chung ở phía dưới -->