<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<jsp:include page="/WEB-INF/views/layout/header.jsp" />  


<script type="text/javascript"
   src=https://code.jquery.com/jquery-2.2.4.min.js></script>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
    <script>
    window.onload = function(){
       ck = CKEDITOR.replace("editor");
    };
    </script>

<script type="text/javascript">
$(document).ready(function() {
	
	//작성버튼 동작
	$("#btnWrite").click(function() {
		//스마트에디터의 내용을 <textarea>에 적용
		submitContents($("#btnWrite"));
		
		$("form").submit();
	});
	
	//취소버튼 동작
	$("#btnCancel").click(function() {
		history.go(-1);
	});
});


</script>

<script>
    var editorConfig = {
        filebrowserUploadUrl : "/ckEditor/imgUpload", //이미지 업로드
    };

    CKEDITOR.on('dialogDefinition', function( ev ){
        var dialogName = ev.data.name;
        var dialogDefinition = ev.data.definition;

        switch (dialogName) {
            case 'image': //Image Properties dialog
            //dialogDefinition.removeContents('info');
            dialogDefinition.removeContents('Link');
            dialogDefinition.removeContents('advanced');
            break;
        }
    });
 window.onload = function(){
      ck = CKEDITOR.replace("editor", editorConfig);
 };
</script>

<style type="text/css">
#contents {
	width: 95%;
}
#write_head{
	background-color: #343a40;
	border: 1px solid black;
	max-width: 95%;
	height: 45px;
	text-align: center;
	color: white;
	padding: 6px;
}

#contentsarea{
	width: 800px;
	height:600px;
	border: 1px solid black;
}
</style>



<div class="container container-fluid" style="margin-bottom: 600px">

<h1>WRITE</h1>
<hr>

<form action="/board/write" method="post">
<div id = "write_head" class="col-xs-12 col-sm-6 col-md-8">
<span style="">필수 입력 사항</span>
</div><br>
<label for="title"><b> 제목 </b></label><br>
<input id="title" name="title" type="text" size="125" placeholder="제목을 입력하세요."/>
<br>
<label for="performdate"> <b>일시 </b></label><br>
<input id="performdate" name="performdate" type="text" size="125" placeholder="입력 양식 : 2019 - 12 - 25"/>
<br>
<label for="performname"> <b>게시물 카테고리 </b></label><br>

<div id = "performradio">
<span class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="performname" value="버스킹" checked>
    버스킹
  </label>
</span>
<span class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="performname" value="전시회">
    전시회
  </label>
</span>
<span class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="performname" value="연극">
    연극
  </label>
</span>
<span class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="performname" value="뮤지컬">
   뮤지컬
  </label>
</span>
<span class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="performname" value="행사">
    행사
  </label>
</span>
<span class="radio">
  <label>
    <input type="radio" name="optionsRadios" id="performname" value="축제">
    축제
  </label>
</span>

</div>
<br>
<label for="contents"> <b>상세내용 </b></label><br>

<div id = "contentsarea">
<textarea id="contents" name="contents"></textarea>
<script type="text/javascript">
 CKEDITOR.replace('contents', {height: 400});
</script>

</div>


<br>
첨부파일 <input type="file" name="file" />


</form>


<div class="text-center">	
	<button type="button" id="btnWrite" class="btn btn-info">작성</button>
	<button type="button" id="btnCancel" class="btn btn-danger">취소</button>
</div>



</div> <!-- div_container -->

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
