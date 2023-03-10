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
	<title>Insert title here</title>
	<c:set var="path1" value="${pageContext.request.contextPath }" />
	<jsp:include page="../include/head.jsp" />
</head>
<body>
<div class="wrap">
<header>
<jsp:include page="../include/header.jsp" />
</header>
<div class="content container" id="content">
	    <div class="row column text-center">
	      <h1 class="h3 mb-3 fw-normal">Q&A상세글</h1>

	      <hr>
	      <div class="container">
		      <table id="tb">
		      	<tbody>
		      		<tr>
		      			<th style="background-color:#dcdcdc">글 번호</th>
		      			<td>${dto.no }</td>
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
		      			<td>${dto.author }</td>
		      		</tr>
		      		<tr>
		      			<th style="background-color:#dcdcdc">작성일시</th>
		      			<td>${dto.regdate }</td>
		      		</tr>
		      	</tbody>
		      </table>
				<div class="button-group">
				  <a class="btn btn-outline-secondary" href="${path1 }/qna/list.do">글 목록</a>
				  <a class="btn btn-outline-secondary" href="${path1 }/qna/delete.do?no=${dto.no}">글 삭제</a>
				  <a class="btn btn-outline-secondary" href="${path1 }/qna/wright.do?no=${dto.no}">답변 작성</a>
				  <a class="btn btn-outline-secondary" href="${path1 }/qna/edit.do?no=${dto.no}">글 수정</a>
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