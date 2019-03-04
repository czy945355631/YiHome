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
        <title>Home</title>
        <!-- Styles -->
        <#---->
        <link href="../YiHomeManagerSystem/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../YiHomeManagerSystem/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="../YiHomeManagerSystem/assets/plugins/icomoon/style.css" rel="stylesheet">
        <link href="../YiHomeManagerSystem/assets/plugins/uniform/css/default.css" rel="stylesheet"/>
        <link href="../YiHomeManagerSystem/assets/plugins/switchery/switchery.min.css" rel="stylesheet"/>
        <link href="../YiHomeManagerSystem/assets/plugins/nvd3/nv.d3.min.css" rel="stylesheet">  
      
        <!-- Theme Styles -->
        <link href="../YiHomeManagerSystem/assets/css/ecaps.min.css" rel="stylesheet">
        <link href="../YiHomeManagerSystem/assets/css/custom.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
            <#include "header.ftl">
            <div class="page-inner">
                <div class="page-title">
                    <h3 class="breadcrumb-header">控制台</h3>
                </div>
                <div id='main' style='width:600px;height:400px;'></div>
            </div>
            <#include "footer.ftl">
        <!-- Javascripts -->
        <script src="../YiHomeManagerSystem/assets/plugins/jquery/jquery-3.1.0.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/uniform/js/jquery.uniform.standalone.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/switchery/switchery.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/d3/d3.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/nvd3/nv.d3.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/flot/jquery.flot.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/flot/jquery.flot.time.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/flot/jquery.flot.symbol.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/flot/jquery.flot.resize.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/flot/jquery.flot.pie.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/plugins/chartjs/chart.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/js/ecaps.min.js"></script>
        <script src="../YiHomeManagerSystem/assets/js/pages/dashboard.js"></script>
        <script src='../YiHomeManagerSystem/assets/js/echarts.min.js'></script>
        <script>
            //基于准备好的DOM，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));

            var option = {
                title:{
                    text:'七日销售额'
                },
                //提示框组件
                tooltip:{
                    //坐标轴触发，主要用于柱状图，折线图等
                    trigger:'axis'
                },
                //图例
                legend:{
                    data:['销量']
                },
                //横轴
                xAxis:{
                    data:[<#list echarts as list>'${list.days}',</#list>]
                },
                //纵轴
                yAxis:{},
                //系列列表。每个系列通过type决定自己的图表类型
                series:[{
                    name:'日期',
                    //折线图
                    type:'line',
                    data:[<#list echarts as list>${list.sumprice?c},</#list>]
                }]
            };
            $(function () {
                myChart.setOption(option);

            })
        </script>
    </body>
</html>