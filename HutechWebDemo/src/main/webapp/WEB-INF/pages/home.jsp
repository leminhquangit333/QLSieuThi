<%-- 
    Document   : home
    Created on : Mar 29, 2021, 6:52:55 PM
    Author     : duonghuuthanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"  
           uri="http://www.springframework.org/tags/form" %>
<!--khung tim kiem-->
<form>
    <div class="row">
        <div class="col-md-10 form-group">
            <input type="text" 
                   name="kw"
                   class="form-control" 
                   placeholder="Nhập từ khoá để tìm..." />
        </div>
        <div class="col-md-2">
            <input type="submit" 
                   class="btn btn-info"
                   value="Tìm kiếm" />
        </div>
    </div>
</form>
<h1 class="text-center text-info">${page}</h1>
<div class="row">
    <!-- load product-->
    <c:forEach items="${products}" var="p">
        <div class="col-sm-3">
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="<c:url value="${p.image}"/>"height="250" width="300" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">${p.name}</h5>
                    <p class="card-text">${p.description}</p>
                    <p class="text-primary"><b>${p.price} VNĐ</b></p>
                    <a href="javascript:;" 
                       class="btn btn-primary"
                       onclick="addToCart(${p.id})"
                       >Thêm vào giỏ</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
<script src="<c:url value="/js/main.js" />"></script>