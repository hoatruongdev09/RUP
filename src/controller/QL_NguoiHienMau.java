package controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Mau;
import bean.NguoiHienMau;
import bo.MauBO;
import bo.NguoiHienMauBO;

/**
 * Servlet implementation class QL_NguoiHienMau
 */
@WebServlet("/QL_NguoiHienMau")
public class QL_NguoiHienMau extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NguoiHienMauBO nhmauBO;
	private MauBO mauBO;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QL_NguoiHienMau() {
        super();
        nhmauBO = new NguoiHienMauBO();
        mauBO = new MauBO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int sortOrder = 1;
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
			ArrayList<NguoiHienMau> listNguoi = nhmauBO.listNguoiHienMau();
			ArrayList<Mau> listMau = mauBO.listMau();
			request.setAttribute("listMau", listMau);
			request.setAttribute("listNguoi", listNguoi);
			//response.getWriter().append("so nguoi: " + listNguoi.size());
			request.getRequestDispatcher("QL_NguoiHienMau.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String error="";
		boolean isError = false;
		if(request.getParameter("delete") != null) {
			int idNguoi = Integer.parseInt(request.getParameter("idNguoi"));
			//response.getWriter().append("id nguoi: " + idNguoi);
			try {
				nhmauBO.xoaNguoiHienMau(idNguoi);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				isError = true;
				//error = e.getMessage();
				//error = "Không thể xóa người này, lý do: người này đã từng hiến máu 1 hoặc nhiều lần !";
				error = e.toString();
				e.printStackTrace();
			}
			if(isError) {
				request.setAttribute("error", error);
			}
			doGet(request, response);
		}
		
		if(request.getParameter("Xem") != null) {
			//response.getWriter().append("Xem");
			int idNguoi = Integer.parseInt(request.getParameter("idNguoi"));
			try {
				NguoiHienMau nhm = nhmauBO.getNguoiHienMau(idNguoi);
				Mau mau = mauBO.getMau(nhm.getMaMau());
				ArrayList<Mau> listMau = mauBO.listMau();
				request.setAttribute("listMau", listMau);
				request.setAttribute("mau", mau);
				request.setAttribute("nhm", nhm);
				request.getRequestDispatcher("INFO_NguoiHienMau.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		if(request.getParameter("add") != null) {
			String hoten = request.getParameter("hoten");
			String gioitinh = request.getParameter("gioitinh");
			String ngaysinh = request.getParameter("ngaysinh");
			String sodienthoai = request.getParameter("sodienthoai");
			String diachi = request.getParameter("diachi");
			int nhommau = Integer.parseInt(request.getParameter("nhommau"));
			String motathem = request.getParameter("motathem");
			
			SimpleDateFormat simpleday = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date utilDate;
			 java.sql.Date sqlDate = null;
			try {
				utilDate = simpleday.parse(ngaysinh);
				sqlDate = new java.sql.Date(utilDate.getTime());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				nhmauBO.themNguoiHienMau(hoten, gioitinh, sqlDate, sodienthoai, diachi, nhommau, motathem);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				//isError = true;
				error = e.getMessage();
				e.printStackTrace();
			}
//			if(isError) {
//				request.setAttribute("error", error);
//			}
			//response.getWriter().append(error);
			doGet(request, response);
		}
		if(request.getParameter("search") != null){
			ArrayList<NguoiHienMau> listNguoi = new ArrayList<NguoiHienMau>();
			
			String value = request.getParameter("value");
			response.getWriter().append("value: " + value);
			try {
				listNguoi = nhmauBO.timNguoiHienMau(value);
				ArrayList<Mau> listMau = mauBO.listMau();
				request.setAttribute("listMau", listMau);
				request.setAttribute("listNguoi", listNguoi);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//response.getWriter().append("so nguoi: " + listNguoi.size());
			request.getRequestDispatcher("QL_NguoiHienMau.jsp").forward(request, response);
		}
		if(request.getParameter("update") != null) {
			int manguoi = Integer.parseInt(request.getParameter("idNguoi"));
			String hoten = request.getParameter("hoten");
			String gioitinh = request.getParameter("gioitinh");
			String ngaysinh = request.getParameter("ngaysinh");
			String sodienthoai = request.getParameter("sodienthoai");
			String diachi = request.getParameter("diachi");
			int nhommau = Integer.parseInt(request.getParameter("nhommau"));
			String motathem = request.getParameter("motathem");
			
			SimpleDateFormat simpleday = new SimpleDateFormat("yyyy-MM-dd");
			java.util.Date utilDate;
			 java.sql.Date sqlDate = null;
			try {
				utilDate = simpleday.parse(ngaysinh);
				sqlDate = new java.sql.Date(utilDate.getTime());
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//response.getWriter().append(manguoi +"; "+hoten+"; " + gioitinh+"; "+ngaysinh+"; " + sodienthoai +"; "+ diachi+"; "+nhommau+"; " + motathem);
			try {
				
				nhmauBO.capnhatNguoiHienMau(manguoi, hoten, gioitinh, sqlDate, sodienthoai, diachi, nhommau, motathem);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				NguoiHienMau nhm = nhmauBO.getNguoiHienMau(manguoi);
				Mau mau = mauBO.getMau(nhm.getMaMau());
				ArrayList<Mau> listMau = mauBO.listMau();
				request.setAttribute("listMau", listMau);
				request.setAttribute("mau", mau);
				request.setAttribute("nhm", nhm);
				request.getRequestDispatcher("INFO_NguoiHienMau.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
