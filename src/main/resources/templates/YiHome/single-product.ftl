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
    <style>
        .disable{
            border: 1.5px dashed #8c8c8c;
            background: white;
            border-radius:5px ;
            /*width: 73px;*/
            height: 37px;
            font-size: 1rem;
            font-weight: 400;
            padding:.2rem .75rem;
            margin-right: 5px;
        }
        .btn{
            margin-right: 5px;
            background: white;
            border: 1px solid #8c8c8c;
        }
        .btn:focus{
            box-shadow:0 0 0 1px rgba(255,0,0,0.25)
            border: 1px solid red;
        }
        .btn.active{
             border: 1px solid red;
         }
    </style>
</head>

<body>

<#include "header.ftl">


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
                                <li class="parent-page"><a href="/Search/goSearch?searchByName=&searchByBrand=&searchByClasses=${goods.classes.id}">${goods.classes.classesname}</a></li>
                                <li>商品页</li>
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
=            single product content         =
=============================================-->

<div class="single-product-content-area mb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-6 col-xs-12 mb-xxs-25 mb-xs-25 mb-sm-25">
                <!-- single product tabstyle one image gallery -->
                <div class="product-image-slider fl-product-image-slider fl3-product-image-slider">
                    <!--product large image start -->
                    <div class="tab-content product-large-image-list fl-product-large-image-list fl3-product-large-image-list"
                         id="myTabContent">
                        <div class="tab-pane fade show active" id="single-slide-1" role="tabpanel"
                             aria-labelledby="single-slide-tab-1">
                            <!--Single Product Image Start-->
                            <div class="single-product-img img-full">
                                <img src="/asjy/file/${goods.path}" class="img-fluid" alt="">
                                <a href="/asjy/file/${goods.path}" class="big-image-popup"><i
                                            class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                        <div class="tab-pane fade" id="single-slide-2" role="tabpanel"
                             aria-labelledby="single-slide-tab-2">
                            <!--Single Product Image Start-->
                            <div class="single-product-img img-full">
                                <img src="/asjy/file/${goods.path2}" class="img-fluid" alt="">
                                <a href="/asjy/file/${goods.path2}" class="big-image-popup"><i
                                            class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                        <#--<div class="tab-pane fade" id="single-slide-3" role="tabpanel"-->
                             <#--aria-labelledby="single-slide-tab-3">-->
                            <#--<!--Single Product Image Start&ndash;&gt;-->
                            <#--<div class="single-product-img img-full">-->
                                <#--<img src="/asjy/file/${goods.path}" class="img-fluid" alt="">-->
                                <#--<a href="/asjy/file/${goods.path}" class="big-image-popup"><i-->
                                            <#--class="fa fa-search-plus"></i></a>-->
                            <#--</div>-->
                            <#--<!--Single Product Image End&ndash;&gt;-->
                        <#--</div>-->
                        <#--<div class="tab-pane fade" id="single-slide-4" role="tabpanel"-->
                             <#--aria-labelledby="single-slide-tab-4">-->
                            <#--<!--Single Product Image Start&ndash;&gt;-->
                            <#--<div class="single-product-img img-full">-->
                                <#--<img src="/asjy/file/${goods.path2}" class="img-fluid" alt="">-->
                                <#--<a href="/asjy/file/${goods.path2}" class="big-image-popup"><i-->
                                            <#--class="fa fa-search-plus"></i></a>-->
                            <#--</div>-->
                            <#--<!--Single Product Image End&ndash;&gt;-->
                        <#--</div>-->
                        <#--<div class="tab-pane fade" id="single-slide-5" role="tabpanel"-->
                             <#--aria-labelledby="single-slide-tab-5">-->
                            <#--<!--Single Product Image Start&ndash;&gt;-->
                            <#--<div class="single-product-img img-full">-->
                                <#--<img src="/asjy/file/${goods.path}" class="img-fluid" alt="">-->
                                <#--<a href="/asjy/file/${goods.path}" class="big-image-popup"><i-->
                                            <#--class="fa fa-search-plus"></i></a>-->
                            <#--</div>-->
                            <#--<!--Single Product Image End&ndash;&gt;-->
                        <#--</div>-->
                    </div>
                    <!--product large image End-->

                    <!--product small image slider Start-->
                    <div class="product-small-image-list fl-product-small-image-list fl3-product-small-image-list">
                        <div class="nav small-image-slider fl3-small-image-slider" role="tablist">
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-1" href="#single-slide-1"><img
                                            src="/asjy/file/${goods.path}"
                                            class="img-fluid" alt=""></a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-2" href="#single-slide-2"><img
                                            src="/asjy/file/${goods.path2}"
                                            class="img-fluid" alt=""></a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-3" href="#single-slide-3"><img
                                            src="/asjy/file/${goods.path}"
                                            class="img-fluid" alt=""></a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-4" href="#single-slide-4"><img
                                            src="/asjy/file/${goods.path2}"
                                            alt=""></a>
                            </div>
                            <div class="single-small-image img-full">
                                <a data-toggle="tab" id="single-slide-tab-5" href="#single-slide-5"><img
                                            src="/asjy/file/${goods.path}"
                                            alt=""></a>
                            </div>
                        </div>
                    </div>
                    <!--product small image slider End-->
                </div>
                <!-- end of single product tabstyle one image gallery -->
            </div>
            <div class="col-lg-7 col-md-6 col-xs-12">
                <!-- product view description -->
                <div class="product-feature-details">
                    <h2 class="product-title mb-15">${goods.goodsname}</h2>

                    <div class="rating d-inline-block mb-15">
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star active"></i>
                        <i class="fa fa-star"></i>
                    </div>

                    <p class="d-inline-block ml-10 review-link">(库存还剩${goods.store}件)</p>

                    <h2 class="product-price mb-0">
                        <span class="main-price discounted">￥${goods.oldPrice}</span>
                        <span class="discounted-price">￥${goods.nowPrice}</span>
                    </h2>

                    <p class="product-description mb-20">${goods.datails}</p>
                    <div id="spec">
                        <#list ArtSpec as list>
                            <div class="mb-20" id="index${list_index}" specid="${list.specid}">
                            <span  class="title"> ${list.spec.specname}</span> <br>
                        <#--循环当前货号所有规格值-->
                            <#list list.spec.specValues as specv>
                                <button type="button" specvid="${specv.id}" class="btn
                                    <#--循环当前产品的两种规格-->
                                    <#list goodsSpec as goodsspec>
                                        <#if goodsspec.specid == list.specid && goodsspec.specvid == specv.id> active
                                        <#elseif goodsspec.specid == list.specid && goodsspec.specvid != specv.id>
                                        inactive
                                        </#if>
                                    </#list>
                            data-toggle="button"> ${specv.specvname}
                                </button>
                            </#list>
                            </div>
                        </#list>
                    </div>

                    <#--<div class="color mb-20">-->
                    <#--<span class="title"> Color:</span> <br>-->
                    <#--<a href="#"><span class="color-block color-choice-1"></span></a>-->
                    <#--<a href="#"><span class="color-block color-choice-2"></span></a>-->
                    <#--<a href="#"><span class="color-block color-choice-3 active"></span></a>-->
                    <#--</div>-->

                    <div class="cart-buttons mb-20">
                        <span class="quantity-title mr-10">数量: </span>
                        <div class="pro-qty mb-20">
                            <input type="text" id="quantity" value="1">
                        </div>
                        <div class="add-to-cart-btn d-block">
                            <a href="javascript:void(0);" onclick="addGoodstoCar(${goods.id},'single',${goods.store})" class="fl-btn"><i class="fa fa-shopping-cart"></i>添加到购物车</a>
                        </div>
                    </div>

                    <p class="wishlist-link mb-20 pb-15">
                        <a href="#"> <i class="icon ion-md-heart-empty"></i> 收藏</a>
                        <a href="#"> <i class="icon ion-md-options"></i> 比较</a>
                    </p>

                    <div class="category-list-container mb-20">
                        <span>Categories: </span>
                        <ul>
                            <li><a href="shop-left-sidebar.html">Beds</a>,</li>
                            <li><a href="shop-left-sidebar.html">Chests &amp; Dressers</a>,</li>
                            <li><a href="shop-left-sidebar.html">HeadBoards</a>,</li>
                            <li><a href="shop-left-sidebar.html">Lighting</a>,</li>
                            <li><a href="shop-left-sidebar.html">Nightstands</a></li>
                        </ul>
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

