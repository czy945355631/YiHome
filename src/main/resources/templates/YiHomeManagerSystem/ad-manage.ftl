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
        <h3 class="breadcrumb-header">品牌管理</h3>
    </div>
    <div class="panel-heading">
        <button type="button" class="btn btn-success" onclick="add()" data-toggle="modal"
                data-target="#myModal">新增品牌
        </button>
    </div>
    <!-- Modal -->

    <form id="update-row-form" action="/brands-upload" method="post" enctype="multipart/form-data">
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">新增品牌</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="form-name">排序：</div>
                            <input type="text" id="seq-input" name="seq" class="form-control"
                                   placeholder="排序" required>
                        </div>
                        <div class="form-group">
                            <div class="form-name">品牌名称：</div>
                            <input type="text" id="name-input" name="brandname"
                                   class="form-control" placeholder="分类名称" required>
                        </div>
                        <div class="form-group">
                            <div class="form-name">品牌图片：</div>
                            <input type="file" id="path-input" name="path" class="form-control" required/>
                        </div>
                        <div class="form-group">
                            <div class="form-name">是否推荐：</div>
                            是<input type="radio" name="recommend" value="1" required="required">
                            否<input type="radio" name="recommend" value="0">
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

    <form id="update-row-form" action="/BsPage/doBrandUpdate"  method="post" enctype="multipart/form-data">
        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">修改品牌</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <div class="form-name">排序：</div>
                            <input type="hidden" name="id" id="upid">
                            <input type="text" id="upseq" name="seq" class="form-control"
                                   placeholder="排序" required>
                        </div>
                        <div class="form-group">
                            <div class="form-name">品牌名称：</div>
                            <input type="text" id="upbrandsname" name="brandname"
                                   class="form-control" placeholder="品牌名称" required>
                        </div>
                        <div class="form-group">
                            <div class="form-name">品牌图片：</div>
                            <img src="" id="upbrandpath" alt="">
                            <input type="file" name="path" class="form-control" >
                        </div>
                        <div class="form-group">
                            <div class="form-name">是否推荐：</div>

                            是<input type="radio" id="uptrue" name="recommend" class="true" value="1" required="required">
                            否<input type="radio" id="upfalse" name="recommend" class="false"
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

    <div>
        <table id="example" class="display" style="width:100%">
            <thead>
            <tr>
                <th>排序</th>
                <th>品牌名称</th>
                <th>品牌图片</th>
                <th>推荐</th>
                <th>操作</th>
            </tr>
            </thead>
        </table>
    </div>
    <div class="page-footer">
        <p>Copyright &copy; 2018.Company name All rights reserved.
        </p>
    </div>
</div><!-- /Page Inner -->
<#include "footer.ftl">


<!-- Javascripts -->
<script src="../YiHomeManagerSystem/assets/plugins/jquery/jquery-3.1.0.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/uniform/js/jquery.uniform.standalone.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/switchery/switchery.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/datatables/js/jquery.datatables.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="../YiHomeManagerSystem/assets/js/ecaps.min.js"></script>
<script src="../YiHomeManagerSystem/assets/js/pages/table-data.js"></script>
<script src="../YiHomeManagerSystem/assets/js/pages/mousestyle.js"></script>

<script>
    $(document).ready(function() {
        $("#example").dataTable().fnDestroy();
        $("#example").dataTable( {
            language : {
                "lengthMenu" : '每页显示<select>' + '<option value="10">10</option>'
                    + '<option value="20">20</option>'
                    + '<option value="30">30</option>'
                    + '<option value="40">40</option>'
                    + '<option value="50">50</option>' + '</select>条',
                "paginate" : {
                    "first" : "首页",
                    "last" : "尾页",
                    "previous" : "上一页",
                    "next" : "下一页"
                },
                "processing" : "加载中...",  //DataTables载入数据时，是否显示‘进度’提示
                "emptyTable" : "暂无数据",
                "info" : "共 _PAGES_ 页  _TOTAL_ 条数据  ",
                "infoEmpty" : "暂无数据",
                "emptyTable" : "暂无要处理的数据...",  //表格中无数据
                "search": "搜索:",
                "infoFiltered" : " —— 从  _MAX_ 条数据中筛选",
                "zeroRecords":    "没有找到记录"

            },
            "ajax": "/Bsjson/showBrands",
            "columns": [
                { "data": "seq"},
                { "data": "brandname"},
                { "data": "path"},
                { "data": "brandname"},
                { "data": "id"}
            ],
            "aoColumnDefs": [
                {"aTargets":[2],"mRender":function(data,type,full){
                        return "<img src='/asjy/file/"+data+"'style='width:40px;height:40px;' ></img>";
                    }
                },
                 {"aTargets":[4],"mRender":function(data,type,full){
                         var a ="<input type='button' value='删除' onclick=javascrtpt:dodelete("+data+")>|"
                         var b ="<input type='button' data-toggle=\"modal\"\n" +
                             "                data-target=\"#myModal2\" value='修改' onclick=javascrtpt:doupdate("+data+")>"
                         return a + b;
                 }
                 }
            ]

        } );
    } );
    function dodelete(id) {
        $.ajax({
            url:"/Bsjson/doBranddelete",
            type:"post",
            data:{id:id},
            success:function () {
                location.reload();
                $('#example').dataTable().fnDraw(false);
            }
        })
    }

    function doupdate(id) {
        var obj = {};
        obj.id = id;
        $.ajax({
            url: "/Bsjson/brandupdate",
            type: "post",
            data: JSON.stringify(obj),
            contentType: "application/json",
            success: function (data) {
                $("#upid").val(data.brands.id);
                $("#upseq").val(data.brands.seq);
                $("#upbrandsname").val(data.brands.brandname);
                $("#upbrandpath").attr("src","/asjy/file/"+data.brands.path);
                if (data.brands.required == "1") {
                    $("#upfalse").parent().attr('class', '');
                    $("#uptrue").parent().attr('class', 'checked');
                } else {
                    $("#uptrue").parent().attr('class', '');
                    $("#upfalse").parent().attr('class', 'checked');
                }
            }
        })
    }
</script>



</body>
</html>