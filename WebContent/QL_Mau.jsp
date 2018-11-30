<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>QUẢN LÝ MÁU</strong>
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
						<th scope="col" style="width: 110px;">Hành động</th>
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
							<a href="INFO_Mau.jsp"><button type="button"
								class="btn btn-outline-info">
								<i class="fas fa-info-circle"></i> Xem
							</button></a>
							
							
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
						<a href="INFO_Mau.jsp"><button type="button"
								class="btn btn-outline-info">
								<i class="fas fa-info-circle"></i> Xem
							</button></a>
							
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
							<a href="INFO_Mau.jsp"><button type="button"
								class="btn btn-outline-info">
								<i class="fas fa-info-circle"></i> Xem
							</button></a>
							
						</td>
					</tr>
				</tbody>
			</table>

		</div>

	</div>
</div>

<jsp:include page="block/block_down.jsp"></jsp:include>
<!-- phần dùng chung ở phía dưới -->