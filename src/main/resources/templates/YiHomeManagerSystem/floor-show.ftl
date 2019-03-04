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
            <h3 class="breadcrumb-header">楼层管理</h3>
        </div>

        <div class="panel-heading">
            <form action="/BsPage/goFloorAdd">
                <button type="submit" class="btn btn-success" data-toggle="modal"
                        data-target="#myModal">新增楼层
                </button>
            </form>
        </div>
        <div class="col-md-12">
            <div class="panel panel-white">
                <table id="example" class="table" style="width:100%">
                    <thead>
                        <tr>
                            <th>排序</th>
                            <th>楼层名称</th>
                            <th>下属分类</th>
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
<script src="../YiHomeManagerSystem/assets/plugins/jquery/jquery-3.1.0.min.js"></script>

<script src="../YiHomeManagerSystem/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/uniform/js/jquery.uniform.standalone.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/switchery/switchery.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/datatables/js/jquery.datatables.min.js"></script>
<script src="../YiHomeManagerSystem/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="../YiHomeManagerSystem/assets/js/ecaps.min.js"></script>
<script src="../YiHomeManagerSystem/assets/js/pages/table-data.js"></script>
<!--/* 鼠标特效 */-->
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
            "searching": false, //去掉搜索框
            "bLengthChange":false,//去掉每页多少条框体
            "info": false, //去掉info，
            "bPaginate":false,//去掉分页，
            "ajax": "/Bsjson/getFloorIndexData",
            "columns": [
                { "data": "seq" },
                { "data": "floorname" },
                { "data": "floorname" },
                { "data": "id" },
            ],
            "aoColumnDefs": [
                // {"aTargets":[3],"mRender":function(data,type,full){
                //         return "<img src='/asjy/file/"+data+"'style='width:40px;height:40px;' ></img>";
                //     }
                // },
                {"aTargets":[3],"mRender":function(data,type,full){
                    var a ="<input type='button' value='删除' onclick=javascrtpt:dodelete("+data+")>|"
                    var b ="<input type='button' value='修改' onclick=javascrtpt:window.location.href='/BsPage/floor/goFloorUpdate?id="+data+"'>"
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

    // function dodelete(id){
    //     window.location.href="/BsPage/Spec/doDelete?id="+id;
    // }
    // function doupdate(id){
    //     window.location.href="/BsPage/Spec/goUpdate?id="+id;
    // }
    function dodelete(id) {
        $.ajax({
            url:"/BsPage/floor/dodelete",
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