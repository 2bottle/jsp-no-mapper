<%@page import="domain.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	ProductVO pvo = (ProductVO)request.getAttribute("pvo");
%>
<body>
	<h1>Modify Page</h1>
	<form action="./update.pd" method="post">
	<input type="hidden" name="pno" value="<%= pvo.getPno()%>">
		<table border="1">
			<tr>
				<th>pno</th>
				<td><%=pvo.getPno() %></td>
			</tr>
			<tr>
				<th>name</th>
				<td><input type="text" name="pname" value="<%=pvo.getPname() %>"></td>
			</tr>
			<tr>
				<th>price</th>
				<td><input type="number" name="price" value="<%=pvo.getPrice() %>"></td>
			</tr>
			<tr>
				<th>reg_date</th>
				<td><%=pvo.getReg_date() %></td>
			</tr>
			<tr>
				<th>made_by</th>
				<td><input type="text" name="made_by" value="<%=pvo.getMade_by() %>"></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">update</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>