<%@page import="java.util.ArrayList"%>
<%@page import="bean.Mau"%>
<%@page import="bean.NguoiHienMau"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<%
	NguoiHienMau nhm = (NguoiHienMau)request.getAttribute("nhm");
	Mau mau = (Mau)request.getAttribute("mau");
	ArrayList<Mau> listMau = (ArrayList<Mau>)request.getAttribute("listMau");
%>
<div class="container-fuild phanhienthi" style="max-width: 600px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>THÔNG TIN NGƯỜI HIẾN MÁU</strong>
			</h3>
			<h5>Mã người hiến máu: <strong><%=nhm.getMaNguoi() %></strong></h5>
			<table class="table table-borderless"
				style="background-color: white;">
				<tbody>
					<tr>
						<th scope="row">Họ và tên:</th>
						<td><%=nhm.getHoTen() %></td>
					</tr>
					<tr>
						<th scope="row">Giới tính:</th>
						<td colspan="2"><%=nhm.getGioiTinh() %></td>
					</tr>
					<tr>
						<th scope="row">Ngày sinh:</th>
						<td colspan="2"><%=nhm.getNgaySinh() %></td>
					</tr>
					<tr>
						<th scope="row">Số điện thoại:</th>
						<td><%=nhm.getSoDienThoai() %></td>
					</tr>
					<tr>
						<th scope="row">Địa chỉ:</th>
						<td colspan="2"><%=nhm.getDiaChi() %></td>
					</tr>
					<tr>
						<th scope="row">Nhóm máu:</th>
						<td colspan="2"><%=mau.getTenMau() %></td>
					</tr>
					<tr>
						<th scope="row">Mô tả thêm:</th>
						<td colspan="2"><%=nhm.getMoTaThem() %></td>
					</tr>
				</tbody>

			</table>
			<div style="float: right;">
				<button type="button" style="margin-right: 4px"
					class="btn btn-outline-primary"
					onclick="document.getElementById('id02').style.display='block'">
					<i class="fas fa-edit"></i> Sửa
				</button>
				<a href="QL_NguoiHienMau"><button type="button" class="btn btn-outline-warning"><i class="fas fa-undo-alt"></i> Trở
					về</button></a>
				

			</div>
		</div>
	</div>
</div>

<!-- Phần chỉnh sửa thông tin -->
<div id="id02" class="modal1">
	<span onclick="document.getElementById('id02').style.display='none'"
		class="close" title="Close Modal1">&times;</span>
	<form class="modal-content" action="QL_NguoiHienMau" method="post" id="update-form">
		<div class="container">
			<h1>Cập nhật thông tin người hiến máu</h1>
			<p>
				Mã: <%=nhm.getMaNguoi() %>. <br> Vui lòng thay đổi những mục cần chỉnh sửa và
				không được để trống.
			</p>
			<hr>
			<label for="email"><b>Họ và tên:</b></label> <input type="text" placeholder="nhập họ tên" name="hoten" value="<%=nhm.getHoTen() %>" required>
			<label for="email"><b>Giới tính:</b></label>
			<div class="form-group">
				<select name="gioitinh" class="form-control" id="sel1">
					<option value="Nam" <%=nhm.getGioiTinh().equals("Nam")?"selected":"" %>>Nam</option>
					<option value="Nu" <%=!nhm.getGioiTinh().equals("Nam")?"selected":"" %>>Nữ</option>
				</select>
			</div>

			<label for="email"><b>Ngày sinh:</b></label> <input type="date" placeholder="" name="ngaysinh" value="<%=nhm.getNgaySinh() %>" required>
			<label for="email"><b>Số điện thoại:</b></label> <input type="text" placeholder="nhập số điện thoại" value="<%=nhm.getSoDienThoai() %>" name="sodienthoai" required> 
			<label for="email"><b>Địa chỉ:</b></label> <input type="text" placeholder="nhập địa chỉ" value="<%=nhm.getDiaChi() %>" name="diachi" required> 
			<label for="email"><b>Nhóm máu:</b></label>
			<div class="form-group">
				<select name="nhommau" class="form-control" id="sel1">
					<option value="<%=mau.getMaMau() %>" selected><%=mau.getTenMau() %></option>
					<%
						for(int i = 0; i < listMau.size(); i++){%>
							<option value="<%=listMau.get(i).getMaMau()%>"><%=listMau.get(i).getTenMau() %></option>
					<%	}
					%>
				</select>
			</div>
			<label for="email"><b>Mô tả thêm:</b></label>
			<textarea class="form-control" placeholder="nhập mô tả thêm" name="motathem" rows="5" id="comment" form="update-form"><%=nhm.getMoTaThem() %></textarea>
			<div class="clearfix">
				<button type="button"
					onclick="document.getElementById('id02').style.display='none'"
					class="cancelbtn button_popup">Quay lại</button>
					<input type="hidden" name="idNguoi" value ="<%=nhm.getMaNguoi()%>">
				<button type="submit" class="signupbtn button_popup" name="update" value=" ">Lưu lại</button>
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