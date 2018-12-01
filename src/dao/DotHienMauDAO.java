package dao;
import java.sql.*; 
import java.util.ArrayList;

import bean.*;
import config.Database;
public class DotHienMauDAO {
	public ArrayList<DotHienMau> listDotHienmau() throws Exception{
		ArrayList<DotHienMau> list = new ArrayList<DotHienMau>();
		Connection cn = Database.KetNoi();
		String query = "SELECT * FROM dothienmau";
		PreparedStatement stmt = cn.prepareStatement(query);
		ResultSet rs = stmt.executeQuery();
		DotHienMau tmp = null;
		while(rs.next()) {
			tmp = new DotHienMau(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getInt(5), rs.getInt(6), rs.getString(7));
			list.add(tmp);
		}
		stmt.close();
		cn.close();
		return list;
	}
	public ArrayList<DotHienMau> search(int dot, int thang, int nam) throws Exception{
		ArrayList<DotHienMau> list = new ArrayList<DotHienMau>();
		Connection cn = Database.KetNoi();
		String query = "SELECT * FROM DOTHIENMAU WHERE (madot = ? or ? = -1) AND (MONTH(ngaybatdau) = ? OR ? = -1) AND (YEAR(ngaybatdau) = ? OR ? = -1)";
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, dot);
		stmt.setInt(2, dot);
		stmt.setInt(3, thang);
		stmt.setInt(4, thang);
		stmt.setInt(5, nam);
		stmt.setInt(6, nam);
		ResultSet rs = stmt.executeQuery();
		DotHienMau tmp = null;
		while(rs.next()) {
			tmp = new DotHienMau(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getInt(5), rs.getInt(6), rs.getString(7));
			list.add(tmp);
		}
		stmt.close();
		cn.close();
		return list;
	}
	public ArrayList<DotHienMau> listDotHienMauTheoNam(int nam) throws Exception{
		ArrayList<DotHienMau> list = new ArrayList<DotHienMau>();
		Connection cn = Database.KetNoi();
		String query = "SELECT * FROM DOTHIENMAU where YEAR(ngaybatdau) = ?";
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, nam);
		ResultSet rs = stmt.executeQuery();
		DotHienMau tmp = null;
		while(rs.next()) {
			tmp = new DotHienMau(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getInt(5), rs.getInt(6), rs.getString(7));
			list.add(tmp);
		}
		stmt.close();
		cn.close();
		return list;
	}
	public ArrayList<DotHienMau> listDotHienMauTheoThangNam(int thang, int nam) throws Exception{
		ArrayList<DotHienMau> list = new ArrayList<DotHienMau>();
		Connection cn = Database.KetNoi();
		String query = "SELECT * FROM DOTHIENMAU where YEAR(ngaybatdau) = ? and MONTH(ngaybatdau) = ?";
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, nam);
		stmt.setInt(2, thang);
		ResultSet rs = stmt.executeQuery();
		DotHienMau tmp = null;
		while(rs.next()) {
			tmp = new DotHienMau(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getInt(5), rs.getInt(6), rs.getString(7));
			list.add(tmp);
		}
		stmt.close();
		cn.close();
		return list;
	}
}
