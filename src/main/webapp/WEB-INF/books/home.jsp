<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

	<!-- <link rel="stylesheet" type="text/css" href="/css/style.css"> -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	
	<!-- <script type="text/javascript" src="/js/script.js"></script> -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container-fluid">
		<div class="container mx-auto mt-4">
			<header class="row justify-content-between align-items-center">
				<div class="col-5 text-start">
					<h1 class="display-5">Welcome, ${user.name}</h1>
					<p>Books from everyone's shelves.</p>
				</div>
				<div class="col-5 text-end">
					<a href="/logout" class="nav-link">Logout</a>
					<a href="/books/new" class="nav-link">Add to My Shelf</a>
				</div>
			</header>
			<main class="row mx-auto mt-3" style="width: 85%;">
				<table class="table table-striped table-bordered">
					<thead class="table-info">
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Author</th>
							<th>Posted By</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="book" items="${books}">
							<tr class="align-middle">
								<td><c:out value="${book.id}" /></td>
								<td><a href="/books/${book.id}" class="nav-link"><c:out value="${book.title}" /></a></td>
								<td><c:out value="${book.author}" /></td>
								<td><c:out value="${book.user.getName()}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</main>
		</div>
	</div>

</body>
</html>