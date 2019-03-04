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
        <h3 class="breadcrumb-header">测试页</h3>
    </div>
    <div>
        <table id="example" class="display" style="width:100%">
            <thead>
            <tr>
                <th>id</th>
                <th>addtime</th>
                <th>brandname</th>
                <th>seq</th>
                <th>path</th>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
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
<#--<script src="../YiHomeManagerSystem/assets/plugins/datatables/js/jquery.datatables.min.js"></script>-->
<script src="../YiHomeManagerSystem/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="../YiHomeManagerSystem/assets/js/ecaps.min.js"></script>
<#--<script src="../YiHomeManagerSystem/assets/js/pages/table-data.js"></script>-->

<script>

    $(function () {
        findPage();

    }
    function deleteById(id) {
        var currentpage = handleCurrentpage();
        $.ajax({
            url:123;
            type:post;
            data:id;
            success(
                findPage(currentPage,find)
            )
        })
    }
    function findPage(currentpage,find) {
        // //如果查询条件为空，则赋空值
        // if (find = null){
        //     find = {};
        // }
        //如果查询条件为不空或者当前页为空，则查询第一页数据
        if (find.length ！= 0 || currentpage == null){
            currentpage = 1;
        }
        find.name = $("#name").val();

        $.ajax({
            url:"/BsPage/test1234",
            type:"post",
            data:{page:1,findbyname:"heiheihei",find:find}
            success:function(data){
                console.log(data)
                for (var i = 0; i <data.data.length ; i++) {
                    var tr = "<tr>\n" +
                        "                <td>"+data.data[i].id+"</td>\n" +
                        "                <td>"+data.data[i].addtime+"</td>\n" +
                        "                <td>"+data.data[i].brandname+"</td>\n" +
                        "                <td>"+data.data[i].deletestatus+"</td>\n" +
                        "                <td>"+data.data[i].path+"</td>\n" +
                        "            </tr>"
                    $("#example").append(tr)
                }
            }
        });
    }

</script>
</body>
</html>