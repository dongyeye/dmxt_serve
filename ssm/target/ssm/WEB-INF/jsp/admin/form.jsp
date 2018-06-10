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
                <a href="chart" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> Charts</a>
            </li>
            <li>
                <a href="tab-panel" class="waves-effect waves-dark"><i class="fa fa-qrcode"></i> Tabs & Panels</a>
            </li>

            <li>
                <a href="table" class="waves-effect waves-dark"><i class="fa fa-table"></i> Responsive Tables</a>
            </li>
            <li>
                <a href="form" class="active-menu waves-effect waves-dark"><i class="fa fa-edit"></i> Forms </a>
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
<div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                             Form Inputs Page
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Forms</a></li>
					  <li class="active">Data</li>
					</ol> 
									
		</div>
		
            <div id="page-inner"> 
			 <div class="row">
			 <div class="col-lg-12">
			 <div class="card">
                        <div class="card-action">
                            Basic Form Elements
                        </div>
                        <div class="card-content">
    <form class="col s12">
      <div class="row">
        <div class="input-field col s6">
          <input placeholder="Placeholder" id="first_name" type="text" class="validate">
          <label for="first_name">First Name</label>
        </div>
        <div class="input-field col s6">
          <input id="last_name" type="text" class="validate">
          <label for="last_name">Last Name</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input disabled value="I am not editable" id="disabled" type="text" class="validate">
          <label for="disabled">Disabled</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" class="validate">
          <label for="password">Password</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate">
          <label for="email">Email</label>
        </div>
      </div>
      <div class="row">
        <div class="col s12">
          This is an inline input field:
          <div class="input-field inline">
            <input id="email" type="email" class="validate">
            <label for="email" data-error="wrong" data-success="right">Email</label>
          </div>
        </div>
      </div>
    </form>
	<div class="clearBoth"></div>
  </div>
    </div>
 </div>	
	 </div>		
              <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-action">
                            Basic Form Elements
                        </div>
                        <div class="card-content">
                         	<form class="col s12">
								  <div class="row">
									<div class="input-field col s6">
									  <i class="material-icons prefix">account_circle</i>
									  <input id="icon_prefix" type="text" class="validate">
									  <label for="icon_prefix">First Name</label>
									</div>
									<div class="input-field col s6">
									  <i class="material-icons prefix">phone</i>
									  <input id="icon_telephone" type="tel" class="validate">
									  <label for="icon_telephone">Telephone</label>
									</div>
								  </div>
								</form>
								
								<form class="col s12">
								  <div class="row">
									<div class="input-field col s12">
									  <input id="email" type="email" class="validate">
									  <label for="email" data-error="wrong" data-success="right">Email</label>
									</div>
								  </div>
								</form>
								
								  <form class="col s12">
							  <div class="row">
								<div class="input-field col s12">
								  <textarea id="textarea1" class="materialize-textarea"></textarea>
								  <label for="textarea1">Textarea</label>
								</div>
							  </div>
							</form>
							  </form>
 
   <!-- Switch -->
  <div class="switch">
    <label>
      Off
      <input type="checkbox">
      <span class="lever"></span>
      On
    </label>
  </div>

  <!-- Disabled Switch -->
  <div class="switch">
    <label>
      Off
      <input disabled type="checkbox">
      <span class="lever"></span>
      On
    </label>
  </div>
							<div class="clearBoth"></div>
							</div>
							</div>
							</div>
							 <div class="col-lg-6">
                    <div class="card">
                        <div class="card-action">
                            Basic Form Elements
                        </div>
                        <div class="card-content">
						
								  <form action="#">
    <p>
      <input name="group1" type="radio" id="test1" />
      <label for="test1">Red</label>
    </p>
    <p>
      <input name="group1" type="radio" id="test2" />
      <label for="test2">Yellow</label>
    </p>
    <p>
      <input class="with-gap" name="group1" type="radio" id="test3"  />
      <label for="test3">Green</label>
    </p>
      <p>
        <input name="group1" type="radio" id="test4" disabled="disabled" />
        <label for="test4">Brown</label>
    </p>
  </form>
         <form action="#">
    <p>
      <input type="checkbox" id="test5" />
      <label for="test5">Red</label>
    </p>
    <p>
      <input type="checkbox" id="test6" checked="checked" />
      <label for="test6">Yellow</label>
    </p>
    <p>
      <input type="checkbox" class="filled-in" id="filled-in-box" checked="checked" />
      <label for="filled-in-box">Filled in</label>
    </p>
    <p>
      <input type="checkbox" id="indeterminate-checkbox" />
      <label for="indeterminate-checkbox">Indeterminate Style</label>
    </p>
    <p>
      <input type="checkbox" id="test7" checked="checked" disabled="disabled" />
      <label for="test7">Green</label>
    </p>
      <p>
        <input type="checkbox" id="test8" disabled="disabled" />
        <label for="test8">Brown</label>
    </p>

        
                                </div>
                               
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div> 
                <!-- /.col-lg-12 --> 
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
