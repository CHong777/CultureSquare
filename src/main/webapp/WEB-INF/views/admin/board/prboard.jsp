<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- pr게시판 -->
	<div class="container" style="margin-top: 50px;">
		<div class="innercon2">
			<div class="src" style="text-align: right;">
				<form action="" method="get">
				<input type="text" name="search" id="search"/>
				<button id="btnSearch" class="btn btn-secondary" style="text-align: right;">검색</button>
				</form>
			</div>
			<br>
			<form action="" method="get">
				<table class="table table-hover">
					<thead>
					<tr class = "info"  >
						<th style="width: 5%"><input type="checkbox" id="checkAll"/></th>
						<th style="width: 10%">글번호</th>
						<th style="width: 50%">제목</th>					
						<th style="width: 15%">작성자</th>
						<th style="width: 20%">작성일</th>
					</tr>
					</thead>
					
					<tbody>
					<c:forEach items="${list }" var="comp">
					<tr>
						<td><input type="checkbox" name="checkRow" value="${comp.comp_no  }"/></td>
						<td>${comp.comp_no }</td>
						<td><a href="/mgr/compview?comp_no=${comp.comp_no}">${comp.comp_title }</a></td>
						<td>${comp.userno }</td>
						<td>${comp.comp_date }</td>
					</tr>
					</c:forEach>
					</tbody>
					
				</table>
				<button class="btn btn-secondary">삭제</button>
			</form>
		</div>
	</div> <!-- container -->
