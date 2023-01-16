<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 글 보기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<div class="wrap">
	<header id="header">
		<!-- 헤더 부분 인클루드 -->
	 	<jsp:include page="../include/header.jsp"></jsp:include>
    </header>
	
	<div class="container content" id="content">
	    <div class="row column text-center">
	      <h1 class="h3 mb-3 fw-normal">상세보기</h1>
	      <hr>
	      <div class="container">
		      <table id="tb">
		      	<tbody>
		
		      		<tr>
		      			<th style="background-color:#dcdcdc; width:200px;">글 번호</th>
		      			<td>${dto.seq }</td>
		      		</tr>	
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 제목</th>
		      			<td>${dto.title }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 내용</th>
		      			<td><p>${dto.content }</p></td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">작성자</th>
		      			<td>${dto.nickname }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">작성일시</th>
		      			<td>${dto.regdate }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">읽은 횟수</th>
		      			<td>${dto.visited }</td>
		      		</tr>
		      	</tbody>
		      </table>
				<div class="d-grid gap-2 d-md-flex justify-content-md-start" style="padding-top:15px;">
				  <a class="btn btn-outline-secondary" href="${path1 }/board/list.do">글 목록</a>
				 <c:if test='${sid eq "admin"}'>  
				  <a class="btn btn-outline-secondary" href="${path1 }/board/delete.do?seq=${dto.seq}">글 삭제</a>
				  <a class="btn btn-outline-secondary" href="${path1 }/board/edit.do?seq=${dto.seq}">글 수정</a>
				 </c:if>
				</div>
	      </div>
	    </div>
	</div>
	</div>
   <div class="fixed-bottom">
			<jsp:include page="../include/footer.jsp" />
		</div>
</body>
</html>