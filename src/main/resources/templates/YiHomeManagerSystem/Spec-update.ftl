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
    <style>
        .panel-title{
            padding-bottom: 15px;
        }
        .panel-title .seq {
            display: inline-block;
            width: 100px;
            color: #637282;
            padding: 0 5px;
        }
        .panel-title .value {
            display: inline-block;
            width: 235px;
            color: #637282;
            padding: 0 5px;
        }
        .panel-title .del{
            display: inline-block;
            color: #637282;
            padding: 0 5px;
            margin-left: 20px;
        }
        .form-inline{
            padding-bottom: 20px;
        }
        .panel-add{
            width: ;
            display: inline-block;
            color: #637282;
            padding: 0 5px;
            margin-left: 20px;
        }
    </style>
</head>
<body>

<#include "header.ftl">
    <!-- Page Inner -->
                <div class="page-inner">
                    <div class="page-title">
                        <h3 class="breadcrumb-header">修改规格</h3>
                    </div>
                    <div id="main-wrapper">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-white">
                                    <div class="panel-body">
                                        <form id="specvform" class="form-inline" method="post" action="/BsPage/Spec/doSpecUpdate">
                                            <div class="panel-title">
                                                <div class="seq">规格名称</div>
                                                <div class="del">排序</div>
                                            </div>
                                            <div class="form-group">
                                                <input type="hidden" name="id" value="${spec.id}">
                                                <input type="text" class="form-control" value="${spec.specname}" name="specname" placeholder="规格名称">
                                            </div>
                                            <div class="form-group">
                                                <input type="number" class="form-control" value="${spec.seq}" name="seq" placeholder="排序">
                                            </div>
                                                <h3 class="breadcrumb">修改规格值</h3>
                                            <div class="panel-body">
                                                <div class="panel-title">
                                                    <div class="seq">排序</div>
                                                    <div class="value">规格值</div>
                                                    <div class="del">删除</div>
                                                    &nbsp;&nbsp;
                                                    <div class="del">添加</div>
                                                </div>
                                                <div id="specvform">

                                                    <#list spec.specValues as specvlist>
                                                        <div class="form-item">
                                                            <input type="hidden" class="status" name="specValues[${specvlist_index}].status" value="old">
                                                            <div class="form-group">
                                                                <input type="hidden" name="specValues[${specvlist_index}].id" value="${specvlist.id}">
                                                                <input type="number" value="${specvlist.seq}" class="form-control specvseq" name="specValues[${specvlist_index}].seq" style="width: 100px">
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="text" class="form-control specvname" value="${specvlist.specvname}" name="specValues[${specvlist_index}].specvname">
                                                            </div>
                                                            <div class="form-group" style="margin-left: 20px;margin-right:3px;";>
                                                                <input type="button"  class="form-control del"  value="X" />
                                                            </div>
                                                            <div class="form-group" style="margin-left: 20px;margin-right:3px;";>
                                                                <input type="button" class="form-control add" value="+"/>
                                                            </div>
                                                        </div>
                                                    </#list>
                                                </div>
                                                <input type="submit">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
            </div><!-- Row -->
        </div><!-- Main Wrapper -->

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


<script>
    var count =${spec.specValues?size-1};
    var count2 =count;
    function f(count) {
        var add = '<div class="form-item">'+

            '<input type="hidden" class="status" name="specValues[' +
            count +
            '].status" value="new" >'+
            '<div class="form-group">'+
            '<input type="number" class="form-control" name="specValues[' +
            count +
            '].seq" style="width: 100px;">'+
            '</div>'+
            '<div class="form-group">'+
            '<input type="text" name="specValues['+
            count+
            '].specvname" class="form-control" style="margin-left:3px;margin-right:3px;">'+
            '</div>'+

            '<div class="form-group" style="margin-left: 20px;margin-right:3px;">'+
            '<input type="button" value="X" class="form-control del" id="del"/>'+
            '</div>'+

            '<div class="form-group" style="margin-left: 20px;margin-right:3px;">'+
            '<input type="button" class="form-control add" index="1" value="+"/>'+
            '</div>'+
            '</div>';
        return add
    }

    $(document).ready(function () {
        $("#specvform").on("click",".del",function(e){
            if (count2 == 0){
                alert("必须留有一项")
            } else if ($(e.target).parent().siblings(".status").attr("value") == "old") {
                count2 --;
                $(e.target).parent().siblings(".status").attr("value","delete");
                $(e.target).parent().parent().attr("hidden","hidden");
            } else if ($(e.target).parent().siblings(".status").attr("value")  == "update") {
                count2 --;
                $(e.target).parent().siblings(".status").attr("value","delete");
                $(e.target).parent().parent().attr("hidden","hidden");
            }
            else if ($(e.target).parent().siblings(".status").attr("value")  == "new") {
                count2 --;
                $(e.target).parent().parent().remove();
            }

        });

        $("#specvform").on("click",".add",function(e){
            count ++;
            count2++
            $(e.target).parent().parent().parent().append(f(count));

        });


        $("#specvform").on("change",".specvseq",function(e){
            $(e.target).parent().siblings(".status").attr("value","update");
        });
        $("#specvform").on("change",".specvname",function(e){
            $(e.target).parent().siblings(".status").attr("value","update");
        });






    });
</script>


</body>
</html>