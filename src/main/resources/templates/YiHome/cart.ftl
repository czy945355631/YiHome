<!DOCTYPE html>
<html class="no-js" lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Furnilife - Furniture eCommerce Bootstrap4 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="icon" href="/YiHome/assets/images/favicon.ico">

    <!-- CSS
    ============================================ -->
    <!-- Bootstrap CSS -->
    <link href="/YiHome/assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- FontAwesome CSS -->
    <link href="/YiHome/assets/css/font-awesome.min.css" rel="stylesheet">

    <!-- Ionicons CSS -->
    <link href="/YiHome/assets/css/ionicons.min.css" rel="stylesheet">

    <!-- Plugins CSS -->
    <link href="/YiHome/assets/css/plugins.css" rel="stylesheet">

    <!-- Helper CSS -->
    <link href="/YiHome/assets/css/helper.css" rel="stylesheet">

    <!-- Main CSS -->
    <link href="/YiHome/assets/css/main.css" rel="stylesheet">

    <!-- Modernizer JS -->
    <script src="/YiHome/assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <#--icheck-->
    <link rel="stylesheet" href="/YiHome/assets/skins/all.css">
</head>

<body>


<!--=============================================
=            header container         =
=============================================-->

<#include "header.ftl">

    <!--=====  End of header container  ======-->

    <!--=============================================
    =            breadcrumb area         =
    =============================================-->

    <div class="breadcrumb-area pt-15 pb-15">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  breadcrumb container  =======-->

                    <div class="breadcrumb-container">
                        <nav>
                            <ul>
                                <li class="parent-page"><a href="/FgPage/goIndex">首页</a></li>
                                <li>Cart</li>
                            </ul>
                        </nav>
                    </div>

                    <!--=======  End of breadcrumb container  =======-->
                </div>
            </div>
        </div>
    </div>

    <!--=====  End of breadcrumb area  ======-->

    <!--=============================================
    =            Cart page content         =
    =============================================-->


    <div class="page-section mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="#" id="goodslist">
                        <!--=======  cart table  =======-->

                        <div class="cart-table table-responsive mb-40">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="checkbox"><input id="allOptionId" type="checkbox" class="all">全选</th>
                                    <th class="pro-thumbnail">商品图片</th>
                                    <th class="pro-title">商品名称</th>
                                    <th class="pro-price">单价</th>
                                    <th class="pro-quantity">数量</th>
                                    <th class="pro-subtotal">总价</th>
                                    <th class="pro-remove">移除</th>
                                </tr>
                                </thead>
                                <tbody id="carpage">

                                </tbody>
                            </table>
                        </div>

                        <!--=======  End of cart table  =======-->


                    </form>


                </div>
            </div>
        </div>
    </div>

    <!--=====  End of Cart page content  ======-->




    <!--=============================================
    =            footer         =
    =============================================-->

<#include "footer.ftl">
<!--=====  End of footer  ======-->

<!--=============================================
=            search overlay         =
=============================================-->

<div class="search-overlay" id="search-overlay">
    <a href="#" class="search-overlay-close" id="search-overlay-close"><i class="fa fa-times"></i></a>
    <div class="search-box">
        <input type="search" placeholder="Search entire store here">
        <button><i class="icon ion-md-search"></i></button>
    </div>
</div>

<!--=====  End of search overlay  ======-->

<!-- scroll to top  -->
<a href="#" class="scroll-top"></a>
<!-- end of scroll to top -->

<!-- JS
============================================ -->
<!-- jQuery JS -->
<script src="/YiHome/assets/js/vendor/jquery.min.js"></script>

<!-- Popper JS -->
<script src="/YiHome/assets/js/popper.min.js"></script>

<!-- Bootstrap JS -->
<script src="/YiHome/assets/js/bootstrap.min.js"></script>

<!-- Plugins JS -->
<script src="/YiHome/assets/js/plugins.js"></script>
<!--icheck JS-->
<script src="/YiHome/assets/js/icheck.js"></script>
<!-- Main JS -->
<script src="/YiHome/assets/js/main.js"></script>

