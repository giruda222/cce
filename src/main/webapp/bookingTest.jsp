<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h3>1.Select All Accounts By Member No</h3>
	<form action="getBookinglist">

		Booking Number:<input type="text" name="m_no"> <input
			type="submit">
	</form>

	<h3>2.Select All Accounts By Product No</h3>
	<form action="getBookingListByProductNo">

		Booking Number:<input type="text" name="p_no"> <input
			type="submit">
	</form>

	<h3>3. Booking Insert</h3>
	<form action="updateBooking">
		멤버번호:<input type="text" name="m_no"> </br>
		매수가격:<input type="number" name="b_price"> </br>
		주문수량:<input type="number" name="b_quantity"> </br>
		주문타입:<input type="number" name="b_type"> </br>
		주문총액:<input type="number" name="b_orderPrice"> </br>
		주문상황:<input type="number" name="b_status"></br>
		현재가격:<input type="number" name="live_price"></br>
		<input type="submit">
	</form>

	<h4>4. Booking Update</h4>
	<form action="bookingInsert">
		멤버번호:<input type="text" name="m_no"> </br>
		매수가격:<input type="number" name="b_price"> </br>
		주문수량:<input type="number" name="b_quantity"> </br>
		주문타입:<input type="number" name="b_type"> </br>
		주문총액:<input type="number" name="b_orderPrice"> </br>
		주문상황:<input type="number" name="b_status"></br>
		현재가격:<input type="number" name="live_price"></br>
		<input type="submit">
	</form>


	<h4>4. Booking Delete</h4>
	<form action="deleteBooking">
		<input type="text" name="b_no"> 
		<input type="submit">
	</form>

</body>
</html>