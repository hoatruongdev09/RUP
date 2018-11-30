package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import bean.DotHienMau;
import bean.Mau;
import bo.DotHienMauBO;
import bo.MauBO;

/**
 * Servlet implementation class ThongKe
 */
@WebServlet("/ThongKe")
public class ThongKe extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MauBO maubo;
	private DotHienMauBO dothienmaubo;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThongKe() {
        super();
        // TODO Auto-generated constructor stub
        maubo = new MauBO();
        dothienmaubo = new DotHienMauBO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
			ArrayList<Mau> listMau = maubo.listMau();
			ArrayList<DotHienMau> listDot = dothienmaubo.listDotHienmau();
			request.setAttribute("listDot", listDot);
			//request.setAttribute("listMau",listMau);
			request.setAttribute("currentSelectDot", -1);
			request.setAttribute("currentSelectThang", -1);
			request.setAttribute("currentSelectNam", -1);
			
			
			
			if(request.getParameter("txt_dot") == null && request.getParameter("txt_thang") == null && request.getParameter("txt_nam") == null) {
				request.setAttribute("listMau",listMau);
				request.getRequestDispatcher("ThongKe.jsp").forward(request, response);
				response.getWriter().append("list mau so luong: " + listMau.size());
				response.getWriter().append("list dot so luong: " + listDot.size());
			}
			int dot = Integer.parseInt(request.getParameter("txt_dot"));
			int thang = Integer.parseInt(request.getParameter("txt_thang"));
			int nam = Integer.parseInt(request.getParameter("txt_nam"));
			
			request.setAttribute("currentSelectDot", dot);
			request.setAttribute("currentSelectThang", thang);
			request.setAttribute("currentSelectNam", nam);
			
			if(dot == -1 && thang == -1 && nam == -1) {
				request.setAttribute("listMau",listMau);
				request.getRequestDispatcher("ThongKe.jsp").forward(request, response);
				response.getWriter().append("list mau so luong: " + listMau.size());
				response.getWriter().append("list dot so luong: " + listDot.size());
			}
			
			if(dot != -1) {
				listMau = SoLuongMauTheoDot(listMau, dot);
				request.setAttribute("listMau",listMau);
				request.setAttribute("currentSelectThang", -1);
				request.setAttribute("currentSelectNam", -1);
				request.getRequestDispatcher("ThongKe.jsp").forward(request, response);
				response.getWriter().append("list mau so luong: " + listMau.size());
				response.getWriter().append("list dot so luong: " + listDot.size());
			}
			
			if(thang != -1 && nam != -1 ) {
				listMau = SoLuongMauTheoThangNam(listMau, thang, nam);
				request.setAttribute("listMau",listMau);
				request.setAttribute("currentSelectDot", -1);
				request.getRequestDispatcher("ThongKe.jsp").forward(request, response);
				response.getWriter().append("list mau so luong: " + listMau.size());
				response.getWriter().append("list dot so luong: " + listDot.size());
			}
			
			if(nam != -1 && thang == -1 && dot == -1) {
				listMau = SoLuongMauTheoNam(listMau, nam);
				request.setAttribute("listMau",listMau);
				request.setAttribute("currentSelectDot", -1);
				request.setAttribute("currentSelectThang", -1);
				request.getRequestDispatcher("ThongKe.jsp").forward(request, response);
				response.getWriter().append("list mau so luong: " + listMau.size());
				response.getWriter().append("list dot so luong: " + listDot.size());
			}
			
			if(thang != -1 && nam == -1 && dot == -1) {
				request.setAttribute("listMau",listMau);
				request.setAttribute("currentSelectDot", -1);
				request.setAttribute("currentSelectThang", -1);
				request.setAttribute("currentSelectNam", -1);
				request.getRequestDispatcher("ThongKe.jsp").forward(request, response);
				response.getWriter().append("list mau so luong: " + listMau.size());
				response.getWriter().append("list dot so luong: " + listDot.size());
			}
			
			
			
			response.getWriter().append("Dot: " + request.getParameter("txt_dot") +" ; thang: " + request.getParameter("txt_thang") + " ; nam: " + request.getParameter("txt_nam"));
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			response.getWriter().append(e.getMessage());
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public ArrayList<Mau> SoLuongMauTheoDot(ArrayList<Mau> listMau,int maDot) throws Exception{
		ArrayList<Mau> list = (ArrayList<Mau>) listMau.clone();
		for(int i=0;i<list.size();i++) {
			listMau.get(i).setSoLuongMau(maubo.getSoLuongMauTheoDot(list.get(i).getMaMau(), maDot));
		}
		return list;
	}
	public ArrayList<Mau> SoLuongMauTheoThangNam(ArrayList<Mau> listMau, int thang, int nam) throws Exception{
		ArrayList<Mau> list = (ArrayList<Mau>)listMau.clone();
		for(int i =0;i<list.size();i++) {
			list.get(i).setSoLuongMau(maubo.getSoLuongMauTheoThangNam(list.get(i).getMaMau(), thang, nam));
		}
		return list;
	}
	public ArrayList<Mau> SoLuongMauTheoNam(ArrayList<Mau> listMau, int nam) throws Exception{
		ArrayList<Mau> list = (ArrayList<Mau>)listMau.clone();
		for(int i =0;i<list.size();i++) {
			list.get(i).setSoLuongMau(maubo.getSoLuongMauTheoNam(list.get(i).getMaMau(), nam));
		}
		return list;  
	}

}
