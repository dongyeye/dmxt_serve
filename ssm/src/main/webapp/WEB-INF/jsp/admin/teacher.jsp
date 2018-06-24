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
    <!-- Page level plugin CSS-->
    <link href="${basePath}/resources/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${basePath}/resources/css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<!-- 新增模态框 -->
<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="addstLabel">新增老师</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-4 control-label"><h5>教师编号</h5></label>
                        <div class="col-sm-10">
                            <input type="text" name="new_teacher_ID" class="form-control" id="teacher_ID_add_input" placeholder="请输入教师编号 ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><h5>姓名</h5></label>
                        <div class="col-sm-10">
                            <input type="text" name="new_name" class="form-control" id="name_add_input" placeholder="请输入教师姓名 ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><h5>学校</h5></label>
                        <div class="col-sm-10">
                            <input type="text" name="new_school" class="form-control" id="school_add_input" placeholder="请输入教师学校 ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><h5>学院</h5></label>
                        <div class="col-sm-10">
                            <input type="text" name="new_college" class="form-control" id="college_add_input" placeholder="请输入教师学院 ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><h5>电话</h5></label>
                        <div class="col-sm-10">
                            <input type="text" name="new_tel" class="form-control" id="tel_add_input" placeholder="请输入教师电话">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><h5>性别</h5></label>
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
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" id="addSubmit" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>
<!--删除模态框-->
<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    删除
                </h4>
            </div>
            <div class="modal-body">
                <%--获取id--%>
                <input type="hidden"  class="form-control" id="id_delete_input" placeholder="" >
                <%--获取教师编号--%>
                <input type="hidden"  class="form-control" id="teacher_ID_delete_input" placeholder="" >
                是否删除该教师？？？
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="deleteSubmit">
                    确认删除
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!-- 修改模态框 -->
<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="editstLabel">编辑信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <%--获取id--%>
                    <input type="hidden"  class="form-control" id="id_edit_input" placeholder="" >
                    <div class="form-group">
                        <label class="col-sm-4 control-label" ><h5>教师编号</h5></label>
                        <div class="col-sm-10">
                            <input type="text"  class="form-control" id="teacher_ID_edit_input" placeholder="">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" ><h5>姓名</h5></label>
                        <div class="col-sm-10">
                            <input type="text"  class="form-control" id="name_edit_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><h5>学校</h5></label>
                        <div class="col-sm-10">
                            <input type="text"  class="form-control" id="school_edit_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><h5>学院</h5></label>
                        <div class="col-sm-10">
                            <!--name和javabean的名字一样就可以匹配-->
                            <input type="text"  class="form-control" id="college_edit_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><h5>电话</h5></label>
                        <div class="col-sm-10">
                            <input type="text"  class="form-control" id="tel_edit_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><h5>性别</h5></label>
                        <div class="col-sm-10">
                            <input type="text"  class="form-control" id="sex_edit_input" placeholder=" ">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" id="editSubmit" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>
<!--查找模态框-->
<div class="modal fade" id="findModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="modal-header">
                根据id进行查找
            </div>
            <div class="modal-body">
                <form role="form">
                    <div class="form-group">
                        <label for="find_input"><h5>教师编号：</h5></label>
                        <input type="text"  class="form-control" id="find_input" placeholder=" ">
                        <span class="help-block"></span>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" id="findSubmit" class="btn btn-primary">查找</button>
            </div>
        </div>
    </div>
</div>
<!-- Navigation-->
<%@include file="../include/nav.jsp"%>

