<%@page import="bean.DotHienMau"%>
<%@page import="bean.Mau"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->
<%
	ArrayList<Mau> listMau = (ArrayList<Mau>)request.getAttribute("listMau");
	ArrayList<DotHienMau> listDot = (ArrayList<DotHienMau>)request.getAttribute("listDot");
	
	int currentSelectDot = (Integer)(request.getAttribute("currentSelectDot"));
	int currentSelectThang = (Integer)(request.getAttribute("currentSelectThang"));
	int currentSelectNam = (Integer)(request.getAttribute("currentSelectNam"));
%>
<div class="container-fuild phanhienthi">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>THỐNG KÊ SỐ LƯỢNG MÁU</strong>
			</h3>
			<form action="ThongKe" method="post">
				<div class="form-row align-items-center">
					<div class="col-auto my-1">
						<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Theo
							đợt</label> <select class="custom-select mr-sm-2"
							id="inlineFormCustomSelect" name="txt_dot">
							<option selected value="<%=currentSelectDot%>">Đợt: <%=currentSelectDot != -1 ? currentSelectDot : "ALL"%></option>
							<option value="-1">ALL</option>
							<%
								for(DotHienMau d : listDot){%>
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
						<button type="submit" class="btn btn-primary">Thống kê</button>
					</div>
				</div>
			</form>
			<table class="table table-striped table-bordered"
				style="margin-top: 30px; background-color: white;">
				<thead class="thead-dark">
					<tr>
						<th scope="col">#</th>
						<th scope="col">Mã nhóm máu</th>
						<th scope="col">Tên nhóm máu</th>
						<th scope="col">Số lượng</th>
						<th scope="col">So với đợt trước</th>
					</tr>
				</thead>
				<tbody>
				<%
					for(int i =0;i<listMau.size();i++){
					%>
						<tr>
							<th scope="row"><%=i+1 %></th>
							<td><%=listMau.get(i).getMaMau() %></td>
							<td><%=listMau.get(i).getTenMau() %></td>
							<td><%=listMau.get(i).getSoLuongMau() %></td>
							<td><%=listMau.get(i).getSoLuongMau() %> Túi</td>
						</tr>
				<%	
				
					}
				%>
				</tbody>
			</table>
			<div style="float: right;">
				<a href='javascript:goback()'><button type="button"
						class="btn btn-outline-warning"><i class="fas fa-undo-alt"></i> Trở về</button></a>

			</div>
		</div>
	</div>
</div>

<!--js trở về trang trước đó  -->
<script type="text/javascript">
	function goback() {
		history.back(-1)
	}
</script>

<jsp:include page="block/block_down.jsp"></jsp:include>
<!-- phần dùng chung ở phía dưới -->