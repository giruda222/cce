<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="insertAccount">

		Account Number :<input type="text" name="a_no"><br/>
		Member Number  :<input type="text" name="m_no"><br/>
		Account Balance :<input type="text" name="a_bal"> <input type="submit">
	</form>

	<form action="ipgum">
		Account Number :<input type="text" name="a_no"><br/>
		Member Number  :<input type="text" name="m_no"><br/>
		Account Balance :<input type="text" name="a_bal"> 
		<input type="submit">
	</form>

	<form action="chulgum">

		Account Number :<input type="text" name="a_no"><br/> 
		Member Number  :<input type="text" name="m_no"><br/> 
		Account Balance :<input type="text" name="a_bal"> 
		<input type="submit">
	</form>


	<form action="deleteCbal">
		Account Number :<input type="text" name="productNo" value="4"><br/> 
		current quantity  :<input type="text" name="accountNo" value="123213213"><br/> 
		<input type="submit">
	</form>
	
	<form action="insertCbal">
		Account Number :<input type="text" name="a_no"><br/> 
		current quantity  :<input type="text" name="m_no"><br/> 
		c_avg :<input type="text" name="a_bal"> 
		<input type="submit">
	</form>


</body>
</html>