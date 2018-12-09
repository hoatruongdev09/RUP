<%@page import="bean.Mau"%>
<%@page import="bean.NguoiHienMau"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->
<%

	ArrayList<NguoiHienMau> listNguoi = (ArrayList<NguoiHienMau>)request.getAttribute("listNguoi");
	ArrayList<Mau> listMau = (ArrayList<Mau>)request.getAttribute("listMau");
	int sortOrder = (Integer)request.getAttribute("sort");
	String error = (String)request.getAttribute("error");
%>
<div class="container-fuild phanhienthi">
<%
	if(error != null && !error.isEmpty()){%>
		<div class="row">
			<h5 style="color: #e74c3c"><%=error %></h5>
		</div>
<%	}
%>
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>QUẢN LÝ NGƯỜI HIẾN MÁU</strong>
			</h3>
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">
					<form class="form-inline my-2 my-lg-0" action="QL_NguoiHienMau" method="post">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Tìm kiếm" aria-label="Search" name="value">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="search" value=" ">
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
					<form method=get action="QL_NguoiHienMau">
						<div class="input-group sapxep_dhm">
							<select class="custom-select" name="sortOrder">
								<option value="1" <%=(sortOrder == 1)?"selected":"" %>>Số thứ tự</option>
								<option value="2" <%=(sortOrder == 2)?"selected":"" %>>Tên người hiến máu</option>
								<option value="3" <%=(sortOrder == 3)?"selected":"" %>>Ngày sinh</option>
								<option value="4" <%=(sortOrder == 4)?"selected":"" %>>Địa chỉ</option>
							</select>
							<div>
								<button class="btn btn-outline-success my-2 my-sm-0"
									type="submit" name="sort" value =" ">
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
				<%	
				if(listNguoi == null || listNguoi.size() == 0){%>
					<tr>
						<td>Bảng không có kết quả.</td>
					</tr>
				<%}
				else{
						for(int i = 0; i < listNguoi.size(); i++){%>
						<tr>
						<th scope="row"><%=i+1 %></th>
						<td><%=listNguoi.get(i).getMaNguoi() %></td>
						<td><%=listNguoi.get(i).getHoTen() %></td>
						<td><%=listNguoi.get(i).getNgaySinh() %></td>	
						<td><%=listNguoi.get(i).getDiaChi() %></td>
						<td>
						<form action="QL_NguoiHienMau" method="post">
							<input type="hidden" name="idNguoi" value ="<%=listNguoi.get(i).getMaNguoi()%>">
							<button type="submit" class="btn btn-outline-info" name="Xem" value=" ">
								<i class="fas fa-info-circle"></i> Xem
							</button>
							<button data-toggle="modal" data-target="#<%=listNguoi.get(i).getMaNguoi() %>" type="button"
								class="btn btn-outline-danger">
								<i class="fas fa-minus-circle"></i> Xóa
							</button>
						</form>	
						</td>
					</tr>
					
				<%}
				}
				%>
				</tbody>
			</table>



			<!-- phần popup thêm đợt hiến máu -->
			<div id="id01" class="modal1">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal1">&times;</span>
				<form class="modal-content" action="QL_NguoiHienMau" method="post" id="add-form">
					<div class="container">
						<h1>Thêm người hiến máu</h1>
						<p>Vui lòng điền đầy đủ thông tin vào form bên dưới.</p>
						<hr>
						<label for="email"><b>Họ và tên:</b></label> <input type="text"
							placeholder="nhập họ tên" name="hoten" required> <label
							for="email"><b>Giới tính:</b></label>
						<div class="form-group">
							<select name="gioitinh" class="form-control" id="sel1">
								<option value="Nam" seleted>Nam</option>
								<option value="Nu">Nữ</option>
							</select>
						</div>

						<label for="email"><b>Ngày sinh:</b></label> <input type="date" placeholder="" name="ngaysinh" required> 
						<label for="email"><b>Số điện thoại:</b></label> <input type="number" placeholder="nhập số điện thoại" name="sodienthoai" required> 
						<label for="email"><b>Địa chỉ:</b></label> <input type="text" placeholder="nhập địa chỉ" name="diachi" required> 
						<label for="email"><b>Nhóm máu:</b></label>
						<div class="form-group">
							<select name="nhommau" class="form-control" id="sel1">
								<option value="<%=listMau.get(0).getMaMau() %>" selected><%=listMau.get(0).getTenMau() %></option>
								<%
									for(int i = 1;i < listMau.size(); i++){%>
										<option value="<%=listMau.get(i).getMaMau()%>"><%=listMau.get(i).getTenMau() %></option>
								<%}%>
							</select>
						</div>
							<label
							for="email"><b>Mô tả thêm:</b></label>
						<textarea class="form-control" placeholder="nhập mô tả thêm" name="motathem" rows="5" id="comment" form="add-form"></textarea>
						<div class="clearfix">
							<button type="button"
								onclick="document.getElementById('id01').style.display='none'"
								class="cancelbtn button_popup">Quay lại</button>
							<button type="submit" class="signupbtn button_popup" name="add" value=" ">Thêm</button>
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
			<%
				for(int i = 0; i<listNguoi.size(); i++){%>
					<div class="modal fade" id="<%=listNguoi.get(i).getMaNguoi() %>" role="dialog" style="padding-right: 100px;">
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
									<p>Mã người hiến máu: <%=listNguoi.get(i).getMaNguoi() %></p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-success"
										data-dismiss="modal">Không</button>
									<form action="QL_NguoiHienMau" method="post">
									<input type="hidden" name="idNguoi" value="<%=listNguoi.get(i).getMaNguoi()%>">
										<button type="submit" name="delete" value=" " class="btn btn-danger">Có</button>
									</form>
									
								</div>
							</div>
						</div>
					</div>
			<%	}
			%>
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