<!--=====  End of single product content  ======-->

<!--=======  product description review   =======-->

    <div class="product-description-review-area mb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  product description review container  =======-->

                    <div class="tab-slider-wrapper product-description-review-container">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="description-tab" data-toggle="tab"
                                   href="#product-description" role="tab"
                                   aria-selected="true">Description</a>
                                <a class="nav-item nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab"
                                   aria-selected="false">Review</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="product-description" role="tabpanel"
                                 aria-labelledby="description-tab">
                                <!--=======  product description  =======-->

                                <div class="product-description">
                                    <p>${goods.datails}</p>
                                </div>

                                <!--=======  End of product description  =======-->
                            </div>
                            <#--<div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">-->
                                <#--<!--=======  review content  =======&ndash;&gt;-->

                                <#--<div class="product-ratting-wrap">-->
                                    <#--<div class="pro-avg-ratting">-->
                                        <#--<h4>4.5 <span>(Overall)</span></h4>-->
                                        <#--<span>Based on 9 Comments</span>-->
                                    <#--</div>-->
                                    <#--<div class="ratting-list">-->
                                        <#--<div class="sin-list float-left">-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<span>(5)</span>-->
                                        <#--</div>-->
                                        <#--<div class="sin-list float-left">-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<span>(3)</span>-->
                                        <#--</div>-->
                                        <#--<div class="sin-list float-left">-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<span>(1)</span>-->
                                        <#--</div>-->
                                        <#--<div class="sin-list float-left">-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<span>(0)</span>-->
                                        <#--</div>-->
                                        <#--<div class="sin-list float-left">-->
                                            <#--<i class="fa fa-star"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<i class="fa fa-star-o"></i>-->
                                            <#--<span>(0)</span>-->
                                        <#--</div>-->
                                    <#--</div>-->
                                    <#--<div class="rattings-wrapper">-->

                                        <#--<div class="sin-rattings">-->
                                            <#--<div class="ratting-author">-->
                                                <#--<h3>Cristopher Lee</h3>-->
                                                <#--<div class="ratting-star">-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<span>(5)</span>-->
                                                <#--</div>-->
                                            <#--</div>-->
                                            <#--<p>enim ipsam voluptatem quia voluptas sit-->
                                                <#--aspernatur aut odit aut fugit, sed quia res eos-->
                                                <#--qui ratione voluptatem sequi Neque porro-->
                                                <#--quisquam est, qui dolorem ipsum quia dolor sit-->
                                                <#--amet, consectetur, adipisci veli</p>-->
                                        <#--</div>-->

                                        <#--<div class="sin-rattings">-->
                                            <#--<div class="ratting-author">-->
                                                <#--<h3>Rashed Mahmud</h3>-->
                                                <#--<div class="ratting-star">-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<span>(5)</span>-->
                                                <#--</div>-->
                                            <#--</div>-->
                                            <#--<p>enim ipsam voluptatem quia voluptas sit-->
                                                <#--aspernatur aut odit aut fugit, sed quia res eos-->
                                                <#--qui ratione voluptatem sequi Neque porro-->
                                                <#--quisquam est, qui dolorem ipsum quia dolor sit-->
                                                <#--amet, consectetur, adipisci veli</p>-->
                                        <#--</div>-->

                                        <#--<div class="sin-rattings">-->
                                            <#--<div class="ratting-author">-->
                                                <#--<h3>Hasan Mubarak</h3>-->
                                                <#--<div class="ratting-star">-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<i class="fa fa-star"></i>-->
                                                    <#--<span>(5)</span>-->
                                                <#--</div>-->
                                            <#--</div>-->
                                            <#--<p>enim ipsam voluptatem quia voluptas sit-->
                                                <#--aspernatur aut odit aut fugit, sed quia res eos-->
                                                <#--qui ratione voluptatem sequi Neque porro-->
                                                <#--quisquam est, qui dolorem ipsum quia dolor sit-->
                                                <#--amet, consectetur, adipisci veli</p>-->
                                        <#--</div>-->

                                    <#--</div>-->
                                    <#--<div class="ratting-form-wrapper fix">-->
                                        <#--<h3>Add your Comments</h3>-->
                                        <#--<form action="#">-->
                                            <#--<div class="ratting-form row">-->
                                                <#--<div class="col-12 mb-15">-->
                                                    <#--<h5>Rating:</h5>-->
                                                    <#--<div class="ratting-star fix">-->
                                                        <#--<i class="fa fa-star-o"></i>-->
                                                        <#--<i class="fa fa-star-o"></i>-->
                                                        <#--<i class="fa fa-star-o"></i>-->
                                                        <#--<i class="fa fa-star-o"></i>-->
                                                        <#--<i class="fa fa-star-o"></i>-->
                                                    <#--</div>-->
                                                <#--</div>-->
                                                <#--<div class="col-md-6 col-12 mb-15">-->
                                                    <#--<label for="name">Name:</label>-->
                                                    <#--<input id="name" placeholder="Name" type="text">-->
                                                <#--</div>-->
                                                <#--<div class="col-md-6 col-12 mb-15">-->
                                                    <#--<label for="email">Email:</label>-->
                                                    <#--<input id="email" placeholder="Email" type="text">-->
                                                <#--</div>-->
                                                <#--<div class="col-12 mb-15">-->
                                                    <#--<label for="your-review">Your Review:</label>-->
                                                    <#--<textarea name="review" id="your-review"-->
                                                              <#--placeholder="Write a review"></textarea>-->
                                                <#--</div>-->
                                                <#--<div class="col-12">-->
                                                    <#--<input value="add review" type="submit">-->
                                                <#--</div>-->
                                            <#--</div>-->
                                        <#--</form>-->
                                    <#--</div>-->
                                <#--</div>-->

                                <#--<!--=======  End of review content  =======&ndash;&gt;-->
                            <#--</div>-->
                        </div>
                    </div>

                    <!--=======  End of product description review container  =======-->
                </div>
            </div>
        </div>
    </div>

