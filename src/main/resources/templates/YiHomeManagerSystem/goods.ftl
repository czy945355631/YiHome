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

    <link href="/YiHomeManagerSystem/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/YiHomeManagerSystem/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/YiHomeManagerSystem/assets/plugins/icomoon/style.css" rel="stylesheet">
    <link href="/YiHomeManagerSystem/assets/plugins/uniform/css/default.css" rel="stylesheet"/>
    <link href="/YiHomeManagerSystem/assets/plugins/switchery/switchery.min.css" rel="stylesheet"/>
    <link href="/YiHomeManagerSystem/assets/plugins/datatables/css/jquery.datatables.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="/YiHomeManagerSystem/assets/plugins/datatables/css/jquery.datatables_themeroller.css" rel="stylesheet"
          type="text/css"/>
    <link href="/YiHomeManagerSystem/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet"
          type="text/css"/>

    <!-- Theme Styles -->
    <link href="/YiHomeManagerSystem/assets/css/ecaps.min.css" rel="stylesheet">
    <link href="/YiHomeManagerSystem/assets/css/custom.css" rel="stylesheet">
    <link href="/YiHomeManagerSystem/assets/css/change.css" rel="stylesheet">

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
        <h3 class="breadcrumb-header">商品管理</h3>
    </div>

    <div class="panel-heading">
        <form action="/BsPage/goods/goGoodsAdd">
            <button type="submit" class="btn btn-success" data-toggle="modal"
                    data-target="#myModal">新增商品
            </button>
        </form>
    </div>
    <div class="col-md-12">
        <div class="panel panel-white">
            <table id="example" class="table" style="width:100%">
                <thead>
                    <tr>
                        <th>名称</th>
                        <th>品牌</th>
                        <th>分类名</th>
                        <th>售价</th>
                        <th>货号</th>
                        <th>库存</th>
                        <th>体积</th>、
                        <th>重量</th>
                        <th>点击量</th>
                        <th>销量</th>
                        <th>上下架</th>
                        <th>操作</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>



    <div class="page-footer">
        <p>Copyright &copy; 2018.Company name All rights reserved.
        </p>
    </div>
</div><!-- /Page Inner -->
<#include "footer.ftl">


<!-- Javascripts -->
<script src="/YiHomeManagerSystem/assets/plugins/jquery/jquery-3.1.0.min.js"></script>

<script src="/YiHomeManagerSystem/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/uniform/js/jquery.uniform.standalone.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/switchery/switchery.min.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/datatables/js/jquery.datatables.min.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="/YiHomeManagerSystem/assets/js/ecaps.min.js"></script>
<script src="/YiHomeManagerSystem/assets/js/pages/table-data.js"></script>
<!--/* 鼠标特效 */-->
<script src="/YiHomeManagerSystem/assets/js/pages/mousestyle.js"></script>

<script>
    $(document).ready(function() {
        $("#example").dataTable().fnDestroy();

        $("#example").dataTable( {
            language: {
                "lengthMenu": "每页 _MENU_ 条记录",
                "zeroRecords": " ",
                "info": "当前 _START_ 条到 _END_ 条 共 _TOTAL_ 条",
                "infoEmpty": "无记录",
                "infoFiltered": "(从 _MAX_ 条记录过滤)",
                // "search": "用户",
                // "processing": "载入中",
                "paginate": {
                    "first": "首页",
                    "previous": "上一页",
                    "next": "下一页",
                    "last": "尾页"
                }
            },
            processing: true,
            serverSide: true,
            lengthChange: false,//是否允许用户改变表格每页显示的记录数
            ordering: false,//是否允许用户排序
            paging: true,//是否分页
            pagingType: "full_numbers",//除首页、上一页、下一页、末页四个按钮还有页数按钮
            /* scrollX: true,//允许水平滚动
             scrollY: "200px",
             scrollCollapse: true, */
            searching: false,//是否开始本地搜索
            stateSave: false,//刷新时是否保存状态
            autoWidth: true,//自动计算宽度
        //deferRender : true,//延迟渲染
            "ajax": "/BsPage/goods/getGoodsListJson",
            "columns": [
                { "data": "goodsname" },
                { "data": "brand.brandname" },
                { "data": "classes.classesname" },
                { "data": "nowPrice" },
                { "data": "artno" },
                { "data": "store" },
                { "data": "volume" },
                { "data": "weight" },
                { "data": "clickRate"},
                { "data": "sales" },
                { "data": "showstatus" },
                { "data": "id" },
            ],

            "aoColumnDefs": [
                // {"aTargets":[3],"mRender":function(data,type,full){
                //         return "<img src='/asjy/file/"+data+"'style='width:40px;height:40px;' ></img>";
                //     }
                // },
                {"aTargets":[11],"mRender":function(data,type,full){
                        var a ="<input type='button' value='删除' onclick=javascrtpt:dodelete("+data+")>|"
                        var b ="<input type='button' value='修改' onclick=javascrtpt:window.location.href='/BsPage/goods/goGoodsUpdate?id="+data+"'>"
                        return a + b;
                    }
                }
            ]
        } );
        // $('#example tbody').on('click', 'tr',
        //     function() {
        //     alert("1");
        // } );



    } );
    ///BsPage/goods/goGoodsAdd
    function doupdate(id) {
        $.ajax({
            url:"/BsPage/goods/dodelete",
            type:"post",
            data:{id:id},
            success:function () {
                $('#example').dataTable().fnDraw(false);
            }
        })
    }


    function dodelete(id) {
        $.ajax({
            url:"/BsPage/goods/dodelete",
            type:"post",
            data:{id:id},
            success:function () {
                $('#example').dataTable().fnDraw(false);
            }
        })
    }
</script>

</body>
</html>