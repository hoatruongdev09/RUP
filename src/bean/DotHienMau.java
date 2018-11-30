package bean;

import java.sql.Date;

public class DotHienMau {
	public int maDot;
	public String diaDiem;
	public Date ngayBatDau;
	public Date ngayKetThuc;
	public int soNguoiHien;
	public int soLuongMau;
	public String tinhTrang;
	public DotHienMau(int maDot, String diaDiem, Date ngayBatDau, Date ngayKetThuc, int soNguoiHien, int soLuongMau,
			String tinhTrang) {
		super();
		this.maDot = maDot;
		this.diaDiem = diaDiem;
		this.ngayBatDau = ngayBatDau;
		this.ngayKetThuc = ngayKetThuc;
		this.soNguoiHien = soNguoiHien;
		this.soLuongMau = soLuongMau;
		this.tinhTrang = tinhTrang;
	}
	public int getMaDot() {
		return maDot;
	}
	public void setMaDot(int maDot) {
		this.maDot = maDot;
	}
	public String getDiaDiem() {
		return diaDiem;
	}
	public void setDiaDiem(String diaDiem) {
		this.diaDiem = diaDiem;
	}
	public Date getNgayBatDau() {
		return ngayBatDau;
	}
	public void setNgayBatDau(Date ngayBatDau) {
		this.ngayBatDau = ngayBatDau;
	}
	public Date getNgayKetThuc() {
		return ngayKetThuc;
	}
	public void setNgayKetThuc(Date ngayKetThuc) {
		this.ngayKetThuc = ngayKetThuc;
	}
	public int getSoNguoiHien() {
		return soNguoiHien;
	}
	public void setSoNguoiHien(int soNguoiHien) {
		this.soNguoiHien = soNguoiHien;
	}
	public int getSoLuongMau() {
		return soLuongMau;
	}
	public void setSoLuongMau(int soLuongMau) {
		this.soLuongMau = soLuongMau;
	}
	public String getTinhTrang() {
		return tinhTrang;
	}
	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}
	
	
}
