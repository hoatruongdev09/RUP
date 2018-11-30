package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.NguoiHienMau;
import bo.NguoiHienMauBO;

/**
 * Servlet implementation class AJAX_NguoiHienMau
 */
@WebServlet("/AJAX_NguoiHienMau")
public class AJAX_NguoiHienMau extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private NguoiHienMauBO nguoihienmauBo; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AJAX_NguoiHienMau() {
        super();
        nguoihienmauBo = new NguoiHienMauBO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int madot = Integer.parseInt(request.getParameter("madot"));
		//response.getWriter().append("Ma dot: " + madot);
		ArrayList<NguoiHienMau> listNguoi = new ArrayList<NguoiHienMau>();
		try {
			listNguoi = nguoihienmauBo.listNguoiHienMauTheoDot(madot);
			request.setAttribute("listNguoi", listNguoi);
			request.getRequestDispatcher("AJAX_ListNguoiHienMau.jsp").forward(request, response);
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
		doGet(request, response);
	}

}