<script>
    $(function () {
        showGoodsCar();
    })

    function showGoodsCar() {
        $.ajax({
            url: "/Cart/getGoodsCar",
            type: "post",
            contentType: "application/json",
            success: function (data) {
                var obj = JSON.parse(data);
                console.log(obj);
                if (obj != null) {
                    var sum = 0;
                    var count = 0;
                    var sumsumprice = 0;
                    $.each(obj, function (index, value) {
                        var goodscarid = value.id;
                        var goodsid = value.goodsid;
                        var goods = value.goods;
                        var store = goods.store;
                        var path = goods.path;
                        var quantity = Number(value.quantity);
                        // console.log(quantity)
                        var price = Number(goods.nowPrice);
                        var sumprice = Number(price) * Number(quantity);
                        sum += sumprice;
                        var goodsname = goods.goodsname;
                        var goodscartag = "<div class=\"cart-float-single-item d-flex\">\n" +
                            "                                            <span class=\"remove-item\" id=\"remove-item\"><a href=\"#\"><i class=\"icon ion-md-close\"></i></a></span>\n" +
                            "                                            <div class=\"cart-float-single-item-image\">\n" +
                            "                                                <a href=\"/Products?id=" + goodsid + "\"><img src=\"/asjy/file/" + path + "\" class=\"img-fluid\" alt=\"\"></a>\n" +
                            "                                            </div>\n" +
                            "                                            <div class=\"cart-float-single-item-desc\">\n" +
                            "                                                <p class=\"product-title\"> <a href=\"/Products?id=" + goodsid + "\">" + goodsname + "</a></p>\n" +
                            "                                                <p class=\"quantity\"> 数量: " + quantity + "</p>\n" +
                            "                                                <p class=\"price\">￥" + sumprice + "</p>\n" +
                            "                                            </div>\n" +
                            "                                        </div>";
                        $("#goodscar").append(goodscartag);

                        if (quantity == 1) {
                            var cart = "<tr>\n" +
                                "<th class=\"checkbox\" goodscarid=" + goodscarid + "><input class='check' type='checkbox'></th>" +
                                "          <td class=\"pro-thumbnail\"><a href=\"/Products?id=" + goodsid + "\"><img src=\"/asjy/file/" + path + "\" class=\"img-fluid\" alt=\"Product\"></a></td>\n" +
                                "          <td class=\"pro-title\"><a href=\"/Products?id=" + goodsid + "\">" + goodsname + "</a></td>\n" +
                                "          <td class=\"pro-price\"><span>" + price + "</span></td>\n" +
                                "          <td class=\"pro-quantity\"><div class=\"pro-qty mb-20\"><input type=\"text\" goodsid='"+goodsid+"' value=\"" + quantity + "\" disabled>" +
                                "<a href=\"#\" class=\"inc qty-btn\" onclick='addGoodstoCar(" + goodsid + ",1," + store + ")' >+</a>" +
                                "<a href=\"#\" class= \"dec qty-btn\" disabled='disabled'>-</a>" +
                                "</div></td> \n" +
                                "          <td class=\"pro-subtotal\"><span>￥" + sumprice + "</span></td>\n" +
                                "          <td class=\"pro-remove\"><a herf='#' onclick='decGoodstoCar(" + goodsid + ",-1," + store + ")' ><i class=\"fa fa-trash-o\"></i></a></td>\n" +
                                "      </tr>";
                        } else {
                            var cart = "<tr>\n" +
                                "<th class=\"checkbox\" goodscarid=" + goodscarid + "><input class='check'  type=\"checkbox\"></th>" +
                                "          <td class=\"pro-thumbnail\"><a href=\"/Products?id=" + goodsid + "\"><img src=\"/asjy/file/" + path + "\" class=\"img-fluid\" alt=\"Product\"></a></td>\n" +
                                "          <td class=\"pro-title\"><a href=\"/Products?id=" + goodsid + "\">" + goodsname + "</a></td>\n" +
                                "          <td class=\"pro-price\"><span>" + price + "</span></td>\n" +
                                "          <td class=\"pro-quantity\"><div class=\"pro-qty mb-20\"><input type=\"text\" goodsid='"+goodsid+"' value=\"" + quantity + "\" disabled>" +
                                "<a href=\"#\" class=\"inc qty-btn\" onclick='addGoodstoCar(" + goodsid + ",1," + store + ")' >+</a>" +
                                "<a href=\"#\" class= \"dec qty-btn\" onclick='decGoodstoCar(" + goodsid + ",1," + store + ")'>-</a>" +
                                "</div></td> \n" +
                                "          <td class=\"pro-subtotal subtotal\" value = " + sumprice + "><span>￥" + sumprice + "</span></td>\n" +
                                "          <td class=\"pro-remove\"><a herf='#' onclick='decGoodstoCar(" + goodsid + ",-1," + store + ")' ><i class=\"fa fa-trash-o\"></i></a></td>\n" +
                                "      </tr>";

                        }


                        $("#carpage").append(cart);
                        count++;
                    });
                    $("#goodscar").parent().parent().find("a").find("h5").html("￥" + sum);
                    $("#goodscar").parent().parent().find("a").find("p").html(count + "件商品")
                    $("#sum").html("￥" + sum);
                }

                $('input[type="checkbox"]').iCheck({
                    handle: 'checkbox',
                    checkboxClass: 'icheckbox_flat-red',
                    radioClass: 'iradio_flat-red'
                });

                var checkAll = $('#allOptionId');  //全选的input
                var checkboxs = $('input.check'); //所有单选的input

                checkAll.on('ifChecked ifUnchecked', function (event) {
                    if (event.type == 'ifChecked') {
                        checkboxs.iCheck('check');
                    } else {
                        checkboxs.iCheck('uncheck');
                    }
                });

                checkboxs.on('ifChanged', function (event) {
                    if (checkboxs.filter(':checked').length == checkboxs.length) {
                        checkAll.prop('checked', true);
                    } else {
                        checkAll.prop('checked', false);
                    }
                    checkAll.iCheck('update');
                })
                /*----------   Quantity Counter  ----------*/
                $('.qty-btn').on('click', function (e) {
                    e.preventDefault();
                    var $button = $(this);
                    var oldValue = $button.parent().find('input').val();
                    if ($button.hasClass('inc')) {
                        var newVal = parseFloat(oldValue) + 1;

                    } else {
                        // Don't allow decrementing below zero
                        if (oldValue > 1) {
                            var newVal = parseFloat(oldValue) - 1;
                        } else {
                            newVal = 1;
                        }
                    }
                    $button.parent().find('input').attr("value", newVal)
                });
                var summary = "<div id='cartsummary' class=\"row\">\n" +
                    "\n" +
                    "                        <div class=\"col-lg-6 col-12\">\n" +
                    "                            <!--=======  Calculate Shipping  =======-->\n" +
                    "                            <!--=======  End of Discount Coupon  =======-->\n" +
                    "                        </div>\n" +
                    "                        <div class=\"col-lg-6 col-12 d-flex\">\n" +
                    "                            <!--=======  Cart summery  =======-->\n" +
                    "                            <div class=\"cart-summary\">\n" +
                    "                                <div class=\"cart-summary-wrap\">\n" +
                    "                                    <h4>购物车摘要</h4>\n" +
                    "                                    <p>小计<span>￥0.00</span></p>\n" +
                    "                                    <p>运费<span>￥0.00</span></p>\n" +
                    "                                    <h2>总计<span>￥0.00</span></h2>\n" +
                    "                                </div>\n" +
                    "                                <div class=\"cart-summary-button\">\n" +
                    "                                    <button class=\"checkout-btn\">结算</button>\n" +
                    "                                    <button class=\"update-btn\">更新购物车</button>\n" +
                    "                                </div>\n" +
                    "                            </div>\n" +
                    "                            <!--=======  End of Cart summery  =======-->\n" +
                    "                        </div>\n" +
                    "                    </div>"
                $("#goodslist").append(summary);
                showprice();
            }
        })
    }

    function addGoodstoCar(goodsid, quantity, store) {
        var shuliang = $("input[goodsid="+goodsid+"]").val()
        //添加到购物车

            // 判断是单页还是首页，如果为单页

            quantity = $("#quantity").val();
            if ((shuliang*1+1) > store) {

                //判断是否大于库存
                alert("库存不足")
                $("#goodscar").html("");
                $("#carpage").html("");
                showGoodsCar();
                $("#cartsummary").remove();
                return false;
            }
            //如果为首页，指定库存为1
            quantity = 1;
        $.ajax({
            url: "/Cart/AddGoodsCart",
            type: "post",
            data: {goodsid: goodsid, quantity: quantity},
            success: function (data) {
                $("#goodscar").html("");
                $("#carpage").html("");
                showGoodsCar();
                $("#cartsummary").remove();
            }
        })
    }

    function decGoodstoCar(goodsid, quantity, store) {
        //删除购物车
        if (quantity == -1) {
            // 判断是减少还是清空，如果为清空
            quantity = store;
            if (quantity > store) {
                //判断是否大于库存
                alert("库存不足");
                return;
            }
        }
        $.ajax({
            url: "/Cart/decGoodsCart",
            type: "post",
            data: {goodsid: goodsid, quantity: quantity},
            success: function (data) {
                $("#goodscar").html("");
                $("#carpage").html("");
                showGoodsCar();
                $("#cartsummary").remove();
            }
        })
    }

    var arr = [];
    function showprice() {
        var checkboxs = $('input.check');
        checkboxs.on('ifChanged', function (event) {
            var checkedbox = $('input.check:checked');
            // alert(checkedbox.length);
            arr = [];
            checkedbox.each(function () {
                var singlevalue = $(this).parent().parent().attr("goodscarid")
                arr.push(singlevalue);
            })
            // 向后台发送选中的购物车，获得总价
            arr = arr.toString()
            console.log(arr)
            $.ajax({
                url: "/Cart/getCartSummary",
                type: "post",
                data: {arr: arr},
                success: function (data) {
                    $("#cartsummary").remove();
                    var summary = "<div id='cartsummary' class=\"row\">\n" +
                        "\n" +
                        "                        <div class=\"col-lg-6 col-12\">\n" +
                        "                            <!--=======  Calculate Shipping  =======-->\n" +
                        "                            <!--=======  End of Discount Coupon  =======-->\n" +
                        "                        </div>\n" +
                        "                        <div class=\"col-lg-6 col-12 d-flex\">\n" +
                        "                            <!--=======  Cart summery  =======-->\n" +
                        "                            <div class=\"cart-summary\">\n" +
                        "                                <div class=\"cart-summary-wrap\">\n" +
                        "                                    <h4>购物车摘要</h4>\n" +
                        "                                    <p>小计<span>￥" + data + "</span></p>\n" +
                        "                                    <p>运费<span>￥0.00</span></p>\n" +
                        "                                    <h2>总计<span>￥" + data + "</span></h2>\n" +
                        "                                </div>\n" +
                        "                                <div class=\"cart-summary-button\">\n" +
                        "                                    <button type='button' onclick=\"javascrtpt:window.location.href='/CheckOut/showorder?arr="+arr+"'\" class=\"checkout-btn\">结算</button>\n" +
                        "                                    <button class=\"update-btn\">更新购物车</button>\n" +
                        "                                </div>\n" +
                        "                            </div>\n" +
                        "                            <!--=======  End of Cart summery  =======-->\n" +
                        "                        </div>\n" +
                        "                    </div>"
                    $("#goodslist").append(summary);

                }
            })
        });
    }


    // function toCheckout(arr) {
    //     $.ajax({
    //         type: "POST",
    //         url: "/CheckOut/showorder",//你的请求程序页面随便啦
    //         async: false,//同步：意思是当有返回值以后才会进行后面的js程序。
    //         data: {arr: arr},//请求需要发送的处理数据
    //         success: function (msg) {
    //             alert("ok")
    //             window.location.href = '你的跳转的目标地址';
    //         }
    //     })
    // }

</script>


</body>

</html>
