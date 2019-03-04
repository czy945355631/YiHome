<!DOCTYPE html>
<html class="no-js" lang="zh-CN">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Furnilife - Furniture eCommerce Bootstrap4 Template</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Favicon -->
	<link rel="icon" href="../YiHome/assets/images/favicon.ico">

	<!-- CSS
	============================================ -->
	<!-- Bootstrap CSS -->
	<link href="../YiHome/assets/css/bootstrap.min.css" rel="stylesheet">

	<!-- FontAwesome CSS -->
	<link href="../YiHome/assets/css/font-awesome.min.css" rel="stylesheet">

	<!-- Ionicons CSS -->
	<link href="../YiHome/assets/css/ionicons.min.css" rel="stylesheet">

	<!-- Plugins CSS -->
	<link href="../YiHome/assets/css/plugins.css" rel="stylesheet">

	<!-- Helper CSS -->
	<link href="../YiHome/assets/css/helper.css" rel="stylesheet">

	<!-- Main CSS -->
	<link href="../YiHome/assets/css/main.css" rel="stylesheet">

	<!-- Modernizer JS -->
	<script src="../YiHome/assets/js/vendor/modernizr-2.8.3.min.js"></script>

</head>

<body>


	<!--=============================================
	=            header container         =
	=============================================-->

    <#include "header.ftl">

	<!--=====  End of header container  ======-->


	<!--=============================================
	=            hero slider         =
	=============================================-->

	<div class="hero-area mb-30">
		<!--=======  slider container  =======-->
		<div class="slider-container">
			<!--=======  hero slider one  =======-->
			<div class="hero-slider">
				<!--=======  slider item  =======-->
				<div class="hero-slider-item slider-bg-1">
					<!--=======  slider content  =======-->
					<div class="d-flex flex-column justify-content-center align-items-start h-100">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<div class="slider-content">
										<p>7折销售！ </p>
										<h1>纯PC“铝框”登机箱 <span>适中容量 铝质包角 牢固抗摔 </span></h1>
										<p class="slider-price">活动价 <span>¥313</span></p>
										<a href="/Products?id=36" class="slider-btn">去购买</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--=======  End of slider content  =======-->
				</div>
				<!--=======  End of slider item  =======-->
				<!--=======  slider item  =======-->
				<div class="hero-slider-item slider-bg-2">
					<!--=======  slider content  =======-->

					<div class="d-flex flex-column justify-content-center align-items-start h-100">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<div class="slider-content">
										<p>八折销售! </p>
										<h1>谷风一木3层小卷纸 <span>100%原木浆，融水即化</span></h1>
										<p class="slider-price">促销价 <span>¥27.9</span></p>
										<a href="/Products?id=38" class="slider-btn">去购买</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--=======  End of slider content  =======-->
				</div>
				<!--=======  End of slider item  =======-->
				<!--=======  slider item  =======-->
				<div class="hero-slider-item slider-bg-3">
					<!--=======  slider content  =======-->

					<div class="d-flex flex-column justify-content-center align-items-start h-100">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<div class="slider-content">
										<p>限时促销!</p>
										<h1>原素系列<span>实木简约桌椅组合 </span></h1>
										<p class="slider-price">活动价<span>¥2939</span></p>
										<a href="/Products?id=39" class="slider-btn">去购买</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--=======  End of slider content  =======-->
				</div>
				<!--=======  End of slider item  =======-->
				<!--=======  slider item  =======-->
				<div class="hero-slider-item slider-bg-4">
					<!--=======  slider content  =======-->

					<div class="d-flex flex-column justify-content-center align-items-start h-100">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<div class="slider-content">
										<p>新品热销！ </p>
										<h1>蒸汽沐足盆<span>让双脚每天享受桑拿</span></h1>
										<p class="slider-price">活动价<span>¥27.5</span></p>
										<a href="/Products?id=40" class="slider-btn">去购买</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--=======  End of slider content  =======-->
				</div>
				<!--=======  End of slider item  =======-->
				<!--=======  slider item  =======-->
				<div class="hero-slider-item slider-bg-5">
					<!--=======  slider content  =======-->

					<div class="d-flex flex-column justify-content-center align-items-start h-100">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<div class="slider-content">
										<p>新人专享价！</p>
										<h1>条纹四件套<span>超柔亲肤针织棉  </span></h1>
										<p class="slider-price">活动价<span>¥284</span></p>
										<a href="/Products?id=37" class="slider-btn">去购买</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--=======  End of slider content  =======-->
				</div>
				<!--=======  End of slider item  =======-->
			</div>
			<!--=======  End of hero slider one  =======-->
		</div>
		<!--=======  End of slider container  =======-->
	</div>

	<!--=====  End of hero slider  ======-->

	<!--=============================================
	=            banner three column         =
	=============================================-->

	<div class="banner-three-column mb-50">
		<div class="container">
			<div class="row">
				<#list classesdisplay as cd>
					<!--=======  single banner  =======-->
					<div class="col-lg-4 col-md-4 mb-sm-30">
						<div class="single-banner">
					<#--<#assign classesids></#assign>-->
					<#--<#assign classesids = classes2.id+",">-->
					<#--<#list cd.sonClasses as classes3>-->
						<#--<#assign classesids =classesids+classes3.id+",">-->
					<#--</#list>-->
							<a href="/Search/goSearch?searchByName=&searchByBrand=&searchByClasses=${cd.id},">

								<img src="/asjy/file/${cd.path}" class="img-fluid" alt="">

							</a>
							<div class="text-content">
								<h5>Modern and Clean</h5>
								<h3>${cd.classesname}</h3>
								<h4>From  $60.99 - Sale 20%</h4>
							</div>
						</div>

					</div>
					<!--=======  End of single banner  =======-->
				</#list>
			</div>
		</div>
	</div>

	<!--=====  End of banner three column  ======-->




	<!--=============================================
	=            tab slider section         =
	=============================================-->

	<div class="tab-product-slider-container mb-50">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!--=======  tab slider wraspper  =======-->

					<div class="tab-slider-wrapper">
						<nav>
							<div class="nav nav-tabs" id="nav-tab" role="tablist">
								<a class="nav-item nav-link active" id="featured-tab" data-toggle="tab" href="#featured" role="tab"
									aria-selected="true">人气商品</a>
								<a class="nav-item nav-link" id="new-arrival-tab" data-toggle="tab" href="#new-arrivals" role="tab"
									aria-selected="false">推荐商品</a>
								<#--<a class="nav-item nav-link" id="nav-onsale-tab" data-toggle="tab" href="#on-sale" role="tab"-->
									<#--aria-selected="false">新品上架</a>-->
							</div>
						</nav>
						<#---->
						<div class="tab-content" id="nav-tabContent">
							<#--人气商品-->
							<div class="tab-pane fade show active" id="featured" role="tabpanel" aria-labelledby="featured-tab">
								<!--=======  tab product slider  =======-->

								<div class="fl-slider tab-product-slider">
									<!--=======  single product  =======-->
									<#list goodsOrderBysales as goodslist>
										<div class="fl-product">
											<div class="image sale-product">
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

												<div class="hover-icons">
													<ul>
														<li><a href="#" onclick="addGoodstoCar(${goodslist.id},'1',${goodslist.store})" data-tooltip="Add to Cart"><i class="icon ion-md-cart"></i></a></li>
														<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>
													</ul>
												</div>
											</div>
										</div>
									</#list>


									<!--=======  End of single product  =======-->

								</div>

								<!--=======  End of tab product slider  =======-->
							</div>
							<#--推荐商品-->
							<div class="tab-pane fade" id="new-arrivals" role="tabpanel" aria-labelledby="new-arrival-tab">
								<!--=======  tab product slider  =======-->

								<div class="fl-slider tab-product-slider" data-row="1">
									<#--循环12次-->
									<!--=======  single product  =======-->
									<#list goodsOrderByCommend as goodslist>
										<div class="fl-product">
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

												<div class="hover-icons">
													<ul>
														<li><a href="#" onclick="addGoodstoCar(${goodslist.id},'1',${goodslist.store})"  data-tooltip="Add to Cart"><i class="icon ion-md-cart"></i></a></li>
														<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>
														<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>
													</ul>
												</div>
											</div>
										</div>
									</#list>

									<!--=======  End of single product  =======-->


								</div>

								<!--=======  End of tab product slider  =======-->
							</div>
							<#--新品上架-->
							<#--<div class="tab-pane fade" id="on-sale" role="tabpanel" aria-labelledby="nav-onsale-tab">-->
								<#--<!--=======  tab product slider  =======&ndash;&gt;-->

								<#--<div class="fl-slider tab-product-slider">-->
									<#--<!--=======  single product  =======&ndash;&gt;-->

									<#--<div class="fl-product">-->
										<#--<div class="image sale-product">-->
											<#--<a href="single-product.html">-->
												<#--<img src="../YiHome/assets/images/products/product01.jpg" class="img-fluid" alt="">-->
												<#--<img src="../YiHome/assets/images/products/product01-2.jpg" class="img-fluid" alt="">-->
											<#--</a>-->
											<#--<!-- wishlist icon &ndash;&gt;-->
											<#--<span class="wishlist-icon">-->
												 <#--<a href="#" ><i class="icon ion-md-heart-empty"></i></a>-->
											<#--</span>-->
										<#--</div>-->
										<#--<div class="content">-->
											<#--<h2 class="product-title"> <a href="single-product.html">Cillum dolore</a></h2>-->
											<#--<div class="rating">-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star"></i>-->
												<#--<i class="fa fa-star"></i>-->
											<#--</div>-->
											<#--<p class="product-price">-->
												<#--<span class="main-price discounted">$71</span>-->
												<#--<span class="discounted-price">$65</span>-->
											<#--</p>-->

											<#--<div class="hover-icons">-->
												<#--<ul>-->
													<#--<li><a href="#"  data-tooltip="Add to Cart"><i class="icon ion-md-cart"></i></a></li>-->
													<#--<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>-->
													<#--<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>-->
												<#--</ul>-->
											<#--</div>-->
										<#--</div>-->
									<#--</div>-->

									<#--<!--=======  End of single product  =======&ndash;&gt;-->
									<#--<!--=======  single product  =======&ndash;&gt;-->

									<#--<div class="fl-product">-->
										<#--<div class="image">-->
											<#--<a href="single-product.html">-->
												<#--<img src="../YiHome/assets/images/products/product02.jpg" class="img-fluid" alt="">-->
												<#--<img src="../YiHome/assets/images/products/product02-2.jpg" class="img-fluid" alt="">-->
											<#--</a>-->
											<#--<!-- wishlist icon &ndash;&gt;-->
											<#--<span class="wishlist-icon">-->
												 <#--<a href="#" ><i class="icon ion-md-heart-empty"></i></a>-->
											<#--</span>-->
										<#--</div>-->
										<#--<div class="content">-->
											<#--<h2 class="product-title"> <a href="single-product.html">Condimentum posuere</a></h2>-->
											<#--<div class="rating">-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star"></i>-->
												<#--<i class="fa fa-star"></i>-->
											<#--</div>-->
											<#--<p class="product-price">-->
												<#--<span class="main-price discounted">$71</span>-->
												<#--<span class="discounted-price">$65</span>-->
											<#--</p>-->

											<#--<div class="hover-icons">-->
												<#--<ul>-->
													<#--<li><a href="#"  data-tooltip="Add to Cart"><i class="icon ion-md-cart"></i></a></li>-->
													<#--<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>-->
													<#--<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>-->
												<#--</ul>-->
											<#--</div>-->
										<#--</div>-->
									<#--</div>-->

									<#--<!--=======  End of single product  =======&ndash;&gt;-->
									<#--<!--=======  single product  =======&ndash;&gt;-->

									<#--<div class="fl-product">-->
										<#--<div class="image sale-product">-->
											<#--<a href="single-product.html">-->
												<#--<img src="../YiHome/assets/images/products/product03.jpg" class="img-fluid" alt="">-->
												<#--<img src="../YiHome/assets/images/products/product03-2.jpg" class="img-fluid" alt="">-->
											<#--</a>-->
											<#--<!-- wishlist icon &ndash;&gt;-->
											<#--<span class="wishlist-icon">-->
												 <#--<a href="#" ><i class="icon ion-md-heart-empty"></i></a>-->
											<#--</span>-->
										<#--</div>-->
										<#--<div class="content">-->
											<#--<h2 class="product-title"> <a href="single-product.html">Donec eu libero</a></h2>-->
											<#--<div class="rating">-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star"></i>-->
												<#--<i class="fa fa-star"></i>-->
											<#--</div>-->
											<#--<p class="product-price">-->
												<#--<span class="main-price discounted">$71</span>-->
												<#--<span class="discounted-price">$65</span>-->
											<#--</p>-->

											<#--<div class="hover-icons">-->
												<#--<ul>-->
													<#--<li><a href="#"  data-tooltip="Add to Cart"><i class="icon ion-md-cart"></i></a></li>-->
													<#--<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>-->
													<#--<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>-->
												<#--</ul>-->
											<#--</div>-->
										<#--</div>-->
									<#--</div>-->

									<#--<!--=======  End of single product  =======&ndash;&gt;-->
									<#--<!--=======  single product  =======&ndash;&gt;-->

									<#--<div class="fl-product">-->
										<#--<div class="image">-->
											<#--<a href="single-product.html">-->
												<#--<img src="../YiHome/assets/images/products/product04.jpg" class="img-fluid" alt="">-->
												<#--<img src="../YiHome/assets/images/products/product04-2.jpg" class="img-fluid" alt="">-->
											<#--</a>-->
											<#--<!-- wishlist icon &ndash;&gt;-->
											<#--<span class="wishlist-icon">-->
												 <#--<a href="#" ><i class="icon ion-md-heart-empty"></i></a>-->
											<#--</span>-->
										<#--</div>-->
										<#--<div class="content">-->
											<#--<h2 class="product-title"> <a href="single-product.html">Officiis debitis</a></h2>-->
											<#--<div class="rating">-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star"></i>-->
												<#--<i class="fa fa-star"></i>-->
											<#--</div>-->
											<#--<p class="product-price">-->
												<#--<span class="main-price discounted">$71</span>-->
												<#--<span class="discounted-price">$65</span>-->
											<#--</p>-->

											<#--<div class="hover-icons">-->
												<#--<ul>-->
													<#--<li><a href="#"  data-tooltip="Add to Cart"><i class="icon ion-md-cart"></i></a></li>-->
													<#--<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>-->
													<#--<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>-->
												<#--</ul>-->
											<#--</div>-->
										<#--</div>-->
									<#--</div>-->

									<#--<!--=======  End of single product  =======&ndash;&gt;-->
									<#--<!--=======  single product  =======&ndash;&gt;-->

									<#--<div class="fl-product">-->
										<#--<div class="image">-->
											<#--<a href="single-product.html">-->
												<#--<img src="../YiHome/assets/images/products/product05.jpg" class="img-fluid" alt="">-->
												<#--<img src="../YiHome/assets/images/products/product05-2.jpg" class="img-fluid" alt="">-->
											<#--</a>-->
											<#--<!-- wishlist icon &ndash;&gt;-->
											<#--<span class="wishlist-icon">-->
												 <#--<a href="#" ><i class="icon ion-md-heart-empty"></i></a>-->
											<#--</span>-->
										<#--</div>-->
										<#--<div class="content">-->
											<#--<h2 class="product-title"> <a href="single-product.html">Cras neque</a></h2>-->
											<#--<div class="rating">-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star"></i>-->
												<#--<i class="fa fa-star"></i>-->
											<#--</div>-->
											<#--<p class="product-price">-->
												<#--<span class="main-price discounted">$71</span>-->
												<#--<span class="discounted-price">$65</span>-->
											<#--</p>-->

											<#--<div class="hover-icons">-->
												<#--<ul>-->
													<#--<li><a href="#"  data-tooltip="Add to Cart"><i class="icon ion-md-cart"></i></a></li>-->
													<#--<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>-->
													<#--<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>-->
												<#--</ul>-->
											<#--</div>-->
										<#--</div>-->
									<#--</div>-->

									<#--<!--=======  End of single product  =======&ndash;&gt;-->
									<#--<!--=======  single product  =======&ndash;&gt;-->

									<#--<div class="fl-product">-->
										<#--<div class="image">-->
											<#--<a href="single-product.html">-->
												<#--<img src="../YiHome/assets/images/products/product06.jpg" class="img-fluid" alt="">-->
												<#--<img src="../YiHome/assets/images/products/product06-2.jpg" class="img-fluid" alt="">-->
											<#--</a>-->
											<#--<!-- wishlist icon &ndash;&gt;-->
											<#--<span class="wishlist-icon">-->
												 <#--<a href="#" ><i class="icon ion-md-heart-empty"></i></a>-->
											<#--</span>-->
										<#--</div>-->
										<#--<div class="content">-->
											<#--<h2 class="product-title"> <a href="single-product.html">Dolorum fuga</a></h2>-->
											<#--<div class="rating">-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star active"></i>-->
												<#--<i class="fa fa-star"></i>-->
												<#--<i class="fa fa-star"></i>-->
											<#--</div>-->
											<#--<p class="product-price">-->
												<#--<span class="main-price discounted">$71</span>-->
												<#--<span class="discounted-price">$65</span>-->
											<#--</p>-->

											<#--<div class="hover-icons">-->
												<#--<ul>-->
													<#--<li><a href="#"  data-tooltip="Add to Cart"><i class="icon ion-md-cart"></i></a></li>-->
													<#--<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>-->
													<#--<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>-->
												<#--</ul>-->
											<#--</div>-->
										<#--</div>-->
									<#--</div>-->

									<#--<!--=======  End of single product  =======&ndash;&gt;-->
								<#--</div>-->

								<#--<!--=======  End of tab product slider  =======&ndash;&gt;-->
							<#--</div>-->
						</div>
					</div>

					<!--=======  End of tab slider wraspper  =======-->
				</div>
			</div>
		</div>
	</div>

	<!--=====  End of tab slider section  ======-->

	<!--=============================================
	=            slider with banner and sidebar         =
				楼层展示
	=============================================-->


	<#list floor as floor>

		<div class="slider-banner-sidebar-area mb-50">


			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!--=======  slider with banner and sidebar container  =======-->

						<div class="slider-banner-sidebar-container">
							<div class="row no-gutters">
								<div class="col-lg-3 col-xl-2 col-md-4">
									<!--=======  sidebar  =======-->

									<div class="slider-sidebar">
										<h3 class="slider-sidebar-title">${floor.floorname}</h3>
										<div class="sidebar-list">
											<ul>
												<#list floor.classesList as classeslist>
													<li><a href="/Search/goSearch?searchByName=&searchByBrand=&searchByClasses=${classeslist.id},">${classeslist.classesname}</a></li>
												</#list>
											</ul>
										</div>
									</div>

									<!--=======  End of sidebar  =======-->
								</div>
								<div class="col-lg-9 col-xl-10 col-md-8">
									<!--=======  banner slider  =======-->

									<div class="fl-slider banner-slider">
										<!--=======  single product  楼层商品=======-->
										<#list floor.goodsList as goodslist>
											<div class="fl-product">
												<div class="image sale-product">
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

													<div class="hover-icons">
														<ul>
															<li><a href="#"  data-tooltip="Add to Cart" onclick="addGoodstoCar(${goodslist.id},'1',${goodslist.store})"><i class="icon ion-md-cart"></i></a></li>
															<li><a href="#"  data-tooltip="Compare"><i class="icon ion-md-options"></i></a></li>
															<li><a href="#"  data-toggle = "modal" data-target="#quick-view-modal-container" data-tooltip="Quick View"><i class="icon ion-md-open"></i></a></li>
														</ul>
													</div>
												</div>
											</div>
										</#list>

										<!--=======  End of single product  楼层商品结束=======-->


									</div>

									<!--=======  End of banner slider  =======-->

									<!--=======  slider banner  =======-->

									<div class="slider-banner home-one-banner banner-bg banner-bg-1">
										<div class="banner-text">
											<p>Look of The Week</p>
											<p class="big-text">Wood Frame Bedroom</p>
											<p>Only from $209</p>
										</div>
									</div>
									<!--=======  End of slider banner  =======-->
								</div>
							</div>
						</div>

						<!--=======  End of slider with banner and sidebar container  =======-->
					</div>
				</div>
			</div>
		</div>
	</#list>

	<!--=====  End of slider with banner and sidebar 楼层展示结束  ======-->




	<!--=============================================
	=            brand logo slider         =
	=============================================-->

	<div class="brand-logo-slider mb-50">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<!--=======  brand logo slider container  =======-->

					<div class="brand-logo-slider-container">
						<!--=======  single brand  =======-->
						<#list commendbrands as brands>
							<div class="single-brand">
								<a href="/Search/goSearch?searchByName=&searchByBrand=${brands.id}&searchByClasses=">
									<img src="/asjy/file/${brands.path}" style="height: 150px;" class="img-fluid" alt="">
								</a>
							</div>
						</#list>



						<!--=======  End of single brand  =======-->


					</div>

					<!--=======  End of brand logo slider container  =======-->
				</div>
			</div>
		</div>
	</div>

	<!--=====  End of brand logo slider  ======-->


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
											<img src="../YiHome/assets/images/single-product-slider/01.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide-2-q" role="tabpanel" aria-labelledby="single-slide-tab-2-q">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="../YiHome/assets/images/single-product-slider/02.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide-3-q" role="tabpanel" aria-labelledby="single-slide-tab-3-q">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="../YiHome/assets/images/single-product-slider/03.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide-4-q" role="tabpanel" aria-labelledby="single-slide-tab-4-q">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="../YiHome/assets/images/single-product-slider/04.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
									<div class="tab-pane fade" id="single-slide-5-q" role="tabpanel" aria-labelledby="single-slide-tab-5-q">
										<!--Single Product Image Start-->
										<div class="single-product-img img-full">
											<img src="../YiHome/assets/images/single-product-slider/05.jpg" class="img-fluid" alt="">
										</div>
										<!--Single Product Image End-->
									</div>
								</div>
								<!--product large image End-->

								<!--product small image slider Start-->
								<div class="product-small-image-list fl-product-small-image-list fl3-product-small-image-list quickview-product-small-image-list">
									<div class="nav small-image-slider fl3-small-image-slider" role="tablist">
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-1-q" href="#single-slide-1-q"><img src="../YiHome/assets/images/single-product-slider/01.jpg"
												class="img-fluid" alt=""></a>
										</div>
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-2-q" href="#single-slide-2-q"><img src="../YiHome/assets/images/single-product-slider/02.jpg"
												class="img-fluid" alt=""></a>
										</div>
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-3-q" href="#single-slide-3-q"><img src="../YiHome/assets/images/single-product-slider/03.jpg"
												class="img-fluid" alt=""></a>
										</div>
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-4-q" href="#single-slide-4-q"><img src="../YiHome/assets/images/single-product-slider/04.jpg"
												alt=""></a>
										</div>
										<div class="single-small-image img-full">
											<a data-toggle="tab" id="single-slide-tab-5-q" href="#single-slide-5-q"><img src="../YiHome/assets/images/single-product-slider/05.jpg"
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

	<!-- scroll to top  -->
	<a href="#" class="scroll-top"></a>
	<!-- end of scroll to top -->

	<!-- JS
	============================================ -->
	<!-- jQuery JS -->
	<script src="../YiHome/../YiHome/assets/js/vendor/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="../YiHome/../YiHome/assets/js/popper.min.js"></script>

	<!-- Bootstrap JS -->
	<script src="../YiHome/../YiHome/assets/js/bootstrap.min.js"></script>

	<!-- Plugins JS -->
	<script src="../YiHome/../YiHome/assets/js/plugins.js"></script>

	<!-- Main JS -->
	<script src="../YiHome/../YiHome/assets/js/main.js"></script>
	<script src="../YiHome/assets/js/vendor/carhartl-jquery-cookie/jquery.cookie.js"></script>
	<!-- goodscar JS -->
	<script src="../YiHome/assets/js/goodscar.js"></script>
	<script >
	</script>

</body>

</html>
