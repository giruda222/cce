<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h3>1.회원가입확인</h3>
<form action="signup">

	id:<input type="text" name="m_id">
	<input type="hidden" name="m_password" value="pw">
	<input type="hidden" name="m_name" value="name">
	<input type="hidden" name="m_email" value="123@naver.com">
	<input type="hidden" name="m_ssn"	value="000000-121212">
	<input type="hidden" name="m_phone"	value="555-123-456">
	<input type="submit">
</form>
</br></br>
<tr>
<td>
<a href="getlist">2.회원정보전체보기</a>
<td>
</tr>

<h3>3.로그인확인</h3>
<form action="index">
<input type="text" name="m_id">
<input type="password" name="m_password">
<input type="submit">
</form>

<h4>4.회원한명 찾기</h4>
<form action="getMember">
<input type="text" name="m_no">
<input type="submit">
</form>

<h4>5.회원 수정</h4>
<form action="updateMember">
	no:<input type="text" name="m_no"></br>
	id:<input type="text" name="m_id"></br>
	pw:<input type="password" name="m_password"></br>
	name:<input type="text" name="m_name" ></br>
	email:<input type="email" name="m_email"></br>
	ssn:<input type="text" name="m_ssn"value="000000-121212"></br>
	phone:<input type="text" name="m_phone"	value="555-123-456"></br>
	<input type="submit">
</form>

<h4>6.회원 삭제</h4>
<form action="deleteMember">
<input type="text" name="m_no">
<input type="submit">
</form>

</body>
</html>