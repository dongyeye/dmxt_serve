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
                <a href="home" class="waves-effect waves-dark"><i class="fa fa-dashboard"></i> Dashboard</a>
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
                <a href="chart" class="active-menu waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> Charts</a>
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
                        <a href="#" class="waves-effect waves-dark">Second Level Link<span class="fa arrow"></span></a>
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
                             Charts 
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Charts</a></li>
					  <li class="active">Data</li>
					</ol> 
									
		</div>
            <div id="page-inner"> 
             
                <div class="row"> 
                    
                      
                               <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="card">
                        <div class="card-action">
                            Bar Chart
                        </div>
                        <div class="card-content">
                            <div id="morris-bar-chart"></div>
                        </div>
                    </div>            
                </div>
                      <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="card">
                        <div class="card-action">
                            Area Chart
                        </div>
                        <div class="card-content">
                            <div id="morris-area-chart"></div>
                        </div>
                    </div>            
                </div> 
                
           </div>
                 <!-- /. ROW  -->
                <div class="row">                     
                      
                               <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="card">
                        <div class="card-action">
                            Line Chart
                        </div>
                        <div class="card-content">
                            <div id="morris-line-chart"></div>
                        </div>
                    </div>            
                </div>
                      <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="card">
                        <div class="card-action">
                            Donut Chart
                        </div>
                        <div class="card-content">                            
							<div id="morris-donut-chart"></div>
                        </div>
                    </div>            
                </div> 
                
           </div>
                 <!-- /. ROW  -->
				 <footer><p>All right reserved. Template WebThemez.com.  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>></footer>
				</div>
             <!-- /. PAGE INNER  -->
            </div>
</div>
<%--js--%>
<jsp:include page="/WEB-INF/jsp/include/footer.jsp" flush="true" />
<%--结尾标签--%>
</body>
</html>


