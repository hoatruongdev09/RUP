<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi" style="max-width: 900px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>BÁO CÁO TÌNH TRẠNG MÁU</strong>
			</h3>
			<form>
				<div class="form-row align-items-center">
					<div class="col-auto my-1">
						<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Theo
							đợt</label> <select class="custom-select mr-sm-2"
							id="inlineFormCustomSelect">
							<option selected>Theo đợt</option>
							<option value="1">2</option>
							<option value="2">3</option>
							<option value="3">4</option>
						</select>
					</div>
					<div class="col-auto my-1">
						<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Theo
							tháng</label> <select class="custom-select mr-sm-2"
							id="inlineFormCustomSelect">
							<option selected>Theo tháng</option>
							<option value="1">2</option>
							<option value="2">3</option>
							<option value="3">4</option>
						</select>
					</div>
					<div class="col-auto my-1">
						<label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Theo
							năm</label> <select class="custom-select mr-sm-2"
							id="inlineFormCustomSelect">
							<option selected>Theo năm</option>
							<option value="1">2</option>
							<option value="2">3</option>
							<option value="3">4</option>
						</select>
					</div>

					<div class="col-auto my-1">
						<button type="submit" class="btn btn-primary">Báo cáo</button>
					</div>
				</div>
			</form>

			<div>
				<div style="margin: 40px 0px">
					<h5>
						<b>Nhóm máu A:</b>
					</h5>
					<div style="border: solid 1px black; padding: 7px; margin-bottom: 7px; background-color: white">
						<h6>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s, when an unknown printer
							took a galley of type and scrambled it to make a type specimen
							book. It has survived not only five centuries, but also the leap
							into electronic typesetting, remaining essentially unchanged. It
							was popularised in the 1960s with the release of Letraset sheets
							containing Lorem Ipsum passages, and more recently with desktop
							publishing software like Aldus PageMaker including versions of
							Lorem Ipsum.</h6>
					</div>
					<h6>
						Thông tin <span style="color: blue">Nhóm máu A</span> được tổng
						hợp từ số liệu và tài liệu ở <b>Quản lý từng đợt hiến máu</b> và <b>Quản
							lý máu</b>
					</h6>
				</div>
				<div style="margin: 40px 0px">
					<h5>
						<b>Nhóm máu B:</b>
					</h5>
					<div  style="border: solid 1px black; padding: 7px; margin-bottom: 7px; background-color: white">
						<h6>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s, when an unknown printer
							took a galley of type and scrambled it to make a type specimen
							book. It has survived not only five centuries, but also the leap
							into electronic typesetting, remaining essentially unchanged. It
							was popularised in the 1960s with the release of Letraset sheets
							containing Lorem Ipsum passages, and more recently with desktop
							publishing software like Aldus PageMaker including versions of
							Lorem Ipsum.</h6>
					</div>
					<h6>
						Thông tin <span style="color: blue">Nhóm máu B</span> được tổng
						hợp từ số liệu và tài liệu ở <b>Quản lý từng đợt hiến máu</b> và <b>Quản
							lý máu</b>
					</h6>
				</div>
				<div style="margin: 40px 0px">
					<h5>
						<b>Nhóm máu AB:</b>
					</h5>
					<div  style="border: solid 1px black; padding: 7px; margin-bottom: 7px; background-color: white">
						<h6>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s, when an unknown printer
							took a galley of type and scrambled it to make a type specimen
							book. It has survived not only five centuries, but also the leap
							into electronic typesetting, remaining essentially unchanged. It
							was popularised in the 1960s with the release of Letraset sheets
							containing Lorem Ipsum passages, and more recently with desktop
							publishing software like Aldus PageMaker including versions of
							Lorem Ipsum.</h6>
					</div>
					<h6>
						Thông tin <span style="color: blue">Nhóm máu AB</span> được tổng
						hợp từ số liệu và tài liệu ở <b>Quản lý từng đợt hiến máu</b> và <b>Quản
							lý máu</b>
					</h6>
				</div>
				<div style="margin: 40px 0px">
					<h5>
						<b>Nhóm máu O:</b>
					</h5>
					<div  style="border: solid 1px black; padding: 7px; margin-bottom: 7px; background-color: white">
						<h6>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s, when an unknown printer
							took a galley of type and scrambled it to make a type specimen
							book. It has survived not only five centuries, but also the leap
							into electronic typesetting, remaining essentially unchanged. It
							was popularised in the 1960s with the release of Letraset sheets
							containing Lorem Ipsum passages, and more recently with desktop
							publishing like Aldus PageMaker including versions of
							Lorem Ipsum.</h6>
					</div>
					<h6>
						Thông tin <span style="color: blue">Nhóm máu O</span> được tổng
						hợp từ số liệu và tài liệu ở <b>Quản lý từng đợt hiến máu</b> và <b>Quản
							lý máu</b>
					</h6>
				</div>
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
<!--js trở về trang trước đó  -->
<script type="text/javascript">
	function goback() {
		history.back(-1)
	}
</script>
<jsp:include page="block/block_down.jsp"></jsp:include>
<!-- phần dùng chung ở phía dưới -->