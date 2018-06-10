<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Target Material Design Bootstrap Admin Template</title>
    <%--css--%>
    <jsp:include page="/WEB-INF/jsp/include/head.jsp" flush="true" />
</head>
<body>
<div id="wrapper">
<%--顶部--%>
<%@include file="../include/top.jsp"%>
<%--侧边菜单--%>
<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">

            <li>
                <a class="waves-effect waves-dark" href="home"><i class="fa fa-dashboard"></i> Dashboard</a>
            </li>
            <li>
                <a href="student" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 学生管理</a>
            </li>
            <li>
                <a href="teacher" class="active-menu waves-effect waves-dark"><i class="fa fa-desktop"></i> 老师管理</a>
            </li>
            <li>
                <a href="ui-elements" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> UI Elements</a>
            </li>
            <li>
                <a href="chart" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> Charts</a>
            </li>
            <li>
                <a href="tab-panel" class="waves-effect waves-dark"><i class="fa fa-qrcode"></i> Tabs & Panels</a>
            </li>

            <li>
                <a href="table" class="waves-effect waves-dark"><i class="fa fa-table"></i> Responsive Tables</a>
            </li>
            <li>
                <a href="form" class="waves-effect waves-dark"><i class="fa fa-edit"></i> Forms </a>
            </li>


            <li>
                <a href="#" class="waves-effect waves-dark"><i class="fa fa-sitemap"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#">Second Level Link</a>
                    </li>
                    <li>
                        <a href="#">Second Level Link</a>
                    </li>
                    <li>
                        <a href="#">Second Level Link<span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                                <a href="#">Third Level Link</a>
                            </li>
                            <li>
                                <a href="#">Third Level Link</a>
                            </li>
                            <li>
                                <a href="#">Third Level Link</a>
                            </li>

                        </ul>

                    </li>
                </ul>
            </li>
            <li>
                <a href="empty" class="waves-effect waves-dark"><i class="fa fa-fw fa-file"></i> Empty Page</a>
            </li>
        </ul>

    </div>

</nav>
<div id="page-wrapper" >
    <div class="header">

    </div>

    <div id="page-inner">

    </div>
    <!-- /. PAGE INNER  -->
</div>
</div>
<%--js--%>
<jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="true" />
<%--结尾标签--%>
</body>
</html>