<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/inc/head.jsp"/>
</head>
<body>
	<div>
		<form method="post">
			<h1>도서 등록</h1>
			<div>
				<label>도서 번호</label>
				<input type="number" name="bookid"/>
			</div>
			<div>
				<label>도서명</label>
				<input type="text" name="bookname"/>
			</div>
			<div>
				<label>출판사</label>
				<input type="text" name="publisher"/>
			</div>
			<div>
				<label>가격</label>
				<input type="number" name="price"/>
			</div>
			<div>
				<button>등록</button>
			</div>
		</form>
	</div>
</body>
</html>