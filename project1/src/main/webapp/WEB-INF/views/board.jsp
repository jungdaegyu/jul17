<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!--core태그를 사용하기 위해 써줌-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/board.css">

<p>피 태그입니다.</p>



</head>
<body>
	<h1>보드입니다</h1>
	<img alt="" src="./img/images.png" height="100px">
	
	<a href="./index">index로 가기</a> <!-- -->
	
<table>
	<tr class= "td3">
		<td>번호</td>
		<td>제목</td>
		<td>글쓴이</td>
		<td>날짜</td>
		<td>좋아요</td>
	</tr>
	
	<c:forEach items="${list}" var="row">
	<!--onclick 자바스크립트 페이지 이동, URL?파라미터=값  -->
		<tr onclick="location.href='./detail?bno=${row.bno}'">
			<td class="td1">${row.bno }</td>
			<td class="title">${row.btitle }</td>
			<td class="td1">${row.bwrite }</td>
			<td class="td2">${row.bdate }</td>
			<td class="td1">${row.blike }</td>	
		</tr>
	</c:forEach>
	

</table>	
</body>
</html>