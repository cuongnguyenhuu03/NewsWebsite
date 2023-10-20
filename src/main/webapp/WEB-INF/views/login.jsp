<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	<div class="container">
		<!-- <h1 class="form-heading">login Form</h1> -->
		<div class="login-form">
			<div class="login-form-content">
				<h3>login to <strong>Feane</strong></h3>

				<span class="login-title">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</span>
				<form action="j_spring_security_check" id="formLogin" method="post">
					<div class="form-group">
                        <label for="userName">Username</label>
						<input type="text" class="form-control" id="userName" name="j_username" placeholder="Username or gmail">
					</div>

					<div class="form-group">
                        <label for="userPassword">Password</label>
						<input type="password" class="form-control" id="password" name="j_password" placeholder="Password">
					</div>

                    <div class="login-item">
                        <div class="remmeber-me">
                            <input type="checkbox" class="input-check">

                            <div class="input-check-block">
                                <i class="gg-check icon-check"></i>
                            </div>
                            <span class="login-item-span">remember me</span>
                        </div>
                        <div class="forgot-password">
                            <span class="login-item-span">forgot password</span>
                        </div>
                    </div>

					<button type="submit" class="btn btn-primary" >Login</button>
				</form>
			</div>
		</div>
		<div class="login-background"></div>
	</div>
</body>
</html>