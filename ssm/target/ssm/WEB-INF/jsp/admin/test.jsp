<%--
  Created by IntelliJ IDEA.
  User: warrior
  Date: 2018/6/1
  Time: 下午7:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <script src="${basePath}/resources/js/jquery-1.12.4.min.js"></script>
    <script>
        $(function(){

            $("#test").click(function(){
                alert("uuuu");
            });
        });

    </script>
</head>
<body>
<button id="test">${basePath}</button>

</body>
</html>