<!--=======  End of product description review   =======-->

<!--=============================================
=            related product slider         =
=============================================-->
    <#if (goodsOrderByCommend?size > 0)>
        <div class="related-product-slider-area mb-50">
        <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <!--=======  section title  =======-->

                <div class="section-title">
                    <h2>商品推荐</h2>
                </div>

                <!--=======  End of section title  =======-->
            </div>
        </div>
        <div class="row">
        <div class="col-lg-12">
        <!--=======  tab product slider  =======-->

        <div class="fl-slider tab-product-slider">
        <!--=======  single product  =======-->
        <#list goodsOrderByCommend as goodslist>
            <div class="fl-product">
            <div class="image sale-product">
            <a href="/Products?id=${goodslist.id}">
        <img src="/asjy/file/${goodslist.path}" class="img-fluid" alt="">
        <img src="/asjy/file/${goodslist.path2}" class="img-fluid" alt="">
            </a>
        <!-- wishlist icon -->
        <span class="wishlist-icon">
                                        <a href="#"><i class="icon ion-md-heart-empty"></i></a>
                                </span>
            </div>
            <div class="content">
            <h2 class="product-title"><a href="/Products?id=${goodslist.id}">${goodslist.goodsname}</a></h2>
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


            </div>
            </div>
        </#list>


        <!--=======  End of single product  =======-->

        </div>

        <!--=======  End of tab product slider  =======-->
        </div>
        </div>
        </div>
        </div>
    </#if>



    <!--=====  End of related product slider  ======-->

