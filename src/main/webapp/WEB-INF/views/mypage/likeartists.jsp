<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<style type="text/css">
#likeartistsheader {
	margin-bottom: 3%; 
	margin-top: 3%; 
	margin-left: 30%;
	margin-right: 30%;
	border: 1px solid #ccc;
	padding-top: 2%;
	padding-bottom: 2%;
}
</style>

<div class="container">
	<div class="container text-center">
		<h4 id="likeartistsheader">${usernick } 님이 팔로우한 예술인</h4>
	</div>
</div>

<div class="container" style="margin-top: 50px;">
	<div class="innercon2" style="width: 700px; margin: 0 auto;">
		<br>
		<form action="/mypage/likeartists" method="get">
			<table class="table table-hover">
				<thead>
					<tr class = "info" style="text-align: center;" >
						<th style="width: 30%">번호</th>
						<th style="width: 70%">팔로우한 예술인</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${followlist }" var="followlist">
						<tr style="text-align: center;">
							<td>${followlist.RNUM }</td>
							<td>${followlist.USERNICK }</td>
						</tr>
					</c:forEach>
				</tbody>
				
			</table>
		</form>
	</div>
	
	<div style="text-align: center; margin-bottom:40px; margin-top:40px;">
		<button type="button" class="btn btn-secondary" onclick="location.href='/mypage/main';">돌아가기</button>
	</div>
	
	<jsp:include page="/WEB-INF/views/layout/mypaging.jsp"/>
</div> <!-- container -->

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />    