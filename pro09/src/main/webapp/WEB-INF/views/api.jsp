<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<title>API Test</title>
	
</head>
<body>
	<h2>GET 방식</h2>
	<a href="test1">테스트1</a><br><br>
	<a href="test2/kty/1234">테스트2</a><br><br>
	<a href="test3/kty">테스트3</a><br><br>
	<a href="test4/kty/1234">테스트4</a><br><br>
	<a href="test5/kty">테스트5</a><br><br>
	<hr>
	<a href="list">샘플 목록</a><br><br>
	<a href="user/kty">kty 회원정보</a><br><br>
	
	<hr>
	<h2>POST 방식</h2>
	<form name="addSample" action="add" method="post">
		<input type="text" id="id" name="id" placeholder="id 입력"><br>
		<input type="password" id="pw" name="pw" placeholder="pw 입력"><br><br>
		<input type="submit" value="등록">
	</form>
	<hr>
	<h2>PUT 방식</h2>
	<form name="updateSample" action="update" method="post">
		<input type="hidden" name="_method" value="PUT"/>
		<input type="text" id="id" name="id" value="kty"><br>
		<input type="password" id="pw" name="pw" value="1994"><br><br>
		<input type="submit" value="수정">
	</form>
	<hr>
	<h2>DELETE 방식</h2>
	<form action="delete" method="POST">
		<input type="hidden" name="_method" value="DELETE"/>
		<input type="text" id="id" name="id" value="kty"><br><br>
		<input type="submit" value="삭제">
	</form>
</body>
</html>