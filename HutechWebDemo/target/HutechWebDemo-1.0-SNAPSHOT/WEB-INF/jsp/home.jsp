<%-- 
    Document   : home
    Created on : Mar 22, 2021, 7:18:23 PM
    Author     : duonghuuthanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"  
    uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1 style="color:red">${message}</h1>
        <form:form method="post" 
                   action="/HutechWebDemo/cate"
                   modelAttribute="category">
            <span>Id</span>
            <form:input id="cateId" path="id"></form:input>
            <br />
            <span>Name</span>
            <form:input id="nameId" path="name"></form:input>
            <br />
            <input type="submit" value="SEND" />
        </form:form>
    </body>
</html>
