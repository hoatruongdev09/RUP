package bean;

public class Mau {
	public int maMau;
	public String tenMau;
	public int soLuongMau;
	public String dungLuong;
	public String tinhTrang;
	
	public Mau(int maMau, String tenMau, int soLuongMau, String dungLuong, String tinhTrang) {
		super();
		this.maMau = maMau;
		this.tenMau = tenMau;
		this.soLuongMau = soLuongMau;
		this.dungLuong = dungLuong;
		this.tinhTrang = tinhTrang;
	}
	public int getMaMau() {
		return maMau;
	}
	public void setMaMau(int maMau) {
		this.maMau = maMau;
	}
	public String getTenMau() {
		return tenMau;
	}
	public void setTenMau(String tenMau) {
		this.tenMau = tenMau;
	}
	public int getSoLuongMau() {
		return soLuongMau;
	}
	public void setSoLuongMau(int soLuongMau) {
		this.soLuongMau = soLuongMau;
	}
	public String getDungLuong() {
		return dungLuong;
	}
	public void setDungLuong(String dungLuong) {
		this.dungLuong = dungLuong;
	}
	public String getTinhTrang() {
		return tinhTrang;
	}
	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}
	
	
}
