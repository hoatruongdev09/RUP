package dao;

import java.util.ArrayList;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ResultTreeType;

import java.sql.*; 
import bean.*;
import config.Database;
public class MauDAO {
	
	public ArrayList<Mau> listMau() throws Exception{
		ArrayList<Mau> list = new ArrayList();
		Connection cn = Database.KetNoi();
		String query = "SELECT * FROM mau";
		PreparedStatement stmt = cn.prepareStatement(query);
		ResultSet rs = stmt.executeQuery();
		Mau tmp = null;
		while(rs.next()) {
			tmp = new Mau(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5));
			list.add(tmp);
		}
		stmt.close();
		cn.close();
		return list;
	}
	
	public int getSoLuongMauTheoDot(int mamau, int madot) throws Exception {
		Connection cn = Database.KetNoi();
		String query ="SELECT SUM(soluong) FROM nguoihienmau JOIN lichsuhienmau ON nguoihienmau.manguoi = lichsuhienmau.manguoi JOIN dothienmau ON lichsuhienmau.madot = dothienmau.madot WHERE mamau = ? AND dothienmau.madot = ?";
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, mamau);
		stmt.setInt(2, madot);
		ResultSet rs = stmt.executeQuery();
		
		int soluong = 0;
		if(rs.next()) {
			soluong = rs.getInt(1);
		}
		stmt.close();
		cn.close();
		return soluong;
	}
	public int getSoLuongMauTheoNam(int mamau, int nam) throws Exception{
		String query = "SELECT SUM(soluong) FROM NGUOIHIENMAU JOIN LICHSUHIENMAU ON NGUOIHIENMAU.manguoi = LICHSUHIENMAU.manguoi JOIN DOTHIENMAU ON LICHSUHIENMAU.madot = DOTHIENMAU.madot " + 
				"WHERE mamau = ? AND (DOTHIENMAU.madot IN (SELECT madot FROM DOTHIENMAU WHERE YEAR(ngaybatdau) = ?))";
		Connection cn = Database.KetNoi();
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, mamau);
		stmt.setInt(2, nam);
		
		ResultSet rs = stmt.executeQuery();
		int soluong = 0;
		if(rs.next()) {
			soluong = rs.getInt(1);
		}
		stmt.close();
		cn.close();
		return soluong;
	}
	public int getSoLuongMauTheoThangNam(int mamau, int thang, int nam) throws Exception {
		String query = "SELECT SUM(soluong) FROM nguoihienmau JOIN lichsuhienmau ON nguoihienmau.manguoi = lichsuhienmau.manguoi JOIN dothienmau ON lichsuhienmau.madot = dothienmau.madot WHERE mamau = ? AND dothienmau.madot IN" + 
				" (SELECT madot FROM DOTHIENMAU where YEAR(ngaybatdau) = ? and MONTH(ngaybatdau) = ?)";
		Connection cn = Database.KetNoi();
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, mamau);
		stmt.setInt(2, nam);
		stmt.setInt(3, thang);
		
		ResultSet rs = stmt.executeQuery();
		int soluong =0;
		if(rs.next()) {
			soluong = rs.getInt(1);
		}
		stmt.close();
		cn.close();
		return soluong;
	}
}
