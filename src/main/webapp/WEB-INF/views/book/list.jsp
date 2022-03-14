<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="/WEB-INF/views/inc/head.jsp"/>
	<style>
		@keyframes shake{
			20%{
				transform:translate(-5px, 0);
			}
			40%{
				transform:translate(10px, 0);
			}
			60%{
				transform:translate(-10px, 0);
			}
			80%{
				transform:translate(10px, 0);
			}
			100%{
				transform:translate(-5px, 0);
			}
		}
		
		.shake:hover{
			animation-name:shake;
			animation-duration:0.5s;
			transition: all;
		}
	</style>
</head>
<body>
	<div>
		<img class="shake" alt="모야호~~!" src="/kopo/res/moyaho.png">
		<h1>도서목록</h1>
		<div>
			<table border="1">
				<thead>
					<tr>
						<th>도서번호</th>
						<th>도서명</th>
						<th>출판사</th>
						<th>가격</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size() == 0}">
						<tr>
							<td colspan="5">등록 된 도서가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach items="${list}" var="item">
						<tr>
							<td>${item.bookid}</td>
							<td>${item.bookname}</td>
							<td>${item.publisher}</td>
							<td>${item.price}</td>
							<td><a href="update/${item.bookid}">수정</a> <a href="delete/${item.bookid}">삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div><a href="add">등록</a></div>
	</div>
</body>
</html>