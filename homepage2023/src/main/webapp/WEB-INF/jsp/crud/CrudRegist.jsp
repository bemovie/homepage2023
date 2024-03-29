<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>데이터 가져오기~</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<style>
table{border-collapse: collapse;}
th{font-weight:bold;}
th, td{padding:5px;border:1px solid #000;}
a{text-decoration:underline;margin:5px;}
</style>
</head>
<body>
	
<c:choose>
	<c:when test="${not empty result.crudId}">
		<c:set var="actionUrl" value="/crud/update.do"/>
	</c:when>
	<c:otherwise>
		<c:set var="actionUrl" value="/crud/insert.do"/>
	</c:otherwise>
</c:choose>	

* 등록폼
<form action="${actionUrl}" method="post" name="crudVO">
	<input type="hidden" name="crudId" value="${result.crudId}"/>
	<label for="crudSj">제목</label>
	<input type="text" id="crudSj" name="crudSj" value="${result.crudSj}" palceholder="제목을 입력하세요."/>
	<br/>
	<label for="userNm">작성자</label>
	<input type="text" id="userNm" name="userNm" value="${result.userNm}" palceholder="작성자를 입력하세요."/>
	<br/>
	<label for="crudCn">내용</label>
	<textarea id="crudCn" name="crudCn" palceholder="내용을 입력하세요."><c:out value="${result.crudCn}"/></textarea>
	<br/>
	<c:choose>
		<c:when test="${not empty result.crudId}">
			<button type="submit">수정</button>
		</c:when>
		<c:otherwise>
			<button type="submit">등록</button>
		</c:otherwise>
	</c:choose>
	<a href="/crud/selectList.do">목록</a>
</form>

</body>
</html>