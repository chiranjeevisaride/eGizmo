<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seller SignUp</title>
<link rel="stylesheet" href="Newmain.css" type="text/css" />
</head>
<body>

	<div id="headerRegister">
		<div id="logo">
			<img src="image/logoN.jpg">
		</div>
		<ul id="menu">
			<li><a href="DemoSeller.jsp">Home</a></li>
			<li><a href="LogoutServlet">Logout</a></li>
		</ul>
	</div>
	<div id="horizBorder"></div>
	<div id="register">
		<%

			String loggedIn = (String) session.getAttribute("loggedIn");
			if (loggedIn == null)
				loggedIn = "";

			if (loggedIn.equals("true")) {
		%>
		<table align='center'>
			<form action='contactBuyerMain.jsp' method='post'>
				<tr align='center'>
					<td colspan='2'><h3>Contact Buyer</h3></td>
				</tr>
				<tr>
					<td>Buyer Name :</td>
					<td><input type='text' name='userName' required="required""></td>
				</tr>
				
				<tr>
					<td>Description :</td>
					<td><textarea name="description" maxlength="1000" rows="10" cols="40" required="required">Comments</textarea></td>
				</tr>
				<tr>
				<td colspan="2" align="center"><input id="Send" type="submit"
					name="Send" value="Send"></td>
			</tr>
			</form>
		</table>
		<%
			}

			else {
		%>
		<%@ include file="sellerLogin.jsp"%>

		<%
			}
		%>
		


	</div>
</body>
</html>