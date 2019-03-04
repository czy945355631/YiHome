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
								<li>搜索</li>
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
    =            shop page content         =
    =============================================-->
    
    <div class="shop-page-content mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 order-1 order-lg-2">
                  

                    <!--=======  Shop header  =======-->
					
					<div class="shop-header mb-30">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12 d-flex align-items-center">
                                <!--=======  view mode  =======-->
                                
                                <div class="view-mode-icons mb-xs-10">
                                    <a class="active" href="#" data-target="grid"><i class="icon ion-md-apps"></i></a>
                                    <a href="#" data-target="list"><i class="icon ion-ios-list"></i></a>
                                </div>
                                
                                <!--=======  End of view mode  =======-->
                                
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-12 d-flex flex-column flex-sm-row justify-content-between align-items-left align-items-sm-center">
                                <!--=======  Sort by dropdown  =======-->
                                
                                <div class="sort-by-dropdown d-flex align-items-center mb-xs-10">
                                    <p class="mr-10 mb-0">排序依据: </p>
                                    <select name="sort-by" id="sort-by" class="nice-select">
                                        <option value="0">Sort By Popularity</option>
                                    </select>
                                </div>
                                
                                <!--=======  End of Sort by dropdown  =======-->

                                <p class="result-show-message">共 ${goodslist?size} 条</p>
                            </div>
                        </div>
                    </div>
                    
                    <!--=======  End of Shop header  =======-->

                    <!--=======  shop product display area  =======-->
                    <div class="shop-product-wrap grid row mb-30 no-gutters">
						<#list goodslist as goodslist>
							<div class="col-lg-3 col-md-6 col-sm-6 col-12">
								<!--=======  grid view product  =======-->

								<!--=======  single product  =======-->

								<div class="fl-product shop-grid-view-product">
									<div class="image">
										<a href="/Products?id=${goodslist.id}">
									<img src="/asjy/file/${goodslist.path}" class="img-fluid" alt="">
									<img src="/asjy/file/${goodslist.path2}" class="img-fluid" alt="">
										</a>
										<!-- wishlist icon -->
										<span class="wishlist-icon">
                                            <a href="#" ><i class="icon ion-md-heart-empty"></i></a>
                                    </span>
									</div>
									<div class="content">
													<h2 class="product-title"> <a href="single-product.html">${goodslist.goodsname}</a></h2>
													<div class="rating">
														<i class="fa fa-star active"></i>
														<i class="fa fa-star active"></i>
														<i class="fa fa-star active"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
													<p class="product-price">
														<span class="main-price discounted">￥${goodslist.oldPrice}</span>
														<span class="discounted-price">￥${goodslist.nowPrice}</span>
													</p>

													<div class="hover-icons">
														<ul>
															<li><a href="#"  data-tooltip="Add to Cart" onclick="addGoodstoCar(${goodslist.id},'1',${goodslist.store})"><i class="icon ion-md-cart"></i></a></li>
															<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>
															<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>
														</ul>
													</div>
												</div>
								</div>

								<!--=======  End of single product  =======-->

								<!--=======  End of grid view product  =======-->

								<!--=======  list view product  =======-->

								<div class="fl-product shop-list-view-product">
									<div class="image">
										<a href="/Products?id=${goodslist.id}">
											<img src="/asjy/file/${goodslist.path}" class="img-fluid" alt="">
											<img src="/asjy/file/${goodslist.path2}" class="img-fluid" alt="">
										</a>
									</div>
									<div class="content">
										<h2 class="product-title"> <a href="/Products?id=${goodslist.id}">${goodslist.goodsname}</a></h2>
										<div class="rating">
											<i class="fa fa-star active"></i>
											<i class="fa fa-star active"></i>
											<i class="fa fa-star active"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
										<p class="product-price">
											<span class="main-price discounted">￥${goodslist.oldPrice}</span>
											<span class="discounted-price">￥${goodslist.nowPrice}</span>
										</p>

										<p class="product-description">${goodslist.datails}</p>

										<div class="hover-icons">
												<ul>
															<li><a href="#"  data-tooltip="Add to Cart" onclick="addGoodstoCar(${goodslist.id},'1',${goodslist.store})"><i class="icon ion-md-cart"></i></a></li>
															<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>
															<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>
														</ul>
										</div>
									</div>
								</div>

								<!--=======  End of list view product  =======-->


							</div>

						</#list>
                    </div>
                    
                    
                    <!--=======  End of shop product display area  =======-->

                    <!--=======  pagination area  =======-->
                    
                    <div class="pagination-area ">
                        <ul>
                            <li><a class="active" href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                        </ul>
                    </div>
                    
                    <!--=======  End of pagination area  =======-->
                </div>
            </div>
        </div>
    </div>
    
    <!--=====  End of shop page content  ======-->

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


	<!--=============================================
	=            Quick view modal         =
	=============================================-->
	
	<div class="modal fade quick-view-modal-container" id="quick-view-modal-container" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-5 col-md-6 col-xs-12 mb-xxs-25 mb-xs-25 mb-sm-25">
							<!-- single product tabstyle one image gallery -->
							<div class="product-image-slider fl-product-image-slider fl3-product-image-slider quickview-product-image-slider">
								<!--product large image start -->
								<div class="tab-content product-large-image-list fl-product-large-image-list fl3-product-large-image-list quickview-product-large-image-list" id="myTabContent2">
									<div class="tab-pane fade show active" id="single-slide-1-q" role="tabpanel" aria-labelledby="single-slide-tab-1-q">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="/YiHome/assets/images/single-product-slider/01.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide-2-q" role="tabpanel" aria-labelledby="single-slide-tab-2-q">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="/YiHome/assets/images/single-product-slider/02.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide-3-q" role="tabpanel" aria-labelledby="single-slide-tab-3-q">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="/YiHome/assets/images/single-product-slider/03.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide-4-q" role="tabpanel" aria-labelledby="single-slide-tab-4-q">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="/YiHome/assets/images/single-product-slider/04.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide-5-q" role="tabpanel" aria-labelledby="single-slide-tab-5-q">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="/YiHome/assets/images/single-product-slider/05.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
								</div>
								<!--product large image End-->
		
								<!--product small image slider Start-->
								<div class="product-small-image-list fl-product-small-image-list fl3-product-small-image-list quickview-product-small-image-list"> 
									<div class="nav small-image-slider fl3-small-image-slider" role="tablist">
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-1-q" href="#single-slide-1-q"><img src="/YiHome/assets/images/single-product-slider/01.jpg"
												class="img-fluid" alt=""></a>
										</div>
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-2-q" href="#single-slide-2-q"><img src="/YiHome/assets/images/single-product-slider/02.jpg"
												class="img-fluid" alt=""></a>
										</div>
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-3-q" href="#single-slide-3-q"><img src="/YiHome/assets/images/single-product-slider/03.jpg"
												class="img-fluid" alt=""></a>
										</div>
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-4-q" href="#single-slide-4-q"><img src="/YiHome/assets/images/single-product-slider/04.jpg"
												alt=""></a>
										</div>
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-5-q" href="#single-slide-5-q"><img src="/YiHome/assets/images/single-product-slider/05.jpg"
												alt=""></a>
										</div>
									</div>
								</div>
								<!--product small image slider End-->
							</div>
							<!-- end of single product tabstyle one image gallery -->
						</div>
						<div class="col-lg-7 col-md-6 col-xs-12">
							<!-- product quick view description -->
							<div class="product-feature-details">
								<h2 class="product-title mb-15">Kaoreet lobortis sagittis</h2>

								<h2 class="product-price mb-15"> 
									<span class="main-price discounted">$12.90</span> 
									<span class="discounted-price"> $10.00</span>
									<span class="discount-percentage">Save 8%</span>
								</h2>

								<p class="product-description mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus</p>
								

								<div class="cart-buttons mb-20">
									<div class="pro-qty mr-10">
										<input type="text" value="1">
									</div>
									<div class="add-to-cart-btn">
										<a href="#" class="fl-btn"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
									</div>
								</div>

						
								<div class="social-share-buttons">
									<h3>share this product</h3>
									<ul>
										<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
										<li><a class="pinterest" href="#"><i class="fa fa-pinterest"></i></a></li>
									</ul>
								</div>
							</div>
							<!-- end of product quick view description -->
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!--=====  End of Quick view modal  ======-->

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
	<script src="../YiHome/assets/js/vendor/carhartl-jquery-cookie/jquery.cookie.js"></script>

	<!-- goodscar JS -->
	<script src="../YiHome/assets/js/goodscar.js"></script>

</body>

</html>
