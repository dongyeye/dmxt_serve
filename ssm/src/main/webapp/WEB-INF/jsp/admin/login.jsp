<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>点名系统后台管理</title>
  <!-- Bootstrap core CSS-->
  <link href="${basePath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${basePath}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="${basePath}/resources/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">点名系统后台管理</div>
      <div class="card-body">
        <form action="/admin/checkLogin" method="post">
          <div class="form-group">
            <label for="exampleInputUsername">用户名</label>
            <input class="form-control" id="exampleInputUsername" name="account_number" type="text"   required autofocus>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword">密码</label>
            <input class="form-control" id="exampleInputPassword" name="login_credent" type="password"  required>
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox">忘记密码？</label>
            </div>
          </div>
          <button class="btn btn-primary btn-block" type="submit">登录</button>
        </form>
        <%--<div class="text-center">--%>
          <%--<a class="d-block small mt-3" href="register.jsp">Register an Account</a>--%>
          <%--<a class="d-block small" href="forgot-password.jsp">Forgot Password?</a>--%>
        <%--</div>--%>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="${basePath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${basePath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="${basePath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
