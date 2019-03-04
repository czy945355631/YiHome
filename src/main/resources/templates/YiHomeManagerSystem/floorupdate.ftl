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

    <link href="/YiHomeManagerSystem/assets/plugins/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">
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
        .panel-title {
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
            width: 215px;
            color: #637282;
            padding: 0 5px;
        }

        .panel-title .del {
            display: inline-block;
            color: #637282;
            padding: 0 5px;
            margin-left: 18px;
            width: 38px;
        }

        .form-inline {
            padding-bottom: 20px;
        }

        .panel-add {
            width: ;
            display: inline-block;
            color: #637282;
            padding: 0 5px;
            margin-left: 20px;
        }

        input[type=submit] {
            margin-top: 20px;
        }

        .form-item {
            margin-bottom: 8px;
        }
    </style>
</head>
<body>

<#include "header.ftl">
    <!-- Page Inner -->
    <div class="page-inner">
        <div class="page-title">
            <h3 class="breadcrumb-header">楼层修改</h3>
        </div>
        <div id="main-wrapper">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-white">
                        <div class="panel-body">
                            <form class="form-inline" method="post" action="/BsPage/doFloorUpdate">
                                <div class="panel-title">
                                    <div class="seq">楼层名称</div>
                                    <div class="del">排序</div>
                                    <div class="del">是否显示</div>
                                </div>
                                <div class="form-group">
                                    <input type="hidden" name="id" value="${floormodel.id}">
                                    <input type="text" class="form-control" name="floorname" value="${floormodel.floorname}" placeholder="规格名称">
                                </div>
                                <div class="form-group">
                                    <input type="number" class="form-control" name="seq" value="${floormodel.seq}" placeholder="排序">
                                </div>
                                <div class="form-group">
                                    <#if floormodel.display == 1>
                                        <input type="checkbox" value="0" name="display" checked="checked"  onclick="this.value=(this.value==0)?1:0">

                                        <#else >
                                        <input type="checkbox" value="0" name="display" onclick="this.value=(this.value==0)?1:0">
                                    </#if>

                                </div>

                                <h3 class="breadcrumb">添加分类</h3>
                                <div class="panel-body">
                                    <div class="panel-title">
                                        <div class="seq">排序</div>
                                        <div class="value">分类</div>
                                        <div class="value">商品</div>
                                        <div class="del">删除</div>

                                        <div class="del">添加</div>
                                    </div>
                                    <div id="classesform">
                                        <div class="form-item">
                                            <div class="form-group">
                                                <input type="number" class="form-control"  name="classesList[0].seq" value="0"
                                                       style="width: 100px">
                                            </div>
                                            <div class="form-group">
                                                <select name="classesList[0].id" class="form-control select" >
                                                    <option value="-1">请选择分类</option>
                                                    <#list classes as classes>
                                                        <option value="${classes.id}">${classes.classesname}</option>
                                                    </#list>
                                                </select>
                                            </div>
                                            
                                            <div class="form-group">
                                                <select class="selectpicker goods" name="classesList[0].goodsIdList" multiple></select>
                                            </div>

                                            <div class="form-group" style="margin-left: 20px" ;>
                                                <input type="button" class="form-control del" value="X"/>
                                            </div>

                                            <div class="form-group" style="margin-left: 20px" ;>
                                                <input type="button" class="form-control add" value="+"></input>
                                            </div>
                                        </div>
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
<script src="/YiHomeManagerSystem/assets/plugins/bootstrap-select/dist/js/bootstrap-select.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/uniform/js/jquery.uniform.standalone.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/switchery/switchery.min.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/datatables/js/jquery.datatables.min.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="/YiHomeManagerSystem/assets/js/ecaps.min.js"></script>
<script src="/YiHomeManagerSystem/assets/js/pages/table-data.js"></script>
<script>
    var count = 0;
    var count2 = 1;
    function f(count) {
        var add = '<div class="form-item">'+
            '<div class="form-group">'+
            '<input type="number" class="form-control" name="classesList[' +
            count +
            '].seq" value="0" style="width: 100px;">'+
            '</div>'+
            '<div class="form-group">'+
            '<select  name="classesList['+
            count+
            '].id" class="form-control select" style="margin-left:3px;margin-right:3px;">' +
                '<option value="-1">请选择分类</option>'+
            '<#list classes as classes>'+
            '<option value="${classes.id}">${classes.classesname}</option>'+
            '</#list>' +
            '</select>'+
            '</div>'+
            '<div class="form-group">'+
            '<select class="selectpicker goods" name="classesList['+
            count +
            '].goodsIdList" multiple></select>'+
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
        $("#classesform").on("click",".del",function(e){
            if (count2 == 1){
                alert("必须留有一项")
            } else{
                count2 --;
                $(e.target).parent().parent().remove();
            }

        });
        $("#classesform").on("click",".add",function(e){

            count ++;
            count2++
            $(e.target).parent().parent().parent().append(f(count));
            $(e.target).parent().parent().parent().children().last().find(".goods").selectpicker('refresh');
        });
        $("#classesform").on("change",".select",function(e){
            var classesid = $(this).val();
            $.ajax({
                url:"/Bsjson/getFloorAddGoods",
                type:"post",
                data:{classesid:classesid},
                success:function(data){
                    $(e.target).parent().parent().find(".goods").find("option").remove();
                    data.list.forEach(function (item, index) {
                        var goods = "<option hidden value=" + item.id + ">" + item.goodsname + "</option>"
                        $(e.target).parent().parent().find(".goods").append(goods);
                    });
                    $(e.target).parent().parent().find(".goods").selectpicker('refresh');
                }
            }
            );
        });


    });


</script>

</body>
</html>