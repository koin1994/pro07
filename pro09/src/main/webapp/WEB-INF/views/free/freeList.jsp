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
	<title>자유게시판</title>
	<jsp:include page="../include/head.jsp" />
</head>
<body>
	<div class="wrap">
	<jsp:include page="../include/header.jsp" />
		<div class="container content" id="content">
		    <div class="row column text-center">
		      <h2 class="h1" style="text-align:center;">자유게시판</h2>
		      
		      <div class="container">
		      	   <table class="table" id="tb">
				  <thead>
				    <tr>
				      <th><abbr title="fseq">번호</abbr></th>
				      <th><abbr title="title">제목</abbr></th>
				      <th><abbr title="nickname">이름</abbr></th>
				      <th><abbr title="regdate">작성일</abbr></th>
				    </tr>
				  </thead>
				   <tbody>
				   <c:forEach items="${freeList }" var="dto">
				    <tr>
				      <td>${dto.fseq }</td>
				      <td><a href="./detail.do?fseq=${dto.fseq }">${dto.title }</a></td>
				      <td>${dto.nickname }</td>
				      <td>
				      	<fmt:parseDate value="${dto.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
				      	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
				    </tr>
				    </c:forEach>
				  </tbody>
				</table>
				<div class="button-group">
				  <a class="btn btn-outline-secondary" href="./insert.do">글 등록</a>
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