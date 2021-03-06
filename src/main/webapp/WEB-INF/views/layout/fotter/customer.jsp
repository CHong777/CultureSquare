<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp" /> 



<br>
<div class="container">

<table class="table" border="1">
  <thead class="thead-dark">
    <tr>
      <th><h3>&nbsp;&nbsp; 고객센터</h3></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
      	<h5>&nbsp;&nbsp;찾아오시는 길</h5>
      </td>
     </tr> 
    <tr>  
      <td>
      
      <a href="https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%EC%97%AD%EC%82%BC%EB%8F%99%20823-23
				/address/14141227.640584733,4508914.003300078,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%EC%97%AD%EC%82%BC%EB%8F%99%20823-23?
      			c=14141058.6430925,4508850.1067217,16,0,0,0,dh">
      			<img src="/resources/img/address.png"  alt="...">
      </a>
      <h5>서울특별시 강남구 역삼동 823-23</h5>
      </td>
    </tr>
    <tr>  
      <td>
      <h5>&nbsp;&nbsp;문의 전화 : 02-000-0000</h5>
      <h5>&nbsp;&nbsp;fax : 02-123-4567</h5>
      </td>
	</tr>
  </tbody>
</table>

</div>	
	
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />       
    
 <!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var d = window.document;
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "7def963c-9c90-44d1-9b0b-5365687610b9"
  });
</script>
<!-- End Channel Plugin -->
