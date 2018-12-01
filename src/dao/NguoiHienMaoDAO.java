package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.NguoiHienMau;
import config.Database;

public class NguoiHienMaoDAO {
	public ArrayList<NguoiHienMau> listNguoiHienMauTheoDot(int madot) throws Exception{
		ArrayList<NguoiHienMau> list = new ArrayList<NguoiHienMau>();
		String query = "SELECT NGUOIHIENMAU.* FROM DOTHIENMAU JOIN LICHSUHIENMAU ON DOTHIENMAU.madot = LICHSUHIENMAU.madot JOIN NGUOIHIENMAU ON NGUOIHIENMAU.manguoi = LICHSUHIENMAU.manguoi WHERE DOTHIENMAU.madot = ?";
		Connection cn = Database.KetNoi();
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, madot);
		ResultSet rs = stmt.executeQuery();
		NguoiHienMau tmp = null;
		while(rs.next()) {
			tmp = new NguoiHienMau(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getString(8));
			list.add(tmp);
		}
		stmt.close();
		cn.close();
		return list;
	}
}
