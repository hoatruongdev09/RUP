<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<jsp:include page="block/block_top.jsp"></jsp:include>
<!-- phần dùng chung ở phía trên -->

<div class="container-fuild phanhienthi" style="max-width: 900px">
	<div class="row">
		<div class="col-sm-12">
			<h3 style="Text-align: Center; color: #0A0A2A; margin-bottom: 30px;">
				<strong>ĐỔI MẬT KHẨU</strong>
			</h3>
			<form>
				<div class="form-group">
					<label>Mật khẩu cũ:</label> <input type="password"
						class="form-control" aria-describedby="emailHelp"
						placeholder="Old Password" required>
				</div>
				<div class="form-group">
					<label>Mật khẩu mới:</label> <input type="password"
						class="form-control" placeholder="Password" required>
				</div>
				<div class="form-group">
					<label>Xác nhận mật khẩu mới:</label> <input type="password"
						class="form-control" placeholder="Confirm Password" required>
				</div>
				<div style="float: right;">
					<button type="submit" class="btn btn-outline-info">
						<i class="fas fa-save"></i> Lưu thay đổi
					</button>
					<a href='javascript:goback()'><button type="button"
							class="btn btn-outline-warning">
							<i class="fas fa-undo-alt"></i> Trở về
						</button></a>
				</div>
			</form>


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