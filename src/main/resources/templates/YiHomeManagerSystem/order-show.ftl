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
        <h3 class="breadcrumb-header">订单管理</h3>
    </div>
    <div id="main-wrapper">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-white">
                    <div class="panel-heading">

                    </div>
                    <div class="panel-body">
                        <#--<button type="button" class="btn btn-success m-b-sm" data-toggle="modal" data-target="#myModal">Add new row</button>-->
                        <!-- Modal -->

                        <div class="table-responsive">
                            <table id="example" class="display table" style="width: 100%; cellspacing: 0;">
                                <thead>
                                <tr>
                                    <th>订单编号</th>
                                    <th>收货人姓名</th>
                                    <th>收货人手机</th>
                                    <th>订单状态</th>
                                    <th>日期</th>
                                    <th>订单总价</th>
                                    <th>操作</th>
                                </tr>

                                </thead>
                                <tbody id="tbody">
                                    <#list orderlist as order>
                                        <tr>
                                            <td>${order.orderid}</td>
                                            <td>${order.name}</td>
                                            <td>${order.tel}</td>
                                            <td>${order.status}</td>
                                            <td>${order.addtime}</td>
                                            <td>${order.price}</td>
                                        <td ">
                                            <input type="button" data-toggle="modal"
                                               data-target="#myModal2" onclick="sendOrder(${order.orderid})" value="发货">|
                                        <input type="button" data-toggle="modal"
                                               data-target="#myModal2" onclick="deleteOrder(${order.orderid})"  value="删除">

                                            </td>
                                        </tr>


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

    function deleteOrder(id) {
        var obj = {};
        obj.orderid = id.toString();
        $.ajax({
            url: "/BsOrder/deleteOrder",
            type:"post",
            data: JSON.stringify(obj),
            contentType: "application/json",
            success: function (data) {
                window.location.reload();
            }
        })
    }

    function sendOrder(id) {
        var obj = {};
        obj.orderid = id.toString();
        $.ajax({
            url: "/BsOrder/sendOrder",
            type:"post",
            data: JSON.stringify(obj),
            contentType: "application/json",
            success: function (data) {
                window.location.reload();
            }
        })
    }
</script>
</body>
</html>