<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="#">教师管理</a>
            </li>
            <li class="breadcrumb-item active">教师信息</li>
        </ol>
        <!-- Example DataTables Card-->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fa fa-table"></i> 教师信息</div>
            <div class="card-body">
                <!-- 按钮 -->
                <div class="row">
                    <div class="col-md-4 col-md-offset-8">
                        <button class="btn btn-primary" id="add_btn">新增</button>
                        <button class="btn btn-danger" id="find_btn">查找</button>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>学校</th>
                            <th>学院</th>
                            <th>教师编号</th>
                            <th>姓名</th>
                            <th>电话</th>
                            <th>注册时间</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${te}" var="s">
                            <tr>
                                <td>${s.school}</td>
                                <td>${s.college}</td>
                                <td>${s.teacher_ID}</td>
                                <td>${s.name}</td>
                                <td>${s.tel}</td>
                                <td>${s.reg_time}</td>
                                <td>
                                    <div >
                                        <button class="btn btn-primary" id="${s.id}" onclick="editfunction({
                                                id:'${s.id}',
                                                school:'${s.school}',
                                                college:'${s.college}',
                                                teacher_ID:'${s.teacher_ID}',
                                                name:'${s.name}',
                                                tel:'${s.tel}',
                                                sex:'${s.sex}'})">编辑</button>
                                        <button class="btn btn-danger" id="delete_btn" onclick="deletefunction({
                                                id:'${s.id}',
                                                teacher_ID:'${s.teacher_ID}' })">删除</button>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
        </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
        <div class="container">
            <div class="text-center">
                <small>Copyright © Your Website 2018</small>
            </div>
        </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">是否离开?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">退出当前账号</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
                    <a class="btn btn-primary" href="login">退出</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="${basePath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${basePath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${basePath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="${basePath}/resources/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${basePath}/resources/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${basePath}/resources/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="${basePath}/resources/js/sb-admin-datatables.min.js"></script>
    <script>
        <!--模态框-->
        //点击编辑按钮弹出模态框
        function editfunction(s){
            $("#id_edit_input").val(s.id);
            $("#teacher_ID_edit_input").val(s.teacher_ID);
            $("#name_edit_input").val(s.name);
            $("#school_edit_input").val(s.school);
            $("#college_edit_input").val(s.college);
            $("#tel_edit_input").val(s.tel);
            if(s.sex==0)
                $("#sex_edit_input").val('男');
            else
                $("#sex_edit_input").val('女');
            $("#editModal").modal({
                backdrop:"static"
            });
        }
        //点击删除按钮弹出模态框
        function deletefunction(s){
            $("#id_delete_input").val(s.id);
            $("#teacher_ID_delete_input").val(s.teacher_ID);
            //点击编辑按钮弹出模态框
            $("#deleteModal").modal({
                backdrop:"static"
            });
        }
        $(function() {
            //点击新增按钮弹出模态框
            $("#add_btn").click(function () {
                //弹出模态框
                $("#addModal").modal({
                    backdrop: "static"
                });
            });
            //点击新增提交按钮
            $("#addSubmit").click(function () {
                $.ajax({
                    type: "POST",
                    contentType: 'application/json;charset=utf-8',
                    url: "addTeacher",
                    dataType: "json",
                    data: JSON.stringify({
                        "new_teacher_ID": $("#teacher_ID_add_input").val(),
                        "new_name": $("#name_add_input").val(),
                        "new_school": $("#school_add_input").val(),
                        "new_college": $("#college_add_input").val(),
                        "new_tel": $("#tel_add_input").val(),
                        "new_sex": $("#sex_add_input").val()
                    }),
                    success: function (data) {
                        //关闭模态框
                        $("#addModal").modal('hide');
                        alert("添加成功！");
                        document.location.reload();
                    }
                });
            });
            //点击删除提交按钮
            $("#deleteSubmit").click(function () {
                $.ajax({
                    type: "POST",
                    contentType: 'application/json;charset=utf-8',
                    url: "deleteTeacher",
                    dataType: "json",
                    data: JSON.stringify({
                        "delete_id": $("#id_delete_input").val()
                    }),
                    success: function (data) {
                        //手动关闭
                        $("#deleteModal").modal('hide');
                        alert("教师编号为"+$("#teacher_ID_delete_input").val()+"的老师已经被删除了");
                        document.location.reload();
                    }
                });
            });
            //点击编辑提交按钮
            $("#editSubmit").click(function () {
                $.ajax({
                    type: "POST",
                    contentType: 'application/json;charset=utf-8',
                    url: "updateTeacher",
                    dataType: "json",
                    data: JSON.stringify({
                        "edit_id":$("#id_edit_input").val(),
                        "edit_teacher_ID": $("#teacher_ID_edit_input").val(),
                        "edit_name":$("#name_edit_input").val(),
                        "edit_school":$("#school_edit_input").val(),
                        "edit_college":$("#college_edit_input").val(),
                        "edit_tel":$("#tel_edit_input").val(),
                        "edit_sex":$("#sex_edit_input").val()
                    }),
                    success: function (data) {
                        $("#editModal").modal('hide');
                        alert("修改成功" +
                            "\n教师编号： "+$("#teacher_ID_edit_input").val()+
                            "\n教师姓名： "+$("#name_edit_input").val()+
                            "\n教师学校: "+$("#school_edit_input").val()+
                            "\n教师学院: "+$("#college_edit_input").val()+
                            "\n教师电话: "+$("#tel_edit_input").val()+
                            "\n教师性别: "+$("#sex_edit_input").val()
                        );
                        document.location.reload();
                    }
                });
            });
            //点击查找按钮弹出模态框
            $("#find_btn").click(function () {
                //弹出模态框
                $("#findModal").modal({
                    backdrop: "static"
                });
            });
            //点击查找提交按钮
            $("#findSubmit").click(function () {
                $.ajax({
                    type: "POST",
                    contentType: 'application/json;charset=utf-8',
                    url: "findTeacher",
                    dataType: "json",
                    data: JSON.stringify({
                        "find_teacher_ID": $("#find_input").val()
                    }),
                    success: function (data) {
                        //成功应该返回教师信息
                        alert(
                            "\n教师学号： "+data.teacher_ID+
                            "\n教师姓名： "+data.name+
                            "\n教师学校： "+data.school+
                            "\n教师学院： "+data.college+
                            "\n教师电话： "+data.tel+
                            "\n教师性别： "+data.sex
                        );
                        document.location.reload();
                    }
                });
            });
        });
    </script>

</div>
</body>

</html>

