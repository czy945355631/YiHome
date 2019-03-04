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
								<li>个人中心</li>
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
    =            My Account page content         =
    =============================================-->

    <div class="page-section mb-50">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="row">
						<!-- My Account Tab Menu Start -->
						<div class="col-lg-3 col-12">
							<div class="myaccount-tab-menu nav" role="tablist">
								<a href="#dashboad" class="active" data-toggle="tab"><i class="fa fa-dashboard"></i>
									仪表盘</a>

								<a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i> 订单</a>

								<a href="#payment-method" data-toggle="tab"><i class="fa fa-credit-card"></i> 支付方式</a>

								<a href="#address-edit" data-toggle="tab"><i class="fa fa-map-marker"></i> 地址管理</a>

								<a href="#account-info" data-toggle="tab"><i class="fa fa-user"></i> 账户详情</a>

								<a href="login-register.html"><i class="fa fa-sign-out"></i> 登出</a>
							</div>
						</div>
						<!-- My Account Tab Menu End -->

						<!-- My Account Tab Content Start -->
						<div class="col-lg-9 col-12">
							<div class="tab-content" id="myaccountContent">
								<!-- Single Tab Content Start -->
								<div class="tab-pane fade show active" id="dashboad" role="tabpanel">
									<div class="myaccount-content">
										<h3>仪表盘</h3>

										<div class="welcome mb-20">
											<p>Hello, <strong>Alex Tuntuni</strong> (If Not <strong>Tuntuni !</strong><a href="login-register.html" class="logout"> Logout</a>)</p>
										</div>

										<p class="mb-0">From your account dashboard. you can easily check &amp; view your
											recent orders, manage your shipping and billing addresses and edit your
											password and account details.</p>
									</div>
								</div>
								<!-- Single Tab Content End -->

								<!-- Single Tab Content Start -->
								<div class="tab-pane fade" id="orders" role="tabpanel">
									<div class="myaccount-content">
										<h3>订单</h3>

										<div class="myaccount-table table-responsive text-center">
											<table class="table table-bordered">
												<thead class="thead-light">
												<tr>
													<th>编号</th>
													<th>姓名</th>
													<th>手机</th>
													<th>日期</th>
													<th>总价</th>
												</tr>
												</thead>

												<tbody>
												<#if orderlist??>
													<#list orderlist as list>
														<tr>
															<td>${list.orderid}</td>
															<td>${list.name}</td>
															<td>${list.tel}</td>
															<td>${list.addtime}</td>
															<td>￥${list.price}</td>
														</tr>
													</#list>
												</#if>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<!-- Single Tab Content End -->


								<!-- Single Tab Content Start -->
								<div class="tab-pane fade" id="payment-method" role="tabpanel">
									<div class="myaccount-content">
										<h3>支付方式</h3>

										<p class="saved-message">You Can't Saved Your Payment Method yet.</p>
									</div>
								</div>
								<!-- Single Tab Content End -->

								<!-- Single Tab Content Start -->
								<div class="tab-pane fade" id="address-edit" role="tabpanel">
									<div class="myaccount-content">

										<h3>地址管理</h3>
                                        <div class="row" id="addressmessage">


                                        </div>

										<a href="#addressmanage" data-toggle="modal" class="btn d-inline-block edit-address-btn"><i class="fa fa-edit"></i>地址管理</a>
									</div>
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
                                                            <input placeholder="收货人" name="name" type="text" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <input placeholder="联系电话" name="tel" type="text" class="form-control" >
                                                        </div>

														<div class="form-group" style="display:flex;" id="target"><!-- container -->
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
															<input placeholder="收货人" id="upname" name="name" type="text" class="form-control">
														</div>
														<div class="form-group">
															<input placeholder="联系电话" id="uptel" name="tel" type="text" class="form-control" >
														</div>

														<div class="form-group" style="display:flex;" id="updatecity"><!-- container -->
															<select class="form-control col-md-3" id="upprovinces" name="provinces" style="margin-right: 10px;"></select><!-- 省 -->
															<select class="form-control col-md-3" id="upcity" name="city" style="margin-right: 10px;"></select><!-- 市 -->
															<select class="form-control col-md-3" id="upcounty" name="county" style="margin-right: 10px;"></select><!-- 区 -->
														</div>

														<div class="form-group">
															<input placeholder="详细地址" name="address" id="upaddress" type="text" class="form-control" required>
														</div>
														<div class="form-group">
															<input placeholder="邮政编码" name="zip" id="upzip" type="text" class="form-control" required>
														</div>

														<div class="checkbox" style="float: right">
															<label>
																<input name="defaultstatus" value="0" id="updefaultstatus" onclick="this.value=(this.value==0)?1:0" type="checkbox" ">默认地址
															</label>
														</div>
													</form>

												</div>

                                                <div class="modal-footer">
                                                    <button type="button" onclick="upaddress(upid)" class="btn btn-primary">保存</button>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->




								</div>
								<!-- Single Tab Content End -->

								<!-- Single Tab Content Start -->
								<div class="tab-pane fade" id="account-info" role="tabpanel">
									<div class="myaccount-content">
										<h3>账户详情</h3>

										<div class="account-details-form">
											<form action="/Account/changeAccount" id="account" method="post">
												<div class="row">
													<div class="col-lg-6 col-12 mb-30">
														<input id="first-name" name="userRealname" placeholder="姓名" value="<#if user??>${user.userRealname!}</#if>" type="text">
													</div>


													<div class="col-lg-6 col-12 mb-30">
														<input id="display-name" name="userUsername" placeholder="昵称" value="<#if user??>${user.userUsername!}</#if>" type="text">
													</div>
													<div class="col-12 mb-30">
														<input id="tel" name="userTel" placeholder="手机号码" value="<#if user??>${user.userTel!}</#if>" type="number">
													</div>

													<div class="col-12 mb-30">
														<input id="email" name="userEmail" placeholder="电子邮箱" value="<#if user??>${user.userEmail!}</#if>" type="email">
													</div>
													<div class="col-12">
														<button type="submit" class="save-change-btn">更改个人信息</button>
													</div>


												</div>
											</form>
											<form action="">
												<div class="row">
													<div class="col-12 mb-30"><h3>更改密码</h3></div>

													<div class="col-12 mb-30">
														<input id="current-pwd" placeholder="原密码" type="password">
													</div>

													<div class="col-lg-6 col-12 mb-30">
														<input id="new-pwd" placeholder="新密码" type="password">
													</div>

													<div class="col-lg-6 col-12 mb-30">
														<input id="confirm-pwd" placeholder="确认密码" type="password">
													</div>

													<div class="col-12">
														<button class="save-change-btn">更改密码</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
								<!-- Single Tab Content End -->
							</div>
						</div>
						<!-- My Account Tab Content End -->
					</div>

				</div>
			</div>
		</div>
	</div>

	<!--=====  End of My Account page content  ======-->

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
    <script>
        function ChooseAdress(e){
			console.log(e.target)
            $('#addressUpdate').modal('show')
        }
    </script>
	<script>
		var upid;
        $(function(){
            $('#target').distpicker();
            $('#updatecity').distpicker();
            findAddress();
        });
        //查找用户地址
        function findAddress() {
			$.ajax({
				type:"POST",
				dataType:"json",
				url:"/Account/findAddress",
				success:function(result){
				    // console.log(result);
                    $("#addressmessage").html("")
					$("#updateaddress").html("")
				    $.each(result,function (index,element) {
				        var id = element.id;
                        var name = element.name;
                        var tel = element.tel;
                        var provinces = element.provinces;
                        var city = element.city;
                        var county = element.county;
                        var address =element.address;

                        var message = " <address class=\"col-lg-3 col-12\">\n" +
                            "                                                    <p><strong>"+name+"</strong>&nbsp;&nbsp;13180100711</p>\n" +
                            "                                                    <p>"+provinces+city+county+" <br>\n" +
                            "                                                        "+address+"</p>\n" +
                            "                                                </address>"
							$("#addressmessage").append(message);

                        if (element.defaultstatus == 1){

                            var defau = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class=\"fa fa-tags\" aria-hidden=\"true\"></i>默认"
                        }else {
                            var defau = ""
						}


                        var alladdress = "<a href=\"#\" aaa='aaa' onclick='showUpdateData("+id+")' class=\"list-group-item list-group-item-action flex-column align-items-start\">\n" +
                            "                                                            <div class=\"d-flex w-100 justify-content-between\">\n" +
                            "                                                                <h5 class=\"mb-1\">"+name+"        "+tel+defau+"</h5>\n" +
                            "                                                                <small><i class=\"fa fa-pencil\"></i></small>\n" +
                            "                                                            </div>\n" +
                            "                                                            <p class=\"mb-1\">"+provinces+city+county+address+"</p>\n" +
                            "                                                        </a>"
                        $("#updateaddress").append(alladdress)


                    })
			}
			})
        }



        function addaddress() {
            var form = new FormData(document.getElementById("addaddressform"));
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "/Account/addAddress" ,//url
                data: form,
                processData:false,
                contentType:false,
                success: function (result) {
                    // console.log(result);//打印服务端返回的数据(调试用)
                    $('#addressAdd').modal('hide')
                    findAddress();
                },
                error : function() {
                    $('#addressAdd').modal('hide')
                    findAddress();
                }
            });
        }





        function upaddress() {
            var form = new FormData(document.getElementById("updateaddressform"));
            form.append("id",upid)
            $.ajax({
                //几个参数需要注意一下
                type: "POST",//方法类型
                dataType: "json",//预期服务器返回的数据类型
                url: "/Account/updateAddress" ,//url
                data: form,
                processData:false,
                contentType:false,
                success: function (result) {
                    console.log(result);//打印服务端返回的数据(调试用)
                    $('#addressUpdate').modal('hide')
                    findAddress();
                },
                error : function() {
                    $('#addressUpdate').modal('hide')
                    findAddress();
                }
            });
        }

        function showUpdateData(id) {
			// alert(id);
			$.ajax({
				type:"post",
				dataType:"json",
				url:"/Account/getAddress",
				data:{id:id},
				success:function (data) {
					console.log(data)
					upid=data.id;
					$("#upname").val(data.name);
                    $("#upaddress").val(data.address);
                    // $("#upcity").val(data.city);
                    // $("#upcounty").val(data.county);
					if (data.defaultstatus ==1){
                        $("#updefaultstatus").attr("checked",true)
                    }
                    // $("#upprovinces").val(data.provinces);
                    $("#uptel").val(data.tel);
                    $("#upzip").val(data.zip);
                    $('#updatecity').distpicker('destroy');
                    $('#updatecity').distpicker({
                        province: data.provinces,
                        city: data.city,
                        district: data.county
					});
                    // $("#upname").val(data.name);
                }

			})
        }

	</script>

</body>

</html>
