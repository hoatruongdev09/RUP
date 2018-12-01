<%@page import="bean.Mau"%>
<%@page import="bean.DotHienMau"%>
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
<div class="container-fuild phanhienthi" style="max-width: 900px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>BÁO CÁO TÌNH TRẠNG MÁU</strong>
			</h3>
			<form action="BC_TinhTrangMau" method="post">
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
						<button type="submit" class="btn btn-primary">Báo Cáo</button>
					</div>
				</div>
			</form>

			<div>
			<%
				for(Mau m : listMau){%>
				<div style="margin: 40px 0px">
					<h5>
						<b>Nhóm máu <%=m.getTenMau() %>:</b>
					</h5>
					<div style="border: solid 1px black; padding: 7px; margin-bottom: 7px; background-color: white">
						<h6>Mã máu: <%=m.getMaMau() %></h6>
						<h6>Tên máu: <%=m.getTenMau() %></h6>
						<h6>Số lượng máu: <%=m.getSoLuongMau() %> (túi)</h6>
						<h6>Dung lượng: <%=m.getDungLuong() %> (cc)</h6>
						<h6>Tình trạng: <%=m.getSoLuongMau() > 30 ? "Đủ chỉ tiêu" : "Không đủ chỉ tiêu" %></h6>
					</div>
					<h6>
						Thông tin <span style="color: blue">Nhóm máu <%=m.getTenMau() %></span> được tổng
						hợp từ số liệu và tài liệu ở <b>Quản lý từng đợt hiến máu</b> và <b>Quản
							lý máu</b>
					</h6>
				</div>	
			<%	}
			%>
				

			<div style="float: right;">
				<a href='javascript:goback()'><button type="button"
						class="btn btn-outline-warning">
						<i class="fas fa-undo-alt"></i> Trở về
					</button></a>
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