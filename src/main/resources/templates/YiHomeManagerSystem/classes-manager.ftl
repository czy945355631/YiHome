<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Responsive Admin Dashboard Template">
    <meta name="keywords" content="admin,dashboard">
    <meta name="author" content="skcats">
    <!-- The above 6 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title></title>

    <!-- Styles -->

    <link href="../YiHomeManagerSystem/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../YiHomeManagerSystem/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../YiHomeManagerSystem/assets/plugins/icomoon/style.css" rel="stylesheet">
    <link href="../YiHomeManagerSystem/assets/plugins/uniform/css/default.css" rel="stylesheet"/>
    <link href="../YiHomeManagerSystem/assets/plugins/switchery/switchery.min.css" rel="stylesheet"/>
    <link href="../YiHomeManagerSystem/assets/plugins/datatables/css/jquery.datatables.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="../YiHomeManagerSystem/assets/plugins/datatables/css/jquery.datatables_themeroller.css" rel="stylesheet"
          type="text/css"/>
    <link href="../YiHomeManagerSystem/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet"
          type="text/css"/>

    <!-- Theme Styles -->
    <link href="../YiHomeManagerSystem/assets/css/ecaps.min.css" rel="stylesheet">
    <link href="../YiHomeManagerSystem/assets/css/custom.css" rel="stylesheet">
    <link href="../YiHomeManagerSystem/assets/css/change.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<#include "header.ftl">
    <!-- Page Inner -->
<div class="page-inner">
    <div class="page-title">
        <h3 class="breadcrumb-header">分类管理</h3>
    </div>
    <div id="main-wrapper">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-white">
                    <div class="panel-heading">
                        <button type="button" class="btn btn-success" onclick="add()" data-toggle="modal"
                                data-target="#myModal">新增分类
                        </button>
                    </div>
                    <div class="panel-body">
                        <#--<button type="button" class="btn btn-success m-b-sm" data-toggle="modal" data-target="#myModal">Add new row</button>-->
                        <!-- Modal -->
                        <form id="update-row-form" action="/BsPage/doAdd" method="post" enctype="multipart/form-data">
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">新增分类</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <div class="form-name">排序：</div>
                                                <input type="text" id="seq-input" name="seq" class="form-control"
                                                       placeholder="排序" required>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-name">分类名称：</div>
                                                <input type="text" id="name-input" name="classesname"
                                                       class="form-control" placeholder="分类名称" required>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-name">父级分类：</div>
                                                <select name="pid" class="form-control" id="addclasses">
                                                    <option id="addpclasses0" value="0">无上级分类</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-name">分类图片：</div>
                                                <input type="file" id="path-input" name="path1" class="form-control"/>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-name">是否显示：</div>
                                                是<input type="radio" name="display" value="1" required="required">
                                                否<input type="radio" name="display" value="0">
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                            </button>
                                            <button type="submit" id="add-row" class="btn btn-success">添加</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <form id="update-row-form" action="/BsPage/doUpdate">
                            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
                                 aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">修改分类</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="form-group">
                                                <div class="form-name">排序：</div>
                                                <input type="hidden" name="id" id="upid">
                                                <input type="text" id="upseq" name="seq" class="form-control"
                                                       placeholder="排序" required>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-name">分类名称：</div>
                                                <input type="text" id="upclassesname" name="classesname"
                                                       class="form-control" placeholder="分类名称" required>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-name">父级分类：</div>
                                                <select name="pid" class="form-control" id="uppclasses">
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-name">是否显示：</div>

                                                是<input type="radio" id="uptrue" name="display" class="true" value="1" required="required">
                                                否<input type="radio" id="upfalse" name="display" class="false"
                                                        value="0">
                                                </select>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消
                                            </button>
                                            <button type="submit" id="add-row" class="btn btn-success">修改</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="table-responsive">
                            <table id="example" class="display table" style="width: 100%; cellspacing: 0;">
                                <thead>
                                <tr>
                                    <th>排序</th>
                                    <th>一级分类</th>
                                    <th>二级分类</th>
                                    <th>三级分类</th>
                                    <th>显示</th>
                                    <th>操作</th>
                                </tr>

                                </thead>
                                <tbody id="tbody">
                                <#list list as classes>


                                    <tr>
                                    <td>${classes.seq}</td>
                                    <td>${classes.classesname}</td>
                                    <td></td>
                                     <td></td>
                                    <td><input type="checkbox" disabled="true"
                                    <#if classes.display == 1>
                                        checked="checked"
                                    </#if>
                                ></td>
                                <td ">
                                <input type="button" data-toggle="modal"
                                       data-target="#myModal2" onclick="update(${classes.id})" value="编辑">
                                    |
                                    <input type="button" onclick="dodelete(${classes.id})" value="删除">
                                    </td>
                                    </tr>

                                    <#if classes.sonClasses??>
                                        <#list classes.sonClasses as classes2>
                                            <tr>
                                            <td>${classes2.seq}</td>
                                            <td>${classes.classesname}</td>
                                            <td>${classes2.classesname}</td>
                                            <td></td>
                                            <td><input type="checkbox" disabled="true"
                                            <#if classes2.display == 1>
                                                checked="checked"
                                            </#if>
                                        ></td>
                                        <td ">
                                        <input type="button" data-toggle="modal"
                                               data-target="#myModal2" onclick="update(${classes2.id})" value="编辑">
                                            |
                                            <input type="button" onclick="dodelete(${classes2.id})" value="删除">
                                            </td>
                                            </tr>
                                            <#if classes2.sonClasses??>
                                                <#list classes2.sonClasses as classes3>
                                                    <tr>
                                                    <td>${classes3.seq}</td>

                                                    <td>${classes.classesname}</td>
                                                    <td>${classes2.classesname}</td>
                                                    <td>${classes3.classesname}</td>
                                                    <td><input type="checkbox" disabled="true"
                                                    <#if classes3.display == 1>
                                                        checked="checked"
                                                    </#if>
                                                ></td>
                                                <td ">
                                                <input type="button" data-toggle="modal"
                                                       data-target="#myModal2" onclick="update(${classes3.id})" value="编辑">
                                                    |
                                                    <input type="button" onclick="dodelete(${classes3.id})" value="删除">
                                                    </td>
                                                    </tr>
                                                </#list>
                                            </#if>
                                        </#list>
                                    </#if>
                                </#list>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- Row -->
    </div><!-- Main Wrapper -->
    <div class="page-footer">
        <p>Copyright &copy; 2018.Company name All rights reserved.
        </p>
    </div>
