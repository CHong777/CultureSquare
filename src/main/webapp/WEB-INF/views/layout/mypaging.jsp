<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style type="text/css">
.page-link {
	background: white;
	color: #343a40;
}
.page-item.active .page-link {
	background-color: #343a40;
    border-color: #343a40;
}
</style>

<div style="text-align: center;">
	<ul class="pagination justify-content-center ">
	
   <!-- 처음으로 가기 -->
   <c:if test="${paging.curPage ne 1 }">
   <li><a class="page-link"  href="${url }?curPage=1">&larr;처음</a></li>
   </c:if>
   
   
   <!-- 이전 페이징  리스트로 가기 -->
   <c:if test="${paging.startPage gt paging.pageCount }">
   <li><a class="page-link"  href="${url }?curPage=${paging.startPage - paging.pageCount }">&laquo;</a></li>
   </c:if>
<%--    <c:if test="${paging.startPage le paging.pageCount }"> --%>
<!--    <li class="disabled"><a>&laquo;</a></li> -->
<%--    </c:if> --%>
   
   

   <!-- 이전 페이지로 가기 -->
   <c:if test="${paging.curPage ne 1  }">
   <li><a class="page-link"  href="${url }?curPage=${paging.curPage - 1 }">
   &lt;</a></li>
   </c:if>	
	
	<!-- 각 페이징 리스트 -->
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="i">
		<c:choose>
			<c:when test="${paging.curPage eq i }">
				<li class="page-item active"><a class="page-link" href="${url }?curPage=${i }">${i }</a></li>
			</c:when>
			<c:otherwise>
				<li class="page-item"><a class="page-link" href="${url }?curPage=${i }">${i }</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>	

	<!-- 다음 페이지로 가기 -->
	<c:if test="${paging.curPage ne paging.totalPage }">
	<li><a class="page-link" href="${url }?curPage=${paging.curPage + 1 }">&gt;</a></li>
	</c:if>
	
	<!-- 다음 페이징 리스트로 가기 -->
	<c:if test="${paging.endPage ne paging.totalPage }">
	<li><a class="page-link" href="${url }?curPage=${paging.startPage + paging.pageCount }">&raquo;</a>
	</c:if>
<%-- 	<c:if test="${paging.endPage eq paging.totalPage }"> --%>
<!-- 	<li class="disabled"><a>&raquo;</a></li> -->
<%-- 	</c:if> --%>
	
	<!-- 끝 페이지로 가기 -->
	<c:if test="${paging.curPage ne paging.totalPage }">
	<li><a class="page-link" href="${url }?curPage=${paging.totalPage }">&rarr;끝</a></li>
	
	</c:if>
	
	</ul>	
</div>
    