<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="bean.NguoiHienMau"%>
<%@page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
    <%
  		ArrayList<NguoiHienMau> listNguoi = (ArrayList<NguoiHienMau>)request.getAttribute("listNguoi");
  		for(int i =0;i<listNguoi.size();i++){%>
  			<tr>
			<th scope="row"><%=i+1 %></th>
			<td colspan="2"><%=listNguoi.get(i).getHoTen() %></td>
		</tr>
  	<%	}
  %>
</body>
</html>
 