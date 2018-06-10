<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="basePath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Target Material Design Bootstrap Admin Template</title>
    <%--css--%>
    <!-- jQuery Js -->
    <script src="${basePath}/resources/js/jquery-1.12.4.min.js"></script>
    <jsp:include page="/WEB-INF/jsp/include/head.jsp" flush="true" />
</head>
<body>
<script>
    $(function(){
        <!--模态框-->
        //点击新增按钮弹出模态框
        $("#add_btn").click(function(){
            //弹出模态框
            $("#addModal").modal({
                backdrop:"static"
            });
        });
        $("#addSubmit").click(function () {
            var new_student_ID=$("#student_ID_add_input").val();
            var new_name=$("#name_add_input").val();
            var new_school=$("#school_add_input").val();
            var new_college=$("#college_add_input").val();
            var new_profession=$("#profession_add_input").val();
            var new_grade=$("#grade_add_input").val();
            var new_class=$("#s_class_add_input").val();
            var new_tel=$("#tel_add_input").val();
            var new_sex=$("#sex_add_input").val();
            var new_reg_time=$("#reg_time_add_input").val();
            $.ajax({
                type:"POST",
                contentType : 'application/json;charset=utf-8',
                url:"addStudent",
                dataType:"json",
                data:JSON.stringify({
                    "new_student_ID":new_student_ID,
                    "new_name":new_name,
                    "new_school":new_school,
                    "new_college":new_college,
                    "new_profession":new_profession,
                    "new_grade":new_grade,
                    "new_class":new_class,
                    "new_tel":new_tel,
                    "new_sex":new_sex,
                    "new_reg_time":new_reg_time
                }),
                success:function(data){
                    alert(data);
                }
            });

        })
    });
</script>
<!-- 修改模态框 -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="editstLabel">编辑信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" name=${s.name} class="form-control" id="name_edit_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学校</label>
                        <div class="col-sm-10">
                            <input type="text" name=${s.school} class="form-control" id="school_edit_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学院</label>
                        <div class="col-sm-10">
                            <!--name和javabean的名字一样就可以匹配-->
                            <input type="text" name=${s.college} class="form-control" id="college_edit_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">班级</label>
                        <div class="col-sm-10">
                            <input type="text" name=${s.s_class} class="form-control" id="s_class_edit_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>

