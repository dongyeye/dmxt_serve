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
                <a class="active-menu waves-effect waves-dark" href="home"><i class="fa fa-dashboard"></i> Dashboard</a>
            </li>
            <li>
                <a href="student" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 学生管理</a>
            </li>
            <li>
                <a href="teacher" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 老师管理</a>
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
<%--页面主内容--%>
<div id="page-wrapper">
    <div class="header">
        <h1 class="page-header">
            Dashboard
        </h1>
        <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Data</li>
        </ol>

    </div>
    <div id="page-inner">

        <div class="dashboard-cards">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image red">
                            <i class="material-icons dp48">import_export</i>
                        </div>
                        <div class="card-stacked red">
                            <div class="card-content">
                                <h3>84,198</h3>
                            </div>
                            <div class="card-action">
                                <strong>REVENUE</strong>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image orange">
                            <i class="material-icons dp48">shopping_cart</i>
                        </div>
                        <div class="card-stacked orange">
                            <div class="card-content">
                                <h3>36,540</h3>
                            </div>
                            <div class="card-action">
                                <strong>SALES</strong>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image blue">
                            <i class="material-icons dp48">equalizer</i>
                        </div>
                        <div class="card-stacked blue">
                            <div class="card-content">
                                <h3>24,225</h3>
                            </div>
                            <div class="card-action">
                                <strong>PRODUCTS</strong>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="card horizontal cardIcon waves-effect waves-dark">
                        <div class="card-image green">
                            <i class="material-icons dp48">supervisor_account</i>
                        </div>
                        <div class="card-stacked green">
                            <div class="card-content">
                                <h3>88,658</h3>
                            </div>
                            <div class="card-action">
                                <strong>VISITS</strong>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- /. ROW  -->
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-7">
                <div class="cirStats">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="card-panel text-center">
                                <h4>Profit</h4>
                                <div class="easypiechart" id="easypiechart-blue" data-percent="82" ><span class="percent">82%</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="card-panel text-center">
                                <h4>No. of Visits</h4>
                                <div class="easypiechart" id="easypiechart-red" data-percent="46" ><span class="percent">46%</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="card-panel text-center">
                                <h4>Customers</h4>
                                <div class="easypiechart" id="easypiechart-teal" data-percent="84" ><span class="percent">84%</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-6">
                            <div class="card-panel text-center">
                                <h4>Sales</h4>
                                <div class="easypiechart" id="easypiechart-orange" data-percent="55" ><span class="percent">55%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/.row-->
        </div>




        <!-- /. ROW  -->





        <div class="row">
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="card"><div class="card-action">
                    <b>Tasks Panel</b>
                </div>
                    <div class="card-image">
                        <div class="collection">
                            <a href="#" class="collection-item">Red<span class="new badge red" data-badge-caption="red">4</span></a>
                            <a href="#" class="collection-item">Blue<span class="new badge blue" data-badge-caption="blue">4</span></a>
                            <a href="#" class="collection-item"><span class="badge">1</span>Alan</a>
                            <a href="#" class="collection-item"><span class="new badge">4</span>Alan</a>
                            <a href="#" class="collection-item">Alan<span class="new badge blue" data-badge-caption="blue">4</span></a>
                            <a href="#" class="collection-item"><span class="badge">14</span>Alan</a>
                            <a href="#" class="collection-item">Custom Badge Captions<span class="new badge" data-badge-caption="custom caption">4</span></a>
                            <a href="#" class="collection-item">Custom Badge Captions<span class="badge" data-badge-caption="custom caption">4</span></a>
                        </div>
                    </div>

                </div>

            </div>
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="card-action">
                        <b>User List</b>
                    </div>
                    <div class="card-image">
                        <ul class="collection">
                            <li class="collection-item avatar">
                                <i class="material-icons circle green">track_changes</i>
                                <span class="title">Title</span>
                                <p>First Line <br>
                                    Second Line
                                </p>
                                <a href="#" class="secondary-content"><i class="material-icons">grade</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <i class="material-icons circle">folder</i>
                                <span class="title">Title</span>
                                <p>First Line <br>
                                    Second Line
                                </p>
                                <a href="#" class="secondary-content"><i class="material-icons">grade</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <i class="material-icons circle green">track_changes</i>
                                <span class="title">Title</span>
                                <p>First Line <br>
                                    Second Line
                                </p>
                                <a href="#" class="secondary-content"><i class="material-icons">grade</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <i class="material-icons circle red">play_arrow</i>
                                <span class="title">Title</span>
                                <p>First Line <br>
                                    Second Line
                                </p>
                                <a href="#" class="secondary-content"><i class="material-icons">grade</i></a>
                            </li>
                        </ul>
                    </div>
                </div>



            </div>
        </div>
        <!-- /. ROW  -->
        <div class="fixed-action-btn horizontal click-to-toggle">
            <a class="btn-floating btn-large red">
                <i class="material-icons">menu</i>
            </a>
            <ul>
                <li><a class="btn-floating red"><i class="material-icons">track_changes</i></a></li>
                <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a></li>
                <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
                <li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
            </ul>
        </div>

        <footer><p>All right reserved. Template WebThemez.com.  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>>


        </footer>
    </div>
    <!-- /. PAGE INNER  -->
</div>
</div>
<%--js--%>
<jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="true" />
<%--结尾标签--%>
</body>
</html>
