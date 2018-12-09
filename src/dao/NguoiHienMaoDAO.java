package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.NguoiHienMau;
import config.Database;

public class NguoiHienMaoDAO {
	public ArrayList<NguoiHienMau> timNguoiHienMau(String value) throws Exception {
		int id = -1;
		try {
			id = Integer.parseInt(value);
		}catch (NumberFormatException e) {
			// TODO: handle exception
		}
		
		ArrayList<NguoiHienMau> list = new ArrayList<NguoiHienMau>();
		String query = "select * FROM NGUOIHIENMAU WHERE (manguoi = ? OR hoten LIKE ?)";
		Connection cn = Database.KetNoi();
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, id);
		stmt.setString(2, "%"+value+"%");
		//stmt.setString(3, value);
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
	public void capnhatNguoiHienMau(int manguoi, String hoten, String gioitinh, Date ngaysinh, String sodienthoai, String diachi, int mamau, String motathem) throws Exception {
		String query = "UPDATE NGUOIHIENMAU SET mamau = ?, hoten = ?, gioitinh = ?, sodienthoai = ?, diachi = ?, ngaysinh = ?, motathem = ? WHERE manguoi = ?";
		Connection cn = Database.KetNoi();
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, mamau);
		stmt.setString(2, hoten);
		stmt.setString(3, gioitinh);
		stmt.setString(4, sodienthoai);
		stmt.setString(5, diachi);
		stmt.setDate(6, ngaysinh);
		stmt.setString(7, motathem);
		stmt.setInt(8, manguoi);
		stmt.executeQuery();
		stmt.close();
		cn.close();
	}
	public void themNguoiHienMau(String hoten, String gioitinh, Date ngaysinh,String sodienthoai, String diachi, int mamau, String motathem) throws Exception {
		String query = "INSERT NGUOIHIENMAU( mamau, hoten, gioitinh, sodienthoai, diachi, ngaysinh, motathem) VALUES ( ?, ?, ?, ?, ?, ? , ?)";  
		Connection cn = Database.KetNoi();
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, mamau);
		stmt.setString(2, hoten);
		stmt.setString(3, gioitinh);
		stmt.setString(4, sodienthoai);
		stmt.setString(5, diachi);
		stmt.setDate(6, ngaysinh);
		stmt.setString(7, motathem);
		//System.out.println(ngaysinh.toString());
		stmt.executeQuery();
		stmt.close();
		cn.close();
				
	}
	public void xoaNguoiHienMau(int idNguoi) throws Exception {
		String query = "DELETE FROM NGUOIHIENMAU WHERE NGUOIHIENMAU.manguoi = ?";
		Connection cn = Database.KetNoi();
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, idNguoi);
		stmt.executeQuery();
		stmt.close();
		cn.close();
	}
	public NguoiHienMau getNguoiHienMau(int idNguoi) throws Exception {
		String query = "SELECT NGUOIHIENMAU.* FROM NGUOIHIENMAU WHERE NGUOIHIENMAU.manguoi = ?";
		Connection cn = Database.KetNoi();
		PreparedStatement stmt = cn.prepareStatement(query);
		stmt.setInt(1, idNguoi);
		ResultSet rs = stmt.executeQuery();
		NguoiHienMau tmp = null;
		while(rs.next()) {
			tmp = new NguoiHienMau(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getString(8));
		}
		stmt.close();
		cn.close();
		return tmp;
	}
	public ArrayList<NguoiHienMau> listNguoiHienMau() throws Exception{
		ArrayList<NguoiHienMau> list = new ArrayList<NguoiHienMau>();
		String query = "SELECT NGUOIHIENMAU.* FROM NGUOIHIENMAU";
		Connection cn = Database.KetNoi();
		PreparedStatement stmt = cn.prepareStatement(query);
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
