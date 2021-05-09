<%-- 
    Document   : login
    Created on : Apr 12, 2021, 6:54:47 PM
    Author     : duonghuuthanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-center text-info">LOGIN</h1>

<c:if test="${param.error != null}">
    <div class="alert alert-danger">
        Something wrong!!!
    </div>
</c:if>

<c:if test="${param.accessDenied != null}">
    <div class="alert alert-danger">
       Access Denied!!! 
    </div>
</c:if>

<section class="w3l-login">
    <div class="overlay">
        <div class="wrapper">
            <div class="form-section">
                <h3>Đăng Nhập </h3>	
                <c:url value="/login" var="action" />
                <form method="post" action="${action}">
                    <div class="form-input">
                        <input type="text" name="username" placeholder="Tên tài khoản" required="" autofocus>
                    </div>
                    <div class="form-input">
                        <input type="password" name="password" placeholder="Mật khẩu" required="">
                    </div>
                    <button type="submit" class="btn btn-dark">Đăng nhập</button>
                </form>
                <p class="signup">Bạn chưa có tài khoản? <a href="<c:url value="/register"/>" class="signuplink">Đăng kí</a></p>
            </div>
        </div>
    </div>

</section>