<#include "footer.ftl">

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

<div class="modal fade quick-view-modal-container" id="quick-view-modal-container" tabindex="-1" role="dialog"
     aria-hidden="true">
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
                            <div class="tab-content product-large-image-list fl-product-large-image-list fl3-product-large-image-list quickview-product-large-image-list"
                                 id="myTabContent2">
                                <div class="tab-pane fade show active" id="single-slide-1-q" role="tabpanel"
                                     aria-labelledby="single-slide-tab-1-q">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="../YiHome/assets/images/single-product-slider/01.jpg"
                                             class="img-fluid" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide-2-q" role="tabpanel"
                                     aria-labelledby="single-slide-tab-2-q">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="../YiHome/assets/images/single-product-slider/02.jpg"
                                             class="img-fluid" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide-3-q" role="tabpanel"
                                     aria-labelledby="single-slide-tab-3-q">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="../YiHome/assets/images/single-product-slider/03.jpg"
                                             class="img-fluid" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide-4-q" role="tabpanel"
                                     aria-labelledby="single-slide-tab-4-q">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="../YiHome/assets/images/single-product-slider/04.jpg"
                                             class="img-fluid" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide-5-q" role="tabpanel"
                                     aria-labelledby="single-slide-tab-5-q">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="../YiHome/assets/images/single-product-slider/05.jpg"
                                             class="img-fluid" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                            </div>
                            <!--product large image End-->

                            <!--product small image slider Start-->
                            <div class="product-small-image-list fl-product-small-image-list fl3-product-small-image-list quickview-product-small-image-list">
                                <div class="nav small-image-slider fl3-small-image-slider" role="tablist">
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="single-slide-tab-1-q" href="#single-slide-1-q"><img
                                                    src="../YiHome/assets/images/single-product-slider/01.jpg"
                                                    class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="single-slide-tab-2-q" href="#single-slide-2-q"><img
                                                    src="../YiHome/assets/images/single-product-slider/02.jpg"
                                                    class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="single-slide-tab-3-q" href="#single-slide-3-q"><img
                                                    src="../YiHome/assets/images/single-product-slider/03.jpg"
                                                    class="img-fluid" alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="single-slide-tab-4-q" href="#single-slide-4-q"><img
                                                    src="../YiHome/assets/images/single-product-slider/04.jpg"
                                                    alt=""></a>
                                    </div>
                                    <div class="single-small-image img-full">
                                        <a data-toggle="tab" id="single-slide-tab-5-q" href="#single-slide-5-q"><img
                                                    src="../YiHome/assets/images/single-product-slider/05.jpg"
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

                            <p class="product-description mb-20">Lorem ipsum dolor sit amet, consectetur adipisicing
                                elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                                minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis
                                vulputate, tristique ut lectus</p>


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
<script src="../YiHome/assets/js/vendor/jquery.min.js"></script>
<!-- JQuery Cookie-->
<script src="../YiHome/assets/js/vendor/carhartl-jquery-cookie/jquery.cookie.js"></script>

