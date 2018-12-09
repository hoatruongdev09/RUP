package bo;

import java.sql.Date;
import java.util.ArrayList;

import bean.NguoiHienMau;
import dao.NguoiHienMaoDAO;

public class NguoiHienMauBO {
	private NguoiHienMaoDAO nguoihienmauDao;
	
	public NguoiHienMauBO() {
		nguoihienmauDao = new NguoiHienMaoDAO();
	}
	public ArrayList<NguoiHienMau> timNguoiHienMau(String value) throws Exception {
		return nguoihienmauDao.timNguoiHienMau(value);
	}
	public void capnhatNguoiHienMau(int manguoi, String hoten, String gioitinh, Date ngaysinh, String sodienthoai, String diachi, int mamau, String motathem) throws Exception {
		nguoihienmauDao.capnhatNguoiHienMau(manguoi, hoten, gioitinh, ngaysinh, sodienthoai, diachi, mamau, motathem);
	}
	public void themNguoiHienMau(String hoten, String gioitinh, Date ngaysinh,String sodienthoai, String diachi, int mamau, String motathem) throws Exception {
		nguoihienmauDao.themNguoiHienMau(hoten, gioitinh, ngaysinh, sodienthoai, diachi, mamau, motathem);
	}
	public void xoaNguoiHienMau(int idNguoi) throws Exception {
		nguoihienmauDao.xoaNguoiHienMau(idNguoi);
	}
	public ArrayList<NguoiHienMau> listNguoiHienMauTheoDot(int madot) throws Exception{
		return nguoihienmauDao.listNguoiHienMauTheoDot(madot);
	}
	public ArrayList<NguoiHienMau> listNguoiHienMau() throws Exception{
		return nguoihienmauDao.listNguoiHienMau();
	}
	public NguoiHienMau getNguoiHienMau(int idNguoi) throws Exception {
		return nguoihienmauDao.getNguoiHienMau(idNguoi);
	}
}	
