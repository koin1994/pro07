<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>질문 및 답변 리스트</title>
	<jsp:include page="../include/head.jsp" />
</head>
<body>
	<div class="wrap">
	<jsp:include page="../include/header.jsp" />
	<div class="container content">
		<h2 class="title" style="text-align:center">묻고 답하기</h2>
		<table class="table table-striped" id="tb">
			<thead>
				<tr>
					<th style="max-width:5px"></th><th>연번</th><th>제목</th><th>작성자</th><th>작성일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${qnaList }" var="vo" varStatus="status">
			<tr>
				<td><span style="color:transparent">${vo.parno }</span></td>
				<td>
					<c:if test="${vo.lev==0}">
						<span  style="color:white">${vo.no }</span>
					</c:if>
					<c:if test="${vo.lev==1}">
						<span>${vo.no }</span>
					</c:if>
				</td>
				<td><a href="./detail.do?no=${vo.no }">${vo.title }</a></td>
				<td>${vo.author }</td>
				<td>
					<fmt:parseDate value="${vo.regdate }" var="regdate" pattern="yyyy-MM-dd HH:mm:ss" />
		      		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
		      	</td>
			</tr>
			</c:forEach>	
			</tbody>	
			
		</table>
		<c:if test='${not empty sid}'>
		<div class="button-group">
				  <a class="btn btn-outline-secondary" href="./insert.do">글쓰기</a>
				</div>
		</c:if>
		</div>
	</div>
	 	<footer id="footer" class="footer-nav row expanded collapse">
	    	<!-- 푸터 부분 인클루드 -->
	    	<jsp:include page="../include/footer.jsp"></jsp:include>
	    </footer>
</body>
</html>