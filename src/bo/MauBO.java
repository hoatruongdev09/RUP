package bo;
import java.util.ArrayList;

import bean.Mau;
import dao.*;
public class MauBO {
	private MauDAO mauDao;
	
	public MauBO() {
		mauDao = new MauDAO();
	}
	
	public Mau getMau(int id) throws Exception {
		return mauDao.getMau(id);
	}
	public ArrayList<Mau> listMau() throws Exception{
		return mauDao.listMau();
	}
	public int getSoLuongMauTheoDot(int mamau,int madot) throws Exception {
		return mauDao.getSoLuongMauTheoDot(mamau, madot);
	}
	public int getSoLuongMauTheoNam(int mamau, int nam) throws Exception{
		return mauDao.getSoLuongMauTheoNam(mamau, nam);
	}
	public int getSoLuongMauTheoThangNam(int mamau, int thang, int nam) throws Exception {
		return mauDao.getSoLuongMauTheoThangNam(mamau, thang, nam);
	}
}
