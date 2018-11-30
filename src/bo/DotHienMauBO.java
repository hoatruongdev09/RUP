package bo;
import java.util.ArrayList;

import bean.DotHienMau;
import dao.*;
public class DotHienMauBO {
	private DotHienMauDAO dothienmauDao;
	
	public DotHienMauBO() {
		dothienmauDao = new DotHienMauDAO();
	}
	
	public ArrayList<DotHienMau> listDotHienmau() throws Exception{
		return dothienmauDao.listDotHienmau();
	}
	public ArrayList<DotHienMau> listDotHienMauTheoNam(int nam) throws Exception{
		return dothienmauDao.listDotHienMauTheoNam(nam);
	}
	public ArrayList<DotHienMau> listDotHienMauTheoThangNam(int thang, int nam) throws Exception{
		return dothienmauDao.listDotHienMauTheoThangNam(thang, nam);
	}
	public ArrayList<DotHienMau> search(int dot, int thang, int nam) throws Exception{
		return dothienmauDao.search(dot, thang, nam);
	}
}
