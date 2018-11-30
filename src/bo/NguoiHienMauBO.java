package bo;

import java.util.ArrayList;

import bean.NguoiHienMau;
import dao.NguoiHienMaoDAO;

public class NguoiHienMauBO {
	private NguoiHienMaoDAO nguoihienmauDao;
	
	public NguoiHienMauBO() {
		nguoihienmauDao = new NguoiHienMaoDAO();
	}
	
	public ArrayList<NguoiHienMau> listNguoiHienMauTheoDot(int madot) throws Exception{
		return nguoihienmauDao.listNguoiHienMauTheoDot(madot);
	}
}	
