<%@ page import="com.huucuong.Util.SecurityUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="#">feane</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbi67arResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="<c:url value = '/trang-chu'/>">Home
						<span class="sr-only">(current)</span>
				</a></li>
				
				<security:authorize access = "isAnonymous()">
					<li class="nav-item"><a class="nav-link" href="<c:url value='/dang-nhap'/>">Log in</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Sign up</a></li>
				</security:authorize>
				
				<security:authorize access = "isAuthenticated()">
					<li class="nav-item"><a class="nav-link" href="#"><%=SecurityUtils.getPrincipal().getFullName()%></a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value = '/thoat'/>">Log Out </a></li>
				</security:authorize>
				
			</ul>
		</div>
	</div>
</nav>

