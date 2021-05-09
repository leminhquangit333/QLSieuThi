<%-- 
    Document   : header
    Created on : Mar 29, 2021, 6:37:59 PM
    Author     : duonghuuthanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
    <a class="navbar-brand" href="<c:url value="/" />"><img src="<c:url value="/resources/images/Shop.png" />" height="100" width="100" ></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item text-info">
                <a class="nav-link" href="<c:url value="/" />">Trang Chủ <span class="sr-only">(current)</span></a>
            </li>
            <c:forEach items="${categories}" var="cate">
                <li class="nav-item ">
                    <a class="nav-link" 
                       href="<c:url value="/?cateId=${cate.id}" />">${cate.name}</a>
                </li>
            </c:forEach>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="/cart" />">
                    Giỏ hàng <span class="badge badge-info" id="cart-quantity">${cartStat.totalQuantity}</span>
                </a>
            </li>
            <c:choose>
                <c:when test="${pageContext.request.userPrincipal.name == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/login" />">
                            Đăng Nhập
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/register" />">
                            Đăng Ký
                        </a>
                    </li>
                </c:when>
                <c:when test="${pageContext.request.userPrincipal.name != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            ${pageContext.request.userPrincipal.name}
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/logout" />">
                            Đăng Xuất
                        </a>
                    </li>
                </c:when>
            </c:choose>

        </ul>
    </div>
</nav>