<!-- 新增模态框 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="addstLabel">新增学生</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学号</label>
                        <div class="col-sm-10">
                            <input type="text" name="new_student_ID" class="form-control" id="student_ID_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" name="new_name" class="form-control" id="name_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学校</label>
                        <div class="col-sm-10">
                            <input type="text" name="new_school" class="form-control" id="school_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学院</label>
                        <div class="col-sm-10">
                            <input type="text" name="new_college" class="form-control" id="college_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">专业</label>
                        <div class="col-sm-10">
                            <input type="text" name="new_profession" class="form-control" id="profession_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">年级</label>
                        <div class="col-sm-10">
                            <input type="text" name="new_grade" class="form-control" id="grade_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">班级</label>
                        <div class="col-sm-10">
                            <input type="text" name="new_s_class" class="form-control" id="s_class_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">电话</label>
                        <div class="col-sm-10">
                            <input type="text" name="new_tel" class="form-control" id="tel_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <%--<select>--%>
                            <%--<option>请选择</option>--%>
                            <%--<option value = "1">男</option>--%>
                            <%--<option value = "2">女</option>--%>
                            <%--</select>--%>
                            <input type="text" name="new_sex" class="form-control" id="sex_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                        <%--<input type="text" name="new_sex" class="form-control" id="sex_add_input" placeholder=" ">--%>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">注册时间</label>
                        <div class="col-sm-10">
                            <input type="text" name="new_reg_time" class="form-control" id="reg_time_add_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" id="addSubmit" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>

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
                    <a href="student" class="active-menu waves-effect waves-dark"><i class="fa fa-desktop"></i> 学生管理</a>
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
    <div id="page-wrapper" >
        <div class="header">
            <h1 class="page-header">
                Student Page
            </h1>
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Data</li>
            </ol>
        </div>

        <div id="page-inner">
            <div class="card">
                <div class="card-action">
                    Advanced Tables
                </div>
                <!-- 按钮 -->
                <div class="row">
                    <div class="col-md-4 col-md-offset-8">
                        <button class="btn btn-primary" id="add_btn">新增</button>
                        <button class="btn btn-danger" id="delete_btn">删除</button>
                    </div>
                </div>
                <div class="card-content">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                            <tr>
                                <th>学号</th>
                                <th>姓名</th>
                                <th>学校</th>
                                <th>学院</th>
                                <th>专业</th>
                                <th>年级</th>
                                <th>班级</th>
                                <th>电话</th>
                                <th>性别</th>
                                <th>注册时间</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${st}" var="s">
                                <tr>
                                    <td>${s.student_ID}</td>
                                    <td>${s.name}</td>
                                    <td>${s.school}</td>
                                    <td>${s.college}</td>
                                    <td>${s.profession}</td>
                                    <td>${s.grade}</td>
                                    <td>${s.s_class}</td>
                                    <td>${s.tel}</td>
                                    <td>${s.sex}</td>
                                    <td>${s.reg_time}</td>
                                    <td>
                                        <!-- Button trigger modal -->
                                        <button type="button" id="edit_btn" data-toggle="modal" data-target="#editModal">编辑</button>
                                            <%--<button type="button" id="${s.student_ID}_edit_btn" class="btn btn-primary">编辑</button>--%>

                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="center">
                        <script>
                            $(function(){
                                $("ul.pagination li.disabled a").click(function(){
                                    return false;
                                });
                            });
                        </script>
                        <ul class="pagination">
                            <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
                                <a  href="?start=0${page.param}" aria-label="Previous" >
                                    <span aria-hidden="true">«</span>
                                </a>
                            </li>

                            <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
                                <a  href="?start=${page.start-page.count}${page.param}" aria-label="Previous" >
                                    <span aria-hidden="true">‹</span>
                                </a>
                            </li>

                            <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">
                                <li <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                                    <a
                                            href="?start=${status.index*page.count}${page.param}"
                                            <c:if test="${status.index*page.count==page.start}">class="current"</c:if>
                                    >${status.count}</a>
                                </li>

                            </c:forEach>

                            <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
                                <a href="?start=${page.start+page.count}${page.param}" aria-label="Next">
                                    <span aria-hidden="true">›</span>
                                </a>
                            </li>
                            <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
                                <a href="?start=${page.last}${page.param}" aria-label="Next">
                                    <span aria-hidden="true">»</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
</div>
<%--js--%>
<!-- JS Scripts-->


<!-- Bootstrap Js -->
<script src="${basePath}/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<%--<script src="${basePath}/resources/materialize/js/materialize.min.js"></script>--%>

<!-- Metis Menu Js -->
<script src="${basePath}/resources/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<%--<script src="${basePath}/resources/js/morris/raphael-2.1.0.min.js"></script>--%>
<%--<script src="${basePath}resources/js/morris/morris.js"></script>--%>


<%--<script src="${basePath}/resources/js/easypiechart.js"></script>--%>
<%--<script src="${basePath}/resources/js/easypiechart-data.js"></script>--%>

<%--<script src="${basePath}/resources/js/Lightweight-Chart/jquery.chart.js"></script>--%>
<!-- DATA TABLE SCRIPTS -->
<%--<script src="${basePath}/resources/js/dataTables/jquery.dataTables.js"></script>--%>
<%--<script src="${basePath}/resources/js/dataTables/dataTables.bootstrap.js"></script>--%>
<%--<script>--%>
<%--$(document).ready(function () {--%>
<%--$('#dataTables-example').dataTable();--%>
<%--});--%>
<%--</script>--%>
<!-- Custom Js -->
<script src="${basePath}/resources/js/custom-scripts.js"></script>



<%--结尾标签--%>
</body>
</html>
