<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>메인페이지</title>
	<!-- 헤드 부분 인클루드 -->
    <jsp:include page="include/head.jsp"></jsp:include>
</head>
<body>
	<header id="header">
			<!-- 헤더 부분 인클루드 -->
		 <jsp:include page="include/header.jsp"></jsp:include>
	</header>
<div class="container px-4 px-lg-5 nimg">
 <section class="slider-three">
    <div class="container">
    <div class="slider-items-wrapper">
        <div class="row slider-items-active">
          <div class="col-lg-4">
            <div class="single-items-one">
              <img src="https://www.mss.go.kr/common/board/ThumbnailPopupZone.do?mzIdx=MZ01000510&width=460&height=350" alt="Image" />
            </div>
            <!-- single-items-one -->
          </div>
          <div class="col-lg-4">
            <div class="single-items-one">
              <img src="https://www.mss.go.kr/common/board/ThumbnailPopupZone.do?mzIdx=MZ01000921&width=460&height=350" alt="Image" />
            </div>
            <!-- single-items-one -->
          </div>
          <div class="col-lg-4">
            <div class="single-items-one">
              <img src="https://www.mss.go.kr/common/board/ThumbnailPopupZone.do?mzIdx=MZ01000960&width=460&height=350" alt="Image" />
            </div>
            <!-- single-items-one -->
          </div>
          <div class="col-lg-4">
            <div class="single-items-one">
              <img src="https://www.mss.go.kr/common/board/ThumbnailPopupZone.do?mzIdx=MZ01000951&width=460&height=350" alt="Image" />
            </div>
            <!-- single-items-one -->
          </div>
        </div>
        <!-- row -->
      </div>
    </div>
    <!-- container -->
  </section>
<script src="https://cdn.ayroui.com/1.0/js/tiny-slider.js"></script>
<script>
      
      tns({
         autoplay: true,
         autoplayButtonOutput: false,
         mouseDrag: true,
         gutter: 0,
         container: ".slider-items-active",
         center: false,
         nav: true,
         navPosition: "bottom",
         controls: false,
         speed: 400,
         controlsText: [
            '<i class="lni lni-arrow-left-circle"></i>',
            '<i class="lni lni-arrow-right-circle"></i>',
         ],
         responsive: {
            0: {
               items: 1,
            },

            768: {
               items: 2,
            },
            992: {
               items: 3,
            },
         },
      });
   </script>
   		<div class="row gx-4 gx-lg-5 align-items-center my-5 nimg">
                <div class="col-lg-4"><img class="img-fluid rounded mb-4 mb-lg-0"
                        src="https://www.mss.go.kr/common/board/Thumbnail.do?bcIdx=1038241&cbIdx=288&streFileNm=772f930a-4add-49a2-9139-a0d7ab94c7ee.png" alt="..." /></div>
                <div class="col-lg-7">
                    <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">공지사항</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>[입찰재공고] 2023년 중소기업 정보시스템 통합 운영 및 유지관리</td>
                            <td>2023-01-03</td>
                          </tr>
                          <tr>
                            <td>우리부 대표 홈페이지 조사통계DB 오프라인 작업 안내</td>
                            <td>2023-01-03</td>
                          </tr>
                          <tr>
                            <td>2023년 중소기업 정보시스템 통합 운영 및 유지관리</td>
                            <td>2023-01-03</td>
                          </tr>
                          <tr>
                            <td>'22년도 인재육성형 중소기업 지정기업 명단 알림</td>
                            <td>2023-01-03</td>
                          </tr>
                          <tr>
                            <td>중소기업 ESG 실천방안 설명회 안내</td>
                            <td>2023-01-03</td>
                          </tr>
                          <tr>
                            <td>2022년 창업기업제품 공공구매 촉진 유공포상 공고(연장)</td>
                            <td>2023-01-03</td>
                          </tr>
                        </tbody>
                      </table>
                </div>
            </div>
       </div>
	<footer id="footer">
	    	<!-- 푸터 부분 인클루드 -->
	    <jsp:include page="include/footer.jsp"></jsp:include>
	</footer>
</body>
</html>