<!-- Popper JS -->
<script src="../YiHome/assets/js/popper.min.js"></script>

<!-- Bootstrap JS -->
<script src="../YiHome/assets/js/bootstrap.min.js"></script>

<!-- Plugins JS -->
<script src="../YiHome/assets/js/plugins.js"></script>

<!-- Main JS -->
<script src="../YiHome/assets/js/main.js"></script>
<!-- goodscar JS -->
<script src="../YiHome/assets/js/goodscar.js"></script>

<script >


    var store = ${goods.store?c};
    var goodsid = ${goods.id};
    $("#quantity").change(function () {
        if ($(this).val() > store){
            $(this).val(store);
        }

    });
    $(function () {
        var artno = ${goods.artno?c};
        var spec0id = $("#index0").attr("specid");
        var spec1id = $("#index1").attr("specid");
        var spec0_specvid = $("#index0").find(".active").attr("specvid");
        var spec1_specvid = $("#index1").find(".active").attr("specvid");

        //读取被选中的规格值/规格的id

        $("#index0").find(".inactive").attr("otherspecid",spec1id);
        $("#index0").find(".inactive").attr("otherspecvid",spec1_specvid);
        $("#index1").find(".inactive").attr("otherspecid",spec0id);
        $("#index1").find(".inactive").attr("otherspecvid",spec0_specvid);
        var arr = [];
        var speclist = $("#spec").find(".inactive");
        //读取未被选择的规格及规格值
        //传到后台判断

        speclist.each(function () {
            var obj = {};
            obj.specid=$(this).parent().attr("specid");
            obj.specvid=$(this).attr("specvid");
            obj.otherspecid = $(this).attr("otherspecid")
            obj.otherspecvid =$(this).attr("otherspecvid")
            obj.artno = artno.toString();
            arr.push(obj)
        })
        // console.log(arr);
        $.ajax({
            url:"/FgPage/SpecAjax",
            type:"post",
            data: JSON.stringify(arr),
            contentType: "application/json",
            success:function(data){
                $.each(data, function (i, n) {
                    var specid = n.specid;
                    var specvid = n.specvid;
                    if (n.status == "finded"){

                        //附查询到的id
                        $("#spec").find("[specid="+n.specid+"]").find("[specvid="+n.specvid+"]").attr("onclick","javascrtpt:window.location.href='/Products?id="+n.goodsid+"'")
                    }else if(n.status == "undefind"){
                        // $("#spec").find("[specid="+n.specid+"]").find("[specvid="+n.specvid+"]").removeClass("inactive")
                        // $("#spec").find("[specid="+n.specid+"]").find("[specvid="+n.specvid+"]").removeClass("btn")
                        $("#spec").find("[specid="+n.specid+"]").find("[specvid="+n.specvid+"]").attr("class","disable")
                        //变为灰色
                    }
                    // console.log(n.specid)
                });
            }
        })
    });

</script>

</body>

</html>
