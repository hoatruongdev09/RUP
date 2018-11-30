package bean;

import java.sql.Date;

public class NguoiHienMau {
	public int maNguoi;
	public int maMau;
	public String hoTen;
	public String gioiTinh;
	public String soDienThoai;
	public String diaChi;
	public Date ngaySinh;
	public String moTaThem;
	public NguoiHienMau(int maNguoi, int maMau, String hoTen, String gioiTinh, String soDienThoai, String diaChi,
			Date ngaySinh, String moTaThem) {
		super();
		this.maNguoi = maNguoi;
		this.maMau = maMau;
		this.hoTen = hoTen;
		this.gioiTinh = gioiTinh;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
		this.ngaySinh = ngaySinh;
		this.moTaThem = moTaThem;
	}
	public int getMaNguoi() {
		return maNguoi;
	}
	public void setMaNguoi(int maNguoi) {
		this.maNguoi = maNguoi;
	}
	public int getMaMau() {
		return maMau;
	}
	public void setMaMau(int maMau) {
		this.maMau = maMau;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public Date getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getMoTaThem() {
		return moTaThem;
	}
	public void setMoTaThem(String moTaThem) {
		this.moTaThem = moTaThem;
	}
	
}
