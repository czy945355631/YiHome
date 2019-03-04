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
    <!-- 引入ckeditor.js文件 -->

    <link href="/YiHomeManagerSystem/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/YiHomeManagerSystem/assets/plugins/bootstrap-select/dist/css/bootstrap-select.css" rel="stylesheet">
    <link href="/YiHomeManagerSystem/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="/YiHomeManagerSystem/assets/plugins/icomoon/style.css" rel="stylesheet">
    <link href="/YiHomeManagerSystem/assets/plugins/uniform/css/default.css" rel="stylesheet"/>
    <link href="/YiHomeManagerSystem/assets/plugins/switchery/switchery.min.css" rel="stylesheet"/>
    <link href="/YiHomeManagerSystem/assets/plugins/plupload/js/jquery.plupload.queue/css/jquery.plupload.queue.css" rel="stylesheet" type="text/css"/>
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
            <h3 class="breadcrumb-header">新增商品</h3>
        </div>
        <div id="main-wrapper">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-white">
                        <div class="panel-body">
                            <form class="form-inline" action="../../BsPage/goods/doGoodsAdd" method="post" enctype="multipart/form-data">
                                <div class="panel-title">
                                    <div class="seq">商品名称</div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="goodsname" placeholder="商品名称">
                                    </div>
                                    <div class="seq">商品上下架</div>
                                    <div class="form-group">
                                        <input type ="checkbox" value ="0" name ="showstatus" onclick ="this.value =(this.value == 0)?1:0">
                                    </div>
                                </div>

                                <div class="panel-title">
                                    <div class="seq">商品品牌</div>
                                    <div class="form-group">
                                        <select name="brandId" id="" class="form-control">
                                            <#list brands as brands>
                                                <option value="${brands.id}">${brands.brandname}</option>
                                            </#list>
                                        </select>
                                    </div>
                                    <div class="seq">商品分类</div>
                                    <div class="form-group">
                                        <select name="classesId" id="" class="form-control">
                                            <#list classes as classes>
                                                <option value="${classes.id}">${classes.classesname}</option>
                                            </#list>
                                        </select>
                                    </div>
                                </div>

                                <div class="panel-title">
                                    <div class="seq">商品原价</div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="oldPrice" placeholder="商品原价">
                                    </div>
                                    <div class="seq">商品现价</div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" name="nowPrice" placeholder="商品现价">
                                    </div>
                                </div>
                                <div class="panel-title">
                                    <div class="seq">商品货号</div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="artno" placeholder="商品货号">
                                    </div>
                                    <div class="seq">商品库存</div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="store" placeholder="商品库存">
                                    </div>
                                </div>
                                <div class="panel-title">
                                    <div class="seq">商品体积</div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="volume" placeholder="商品体积">
                                    </div>
                                    <div class="seq">商品重量</div>
                                    <div class="form-group">
                                        <input type="number" class="form-control" name="weight" placeholder="商品重量">
                                    </div>
                                </div>

                                <div class="panel-body">
                                    <div class="panel-title">
                                        <div class="seq">规格</div>
                                        <div class="value">规格值</div>
                                    </div>
                                    <div id="specvform">
                                        <div class="form-item">
                                            <#--规格1-->
                                            <div class="form-group">
                                                <select name="spec[0].id" class="form-control spec">
                                                    <option value="-1">请选择规格</option>
                                                    <#list spec as spec>
                                                        <option value="${spec.id}">${spec.specname}</option>
                                                    </#list>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <#--multiple 多选-->
                                                <#--<select id="specv0" class="selectpicker specv" multiple>-->
                                                <select id="specv0" name="spec[0].specValues[0].id" class="selectpicker specv">
                                                    <option id="specvdefault" value="-1 ">请选择规格</option>
                                                </select>
                                            </div>

                                        </div>

                                        <div class="form-item">
                                            <#--规格2-->
                                            <div class="form-group">
                                                <select name="spec[1].id"  class="form-control spec">
                                                    <option value="-1">请选择规格</option>
                                                    <#list spec as spec>
                                                        <option value="${spec.id}">${spec.specname}</option>
                                                    </#list>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <#--<select id="specv1" class="selectpicker specv" multiple >-->
                                                <select id="specv1" name="spec[1].specValues[0].id" class="selectpicker specv">
                                                    <option id="specvdefault" value="-1">请选择规格</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="panel-title">
                                    <div class="seq">商品详情</div>
                                    <textarea name="datails" id="editor1" rows="10" cols="80"></textarea>
                                </div>
                                <div id="main-wrapper">
                                    <div class="panel-heading clearfix">
                                        <h4 class="panel-title">商品主图1</h4>
                                        <input type="file" name="path-1">
                                    </div>
                                    <div class="panel-heading clearfix">
                                        <h4 class="panel-title">商品主图2</h4>
                                        <input type="file" name="path-2">
                                    </div>
                                    <input type="submit" value="提交" onclick="fun()">
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
<script src="/YiHomeManagerSystem/assets/plugins/plupload/js/plupload.full.min.js"></script>
<script src="/YiHomeManagerSystem/assets/plugins/plupload/js/jquery.plupload.queue/jquery.plupload.queue.min.js"></script>
<script src="/YiHomeManagerSystem/assets/js/ecaps.min.js"></script>
<script src="/YiHomeManagerSystem/assets/js/pages/form-file-upload.js"></script>
<script src="/YiHomeManagerSystem/assets/ckeditor/ckeditor.js"></script>
<script>
    var count2 = 1;
    // 替换 <textarea id="editor1">为CKEditor实例
    // 使用默认配置
    CKEDITOR.replace( 'editor1' );

    $(document).ready(function () {
        $("#specvform").on("click",".del",function(e){
            if (count2 == 1){
                alert("必须留有一项")
            } else{
                count2 --;
                $(e.target).parent().parent().hide();
            }

        });
        $("#specvform").on("click",".add",function(e){
            if (count2 == 2){
                alert("只能添加两项")
            }else{
                count2++
                $("#spec2").show();
            }
        });

        $(".spec").change(function(e){
            var specid = $(e.target).val();
            $.ajax({
                url:"/Bsjson/getGoodsaddPageSpecvlist",
                type:"post",
                data:{specid:specid},
                success:function(data){
                    $(e.target).parent().parent().find(".specv").find("option").remove();
                    data.list.forEach(function (item, index) {
                        var specv = "<option hidden value=" + item.id + ">" + item.specvname + "</option>"
                        $(e.target).parent().parent().find(".specv").append(specv);
                    });
                    $(e.target).parent().parent().find(".specv").selectpicker('refresh');
                }
            });
        });
    });


    // function fun(){
    //     var obj0 = document.getElementById("specv0");
    //     $("#specv0").parent().find("[type='hidden']").remove()
    //     for(var i=0;i<obj0.options.length;i++){
    //         if(obj0.options[i].selected){
    //             var specv0 = ' <input type="hidden" id="spec0specv" value="'+obj0.options[i].value+'" name="spec[0].specValues['+i+'].id"> '
    //             $("#specv0").parent().append(specv0);
    //         }
    //     }
    //
    //     var obj1 = document.getElementById("specv1");
    //     $("#specv1").parent().find("[type='hidden']").remove()
    //     for(var i=0;i<obj1.options.length;i++){
    //         if(obj1.options[i].selected){
    //         var specv1 = ' <input type="hidden" id="spec0specv" value="'+obj1.options[i].value+'" name="spec[1].specValues['+i+'].id"> '
    //             $("#specv1").parent().append(specv1);
    //         }
    //     }
    //
    // }
</script>


</body>
</html>