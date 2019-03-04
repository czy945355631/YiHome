<!DOCTYPE html>
<html class="no-js" lang="zxx">

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
								<li>Checkout</li>
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
	=            Checkout page content         =
	=============================================-->
	
	<div class="page-section mb-50">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    
                    <!-- Checkout Form s-->
                    <form action="#" class="checkout-form">
                        <div class="row row-40">
                            
                            <div class="col-lg-12 mb-20">

                                <!-- Billing Address -->
                                <div id="billing-form" class="mb-40">
                                    <h4 class="checkout-title"> 确认地址</h4>
                                </div>
                                <a href="#chooseAddressModal" data-toggle="modal" id="defaultaddress" style="display: block;">

                                </a>
                            </div>
                            <!-- 模态框（Modal） -->
                            <div class="modal fade" id="chooseAddressModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="myModalLabel">选择地址</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        </div>
                                        <div class="modal-body">
                                            <#--循环显示所有地址-->
                                            <div class="list-group" id="chooseaddress">

                                            </div>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" href="#addressmanage" data-toggle="modal" class="btn btn-primary">管理地址</button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                            <!-- 模态框（Modal） -->
                            <div class="modal fade" id="addressmanage" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="myModalLabel">地址管理</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="list-group" id="updateaddress" onclick="ChooseAdress(event)">
                                            </div>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" href="#addressAdd" data-toggle="modal" class="btn btn-primary">新增地址</button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                            <!-- 模态框（Modal） -->
                            <div class="modal fade" id="addressAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="myModalLabel">新增地址</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        </div>
                                        <div class="modal-body">
                                            <form id="addaddressform" onsubmit="return false" action="##" method="post">
                                                <div class="form-group">
                                                    <input placeholder="收货人" name="name" id="addname" type="text" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <input placeholder="联系电话" name="tel" id="addtel" type="text" class="form-control" >
                                                </div>

                                                <div class="form-group" style="display:flex;" id="target"><!-- container -->
                                                    <select class="form-control col-md-3" name="provinces" id="addprovinces" style="margin-right: 10px;"></select><!-- 省 -->
                                                    <select class="form-control col-md-3" name="city" id="addcity" style="margin-right: 10px;"></select><!-- 市 -->
                                                    <select class="form-control col-md-3" name="county" id="addcounty" style="margin-right: 10px;"></select><!-- 区 -->
                                                </div>

                                                <div class="form-group">
                                                    <input placeholder="详细地址" name="address" id="adddaddress" type="text" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <input placeholder="邮政编码" name="zip" id="addzip" type="text" class="form-control" required>
                                                </div>

                                                <div class="checkbox" style="float: right">
                                                    <label>
                                                        <input name="defaultstatus" value="0" id="adddefaultstatus" onclick="this.value=(this.value==0)?1:0" type="checkbox" ">默认地址
                                                    </label>
                                                </div>
                                            </form>

                                        </div>


                                        <div class="modal-footer">
                                            <button type="button" onclick="addaddress()" class="btn btn-primary">保存</button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->
                            <!-- 模态框（Modal） -->
                            <div class="modal fade" id="addressUpdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="myModalLabel">修改地址</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        </div>
                                        <div class="modal-body">
                                            <form id="updateaddressform" onsubmit="return false" action="##" method="post">
                                                <div class="form-group">
                                                    <input placeholder="收货人" name="name" type="text" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <input placeholder="联系电话" name="tel" type="text" class="form-control" >
                                                </div>

                                                <div class="form-group" style="display:flex;" id="updatecity"><!-- container -->
                                                    <select class="form-control col-md-3" name="provinces" style="margin-right: 10px;"></select><!-- 省 -->
                                                    <select class="form-control col-md-3" name="city" style="margin-right: 10px;"></select><!-- 市 -->
                                                    <select class="form-control col-md-3" name="county" style="margin-right: 10px;"></select><!-- 区 -->
                                                </div>

                                                <div class="form-group">
                                                    <input placeholder="详细地址" name="address" type="text" class="form-control" required>
                                                </div>
                                                <div class="form-group">
                                                    <input placeholder="邮政编码" name="zip" type="text" class="form-control" required>
                                                </div>

                                                <div class="checkbox" style="float: right">
                                                    <label>
                                                        <input name="defaultstatus" value="0" onclick="this.value=(this.value==0)?1:0" type="checkbox" ">默认地址
                                                    </label>
                                                </div>
                                            </form>

                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary">保存</button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div>
                            <!-- /.modal -->






                            <div class="col-lg-12">
                                <div class="row">
                                    
                                    <!-- Cart Total -->
                                    <div class="col-12 mb-60">
                                    
                                        <h4 class="checkout-title">商品详情</h4>
                                
                                        <div class="checkout-cart-total">
    
                                            <h4>商品 <span>总价</span></h4>
                                            
                                            <ul>

                                                <#assign x = 0>
                                                <#assign carlist ></#assign>
                                                <#list goodsCarList as goodsList>
                                                    <li>${goodsList.goods.goodsname} X ${goodsList.quantity} <span>￥${goodsList.goods.nowPrice*goodsList.quantity}.00</span></li>
                                                    <#assign carlist =carlist+goodsList.id+",">
                                                    <#assign x = x+(goodsList.goods.nowPrice*goodsList.quantity)>
                                                </#list>
                                            </ul>

                                            <p>小计 <span>￥${x}.00</span></p>
                                            <p>运费 <span>￥0.00</span></p>
                                            
                                            <h4>总计 <span>￥${x}.00</span></h4>
                                            
                                        </div>
                                        
                                    </div>
                                    
                                    <!-- Payment Method -->
                                    <div class="col-12">
                                    
                                        <h4 class="checkout-title">支付方式</h4>

                                        <div class="checkout-payment-method">

                                            <div class="single-method">
                                                <input type="radio" id="payment_bank" name="payment-method" value="bank">
                                                <label for="payment_bank">Direct Bank Transfer</label>
                                                <p data-method="bank">Please send a Check to Store name with Store Street, Store Town, Store State, Store Postcode, Store Country.</p>
                                            </div>



                                            <div class="single-method">
                                                <input type="radio" id="payment_paypal" name="payment-method" value="paypal">
                                                <label for="payment_paypal">Paypal</label>
                                                <p data-method="paypal">Please send a Check to Store name with Store Street, Store Town, Store State, Store Postcode, Store Country.</p>
                                            </div>

                                            <div class="single-method">
                                                <input type="radio" id="payment_payoneer" name="payment-method" value="payoneer">
                                                <label for="payment_payoneer">Payoneer</label>
                                                <p data-method="payoneer">Please send a Check to Store name with Store Street, Store Town, Store State, Store Postcode, Store Country.</p>
                                            </div>

                                            <div class="single-method">
                                                <input type="checkbox" id="accept_terms">
                                                <label for="accept_terms">I’ve read and accept the terms & conditions</label>
                                            </div>

                                        </div>
                                        
                                        <button type="button" id="addorder"  class="place-order">提交订单</button>
                                        
                                    </div>
                                    
                                </div>
                            </div>
                            
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>
    
    <!--=====  End of Checkout page content  ======-->
    
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

	<!-- Main JS -->
	<script src="/YiHome/assets/js/main.js"></script>

    <script src="/YiHome/assets/js/distpicker.common.js"></script>
    <script src="/YiHome/assets/js/distpicker.esm.js"></script>
    <script src="/YiHome/assets/js/distpicker.js"></script>
    <!-- goodscar JS -->
    <script src="../YiHome/assets/js/goodscar.js"></script>

    <script >
        $(
            function () {
                $('#target').distpicker();
                $('#updatecity').distpicker();
                findAddress();
            }
        )
        var addresslist;
        function findAddress() {
            $.ajax({
                type:"POST",
                dataType:"json",
                url:"/Account/findAddress",
                success:function(result){
                    console.log(result);
                    addresslist = result;
                    $("#defaultaddress").html("")
                    $("#chooseaddress").html("")
                    var checkDefaultAddress
                    $.each(result,function (index,element) {
                        var name = element.name;
                        var tel = element.tel;
                        var provinces = element.provinces;
                        var city = element.city;
                        var county = element.county;
                        var address =element.address;
                        var id = element.id;
                        if (element.defaultstatus == 1){
                            checkDefaultAddress = true;
                            var url = "/CheckOut/addOrder?goodsCarList=${carlist}&address="+id;
                            $("#addorder").click(function () {
                                javascrtpt:window.location.href=url
                            })
                            var address2 = "<div>\n" +
                                "                                        <ul class=\"list-group\">\n" +
                                "                                            <li class=\"list-group-item\">\n" +
                                "                                                <h4>"+name+" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+tel+"</h4>\n" +
                                "                                                "+provinces+city+county+" <br>\n" +
                                "                                                "+address+"\n" +
                                "                                            </li>\n" +
                                "                                        </ul>\n" +
                                "                                    </div>"
                            $("#defaultaddress").append(address2);
                            var defau = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class=\"fa fa-tags\" aria-hidden=\"true\"></i>默认"
                        }else {
                            var defau = ""
                        }


                        var alladdress = "<a href='#' onclick='changeAddress("+id+")' aaa='aaa' class=\"list-group-item list-group-item-action flex-column align-items-start\">\n" +
                            "                                                            <div class=\"d-flex w-100 justify-content-between\">\n" +
                            "                                                                <h5 class=\"mb-1\">"+name+"        "+tel+defau+"</h5>\n" +
                            "                                                            </div>\n" +
                            "                                                            <p class=\"mb-1\">"+provinces+city+county+address+"</p>\n" +
                            "                                                        </a>"
                        $("#chooseaddress").append(alladdress);
                        if (element.defaultstatus == 1){

                            var defau = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class=\"fa fa-tags\" aria-hidden=\"true\"></i>默认"
                        }else {
                            var defau = ""
                        }


                        var alladdress = "<a href=\"#\" aaa='aaa' class=\"list-group-item list-group-item-action flex-column align-items-start\">\n" +
                            "                                                            <div class=\"d-flex w-100 justify-content-between\">\n" +
                            "                                                                <h5 class=\"mb-1\">"+name+"        "+tel+defau+"</h5>\n" +
                            "                                                                <small><i class=\"fa fa-pencil\"></i></small>\n" +
                            "                                                            </div>\n" +
                            "                                                            <p class=\"mb-1\">"+provinces+city+county+address+"</p>\n" +
                            "                                                        </a>"
                        $("#updateaddress").append(alladdress)


                    })
                    if (checkDefaultAddress != true) {

                        $('#addressAdd').modal('show')
                    }



                }
            })

        }
        function changeAddress(id) {
            $("#defaultaddress").html("")
            $.each(addresslist,function (index,element) {
                var name = element.name;
                var tel = element.tel;
                var provinces = element.provinces;
                var city = element.city;
                var county = element.county;
                var address =element.address;
                if (element.id == id) {
                    var address2 = "<div>\n" +
                        "                                        <ul class=\"list-group\">\n" +
                        "                                            <li class=\"list-group-item\">\n" +
                        "                                                <h4>" + name + " &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + tel + "</h4>\n" +
                        "                                                " + provinces + city + county + " <br>\n" +
                        "                                                " + address + "\n" +
                        "                                            </li>\n" +
                        "                                        </ul>\n" +
                        "                                    </div>"
                    $("#defaultaddress").append(address2);
                }

            })
            $('#chooseAddressModal').modal('hide')
            var url = "/CheckOut/addOrder?goodsCarList=${carlist}&address="+id
            $("#addorder").click(function () {
                javascrtpt:window.location.href=url
            })
        }

        function addaddress() {
            var form = new FormData(document.getElementById("addaddressform"));
            form.append("name", $("#addname").val());
            form.append("tel", $("#addtel").val());
            form.append("provinces", $("#addprovinces").val());
            form.append("city", $("#addcity").val());
            form.append("county", $("#addcounty").val());
            form.append("address", $("#adddaddress").val());
            form.append("zip", $("#addzip").val());
            form.append("defaultstatus", $("#adddefaultstatus").val());
            // console.log(form.get("name"));

            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "/Account/addAddress" ,//url
                data: form,
                processData:false,
                contentType:false,
                success: function (result) {
                    console.log(result);//打印服务端返回的数据(调试用)
                    $('#addressAdd').modal('hide')
                    findAddress();
                },
                error : function() {
                    $('#addressAdd').modal('hide')
                    findAddress();
                }
            });
        }
    </script>

</body>

</html>
