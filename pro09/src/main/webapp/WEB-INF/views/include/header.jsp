<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!-- 헤더 내용 기술 -->
<div class="container">
  <header class="blog-header lh-1 py-3">
    <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1">
        <a class="link-secondary" href="/" ><img src="https://www.mss.go.kr/images/np/bg_logo.png" alt="Logo" width="200px" height="40px"></a>
      </div>
      <div class="col-4 d-flex justify-content-end align-items-center">
      <c:if test="${empty sid }">
      <button type="button" class="btn btn-dark me-md-2"> <a href="${path1 }/member/loginForm.do" style="color:white;">로그인</a></button>
	  <button type="button" class="btn btn-dark"> <a href="${path1 }/member/agree.do" style="color:white;">회원가입</a></button>
	  </c:if>
	  <c:if test="${not empty sid }">  
      <button type="button" class="btn btn-dark me-md-2"> <a href="${path1 }/member/logout.do" style="color:white;">로그아웃</a></button>
	  <button type="button" class="btn btn-dark me-md-2"> <a href="${path1 }/member/read.do" style="color:white;">회원정보</a></button>
        </c:if>  
        <c:if test='${sid eq "admin"}'>
          <button type="button" class="btn btn-dark"> <a href="${path1 }#" style="color:white;">관리자페이지</a></button>
        </c:if>  
      </div>
    </div>
  </header>
	<hr>
  <nav class="navbar navbar-expand">
	  <div class="container">
	   <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse justify-content-evenly" id="navbarNavDropdown">
	      <ul class="navbar-nav">
	      <div class="hstack gap-5">
	       <li class="nav-item dropdown">
	          <a class="nav-link dropdown " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            기관소개
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">기관소개</a></li>
	            <li><a class="dropdown-item" href="#">연혁</a></li>
	            <li><a class="dropdown-item" href="#">찾아오시는 길</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            알림소식
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">동영상뉴스</a></li>
	            <li><a class="dropdown-item" href="#">보도자료</a></li>
	            <li><a class="dropdown-item" href="#">블로그/SNS</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Dropdown link
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">Action</a></li>
	            <li><a class="dropdown-item" href="#">Another action</a></li>
	            <li><a class="dropdown-item" href="#">Something else here</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Dropdown link
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">Action</a></li>
	            <li><a class="dropdown-item" href="#">Another action</a></li>
	            <li><a class="dropdown-item" href="#">Something else here</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Dropdown link
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">Action</a></li>
	            <li><a class="dropdown-item" href="#">Another action</a></li>
	            <li><a class="dropdown-item" href="#">Something else here</a></li>
	          </ul>
	        </li>
	        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            고객센터
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="${path1 }/board/list.do">공지사항</a></li>
	            <li><a class="dropdown-item" href="${path1 }/qna/list.do">Q&A</a></li>
	            <li><a class="dropdown-item" href="${path1 }/free/list.do">자유게시판</a></li>
	          </ul>
	        </li>
	        
	      </ul>
	    </div>
	  </div>
	</nav>
	<hr>
</div>