</div><!-- /Page Inner -->
<#include "footer.ftl">

<script src="../YiHomeManagerSystem/assets/plugins/jquery/jquery-3.1.0.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/uniform/js/jquery.uniform.standalone.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/switchery/switchery.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/datatables/js/jquery.datatables.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="../YiHomeManagerSystem/assets/js/ecaps.min.js"></script>
<script src="../YiHomeManagerSystem/assets/js/pages/table-data.js"></script>

<script>

    function update(id) {
        var obj = {};
        obj.id = id;
        $.ajax({
            url: "/Bsjson/updatePage",
            type: "post",
            data: JSON.stringify(obj),
            contentType: "application/json",
            success: function (data) {
                $("#upid").val(data.classes.id);
                $("#upseq").val(data.classes.seq);
                $("#upclassesname").val(data.classes.classesname);
                $("#uppclasses").val(data.classes.typename);

                if (data.classes.display == "1") {
                    $("#upfalse").parent().attr('class', '');
                    $("#uptrue").parent().attr('class', 'checked');
                } else {
                    $("#uptrue").parent().attr('class', '');
                    $("#upfalse").parent().attr('class', 'checked');
                }



                $("#uppclasses").empty();
                var op0 = "<option id=\"uppclasses0\" value=\"0\">无上级分类</option>"

                $("#uppclasses").html(op0);
                data.list.forEach(function (item, index) {

                    // alert(item.classesname)
                    if (item.id == data.classes.pid) {
                        var op = "<option selected='selected' value='" + item.id + "'>" + item.classesname + "</option>"
                    } else if(item.id != data.classes.id){
                        var op = "<option value=" + item.id + ">" + item.classesname + "</option>"
                    }

                    $("#uppclasses0").after(op);
                });


            }
        })
    }

    function add() {
        $.ajax({
            url: "/Bsjson/addPage",
            type: "post",
            contentType: "application/json",
            success: function (data) {
                $("#addclasses").find('option[add="add"]').remove();
                data.list.forEach(function (item, index) {
                    var op = "<option add='add' value=" + item.id + ">" + item.classesname + "</option>"
                    $("#addpclasses0").after(op);
                });
            }
        })
    }
    function dodelete(id) {
        $.ajax({
            url:"/Bsjson/doClassesdelete",
            type:"post",
            data:{id:id},
            success:function () {
                location.reload();
            }
        })
    }
</script>
</body>
</html>