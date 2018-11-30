package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.DotHienMau;
import bo.DotHienMauBO;

/**
 * Servlet implementation class BC_TungDotHienMau
 */
@WebServlet("/BC_TungDotHienMau")
public class BC_TungDotHienMau extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DotHienMauBO dothienmauBo;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BC_TungDotHienMau() {
        super();
        dothienmauBo = new DotHienMauBO();
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
		try {
			ArrayList<DotHienMau> listDotMain = dothienmauBo.listDotHienmau();
			//request.setAttribute("listDot", listDot);
			
			request.setAttribute("currentSelectDot", -1);
			request.setAttribute("currentSelectThang", -1);
			request.setAttribute("currentSelectNam", -1);
			
			if(request.getParameter("txt_dot") == null && request.getParameter("txt_thang") == null && request.getParameter("txt_nam") == null ) {
				request.setAttribute("listDotMain", listDotMain);
				request.setAttribute("listDot", listDotMain);
				request.getRequestDispatcher("BC_TungDotHienMau.jsp").forward(request, response);
			}
			
			int dot = Integer.parseInt(request.getParameter("txt_dot"));
			int thang = Integer.parseInt(request.getParameter("txt_thang"));
			int nam = Integer.parseInt(request.getParameter("txt_nam"));
			
			request.setAttribute("currentSelectDot", dot);
			request.setAttribute("currentSelectThang", thang);
			request.setAttribute("currentSelectNam", nam);
			
			ArrayList<DotHienMau> listDot= new ArrayList<DotHienMau>();
			listDot = dothienmauBo.search(dot, thang, nam);
			request.setAttribute("listDotMain", listDotMain);
			request.setAttribute("listDot", listDot);
			request.getRequestDispatcher("BC_TungDotHienMau.jsp").forward(request, response);
			
			response.getWriter().append("Dot: " + request.getParameter("txt_dot") +" ; thang: " + request.getParameter("txt_thang") + " ; nam: " + request.getParameter("txt_nam"));
			
			
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
