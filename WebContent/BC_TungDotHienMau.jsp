<%@page import="bean.DotHienMau"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<%
	ArrayList<DotHienMau> listDotMain = (ArrayList<DotHienMau>)request.getAttribute("listDotMain");
	ArrayList<DotHienMau> listDot = (ArrayList<DotHienMau>)request.getAttribute("listDot");
	
	int currentSelectDot = (Integer)(request.getAttribute("currentSelectDot"));
	int currentSelectThang = (Integer)(request.getAttribute("currentSelectThang"));
	int currentSelectNam = (Integer)(request.getAttribute("currentSelectNam"));
%>

<div class="container-fuild phanhienthi" style="max-width: 900px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>BÁO CÁO TỪNG ĐỢT HIẾN MÁU</strong>
			</h3>
			<form action="BC_TungDotHienMau" method="post">
				<div class="form-row align-items-center">
					<div class="col-auto my-1">
						<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Theo
							đợt</label> <select class="custom-select mr-sm-2"
							id="inlineFormCustomSelect" name="txt_dot">
							<option selected value="<%=currentSelectDot%>">Đợt: <%=currentSelectDot != -1 ? currentSelectDot : "ALL"%></option>
							<option value="-1">ALL</option>
							<%
								for(DotHienMau d : listDotMain){%>
									<option value="<%=d.getMaDot()%>"><%=d.getMaDot() %></option>
							<%	}
							%>
						</select>
					</div>
					<div class="col-auto my-1">
						<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Theo
							tháng</label> <select class="custom-select mr-sm-2"
							id="inlineFormCustomSelect" name="txt_thang">
							<option selected value="<%=currentSelectThang%>">Tháng: <%=currentSelectThang != -1 ? currentSelectThang : "ALL"%></option>
							<option value ="-1" >Tháng: ALL</option>
							<%
								for(int i = 1;i<13;i++){%>
									<option value="<%=i%>"><%=i %></option>
							<%	}
							%>
							

						</select>
					</div>
					<div class="col-auto my-1">
						<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Theo
							năm</label> <select class="custom-select mr-sm-2"
							id="inlineFormCustomSelect" name="txt_nam">
							<option selected value="<%=currentSelectNam%>">Năm: <%=currentSelectNam != -1 ? currentSelectNam : "ALL"%></option>
							<option value ="-1" >Năm: ALL</option>
							<option value="2016">2016</option>
							<option value="2017">2017</option>
							<option value="2018">2018</option>
							<option value="2019">2019</option>
							<option value="2020">2020</option>
						</select>
					</div>

					<div class="col-auto my-1">
						<button type="submit" class="btn btn-primary">Báo Cáo</button>
					</div>
				</div>
			</form>
			<table class="table table-striped table-bordered"
				style="margin-top: 30px; background-color: white;">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Đợt</th>
						<th scope="col">Mã đợt</th>
						<th scope="col">Địa điểm</th>
						<th scope="col">Ngày bắt đầu</th>
						<th scope="col">Ngày kết thúc</th>
						<th scope="col">Số người hiến máu</th>
						<th scope="col">Số lượng máu</th>
					</tr>
				</thead>
				<tbody>
				<%
					if(listDot.size() == 0){%>
						<tr>
							<th scope="row"><%=0%></th>
							<td><%="Không có đợt hiến máu"%></td>
							<td><%=" "%></td>
							<td><%=" "%></td>
							<td><%=" "%></td>
							<td><%=" "%></td>
							<td><%=" "%></td>
						</tr>
				<%	}
				%>
				<%
					for(int i = 0;i<listDot.size();i++){%>
						<tr>
							<th scope="row"><%=i+1 %></th>
							<td><%=listDot.get(i).getMaDot() %></td>
							<td><%=listDot.get(i).getDiaDiem() %></td>
							<td><%=listDot.get(i).getNgayBatDau() %></td>
							<td><%=listDot.get(i).getNgayKetThuc() %></td>
							<td><%=listDot.get(i).getSoNguoiHien() %><br>
							<span data-toggle="modal" data-target="#exampleModall"
								style="color: blue" onclick='javascript:loadDanhSachNguoiHienMau("<%=listDot.get(i).getMaDot()%>")'>Danh sách</span></td>
							<td><%=listDot.get(i).getTinhTrang() %></td>
						</tr>

					<!--<tr>
						<th scope="row"></th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><span data-toggle="modal" data-target="#exampleModall"
							style="color: blue" onclick='javascript:loadDanhSachNguoiHienMau("<%=listDot.get(i).getMaDot()%>")'>Danh sách</span></td>
						 <td><span data-toggle="modal" data-target="#exampleModal"
							style="color: blue">Danh sách</span></td> 
					</tr>-->
				<%	}
				%>
					
				</tbody>
			</table>

			<div>
				<h6>
					<b>Chọn</b> <span style="color: blue">Danh sách</span> ở Người hiến
					máu để xem toàn bộ người hiến máu của <b>đợt 1</b>
				</h6>
				<!--<h6>
					<b>Chọn</b> <span style="color: blue">Danh sách</span> ở Số lượng
					máu để xem toàn bộ số lượng máu ở mỗi nhóm máu của <b>đợt 1</b>
				</h6>  -->
				
				<h6>
					Thông tin báo cáo đợt hiến máu được tổng hợp theo số liệu ở <b>Quản
						lý từng đợt hiến máu.</b>
				</h6>
				<h6>
					Danh sách người hiến máu lấy từ <b>Quản lý nguời hiến máu.</b>
				</h6>
				<h6>
					Danh sách máu được lấy từ <b>quản lý máu</b>
				</h6>
			</div>
			<div style="float: right;">
				<a href='javascript:goback()'><button type="button"
						class="btn btn-outline-warning">
						<i class="fas fa-undo-alt"></i> Trở về
					</button></a>
			</div>
		</div>
	</div>
</div>

<!-- phần hiển thị danh sách máu -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Số lượng máu</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<table class="table table-borderless">
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
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- kết thúc phần hiển thị danh sách máu -->

<!-- phần hiển thị danh sách số người hiến máu -->
<div class="modal fade" id="exampleModall" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content" style="width: 320px">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Danh sách người hiến máu</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<table class="table table-borderless">
					<thead>
					<tr>
						<th scope="row">STT</th>
						<th><b>Tên người hiến máu</b></td>
					</tr>
					</thead>
					<tbody id = "demo">
					<tr>
						<th scope="row">1</th>
						<td colspan="2">Nguyễn Văn A</td>
					</tr>
					<tr>
						<th scope="row">3</th>
						<td colspan="2">Nguyễn Văn B</td>
					</tr>
					<tr>
						<th scope="row">4</th>
						<td colspan="2">Nguyễn Văn C</td>
					</tr>
					<tr>
						<th scope="row">5</th>
						<td colspan="2">Nguyễn Văn D</td>
					</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- kết thúc phần hiển thị danh sách số người hiến máu -->


<!--js trở về trang trước đó  -->
<script type="text/javascript">
	function goback() {
		history.back(-1)
	}
	function loadDanhSachNguoiHienMau(idDot){
		 var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("demo").innerHTML =
		      this.responseText;
		    }
		  };
		  xhttp.open("GET", "AJAX_NguoiHienMau?madot="+idDot, true);
		  xhttp.send();
	}
</script>
<jsp:include page="block/block_down.jsp"></jsp:include>
<!-- phần dùng chung ở phía dưới -->