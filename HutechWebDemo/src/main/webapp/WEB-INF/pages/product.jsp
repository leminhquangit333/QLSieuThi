<%-- 
    Document   : product
    Created on : Mar 29, 2021, 6:58:08 PM
    Author     : duonghuuthanh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"  
    uri="http://www.springframework.org/tags/form" %>

<h1 class="text-center text-danger">QUAN LY SAN PHAM</h1>
<form:form method="POST" 
           action="/HutechWebDemo/admin/add-product" 
           modelAttribute="product">
    
    <form:errors path="*" cssClass="alert alert-danger" element="div" />
    <div class="form-group">
        <label for="name">Tên</label>
        <form:input id="name" 
                    cssClass="form-control" 
                    path="name" />
        <form:errors path="name" cssClass="text-danger" />
    </div>
    <div class="form-group">
        <label for="description">Mô Tả</label>
        <form:input id="description" 
                    cssClass="form-control" 
                    path="description" />
    </div>
    <div class="form-group">
        <label for="price">Giá</label>
        <form:input id="price" 
                    cssClass="form-control" 
                    path="price" />
        <form:errors path="price" cssClass="text-danger" />
    </div>
    <div class="form-group">
        <label for="cate">Danh Mục </label>
        <form:select id="cate" path="category" 
                     cssClass="form-control">
            <c:forEach items="${categories}" var="cat">
                <option value="${cat.id}">${cat.name}</option>
            </c:forEach>
        </form:select>
    </div>
    <div class="form-group">
        <form:hidden path="id" />
        <input type="submit" value="Thêm sản Phẩm"
               class="btn btn-info" />
    </div>
</form:form>


