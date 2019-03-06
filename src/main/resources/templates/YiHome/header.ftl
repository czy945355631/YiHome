<!--=============================================
	=            header container         =
	=============================================-->
<!-- jQuery JS -->
<script src="/YiHome/assets/js/vendor/jquery.min.js"></script>
<div class="header-container header-sticky">

    <!--=============================================
    =            header top         =
    =============================================-->

    <div class="header-top pt-15 pb-0">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="header-top-dropdown d-flex justify-content-center justify-content-lg-start">

                        <p><i class="icon ion-md-alarm"></i>
                        <div class="single-dropdown">
                            <a href="/account/register">加入收藏</a>

                        </div>
                        <span class="separator pl-15 pr-15">|</span>

                        <!--=======  End of single dropdown  =======-->

                        <!--=======  single dropdown  =======-->

                        <div class="single-dropdown">
                            <a href="/account/login">分享</a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <!--=======  header top dropdowns  =======-->
                    <div class="header-top-dropdown d-flex justify-content-center justify-content-lg-end">
                        <#if Session["loginName"]?exists>
                            <#if Session["permission"]?exists>
                                <#if Session["permission"] == 1>
                                    <a href="/BsPage/goIndex">后台管理</a>
                                </#if>
                            </#if>
                                
                        <div class="account">
                            <#if .now?string["HH"]?eval < 6>
                                凌晨好
                            <#elseif .now?string["HH"]?eval < 9>
                            早上好
                            <#elseif .now?string["HH"]?eval < 12>
                                上午好
                            <#elseif .now?string["HH"]?eval < 14>
                                中午好
                            <#elseif .now?string["HH"]?eval < 17>
                                下午好
                            <#elseif .now?string["HH"]?eval < 19>
                                傍晚好
                            <#elseif .now?string["HH"]?eval < 22>
                                晚上好
                            <#else >
                                夜深了
                            </#if>
                            ，
                            <a href="/Account/my-account">${Session["loginName"]}</a>
                            <a href="/Account/my-account"><img src="//asset.ibanquan.com/image/569547d30abc3e71be000007/customer_default.png" style="border-radius:50%;" width="20" height="20"></a>
                            &nbsp;&nbsp;&nbsp;
                        </div>
                            <div class="single-dropdown">
                                <a href="/Account/loginout">登出</a>
                            </div>
                        <#else>
                        <div class="single-dropdown">
                            <a href="/Account/Register">没有账号？点此注册</a>
                        </div>
                        <span class="separator pl-15 pr-15">|</span>
                        <!--=======  End of single dropdown  =======-->
                        <!--=======  single dropdown  =======-->
                        <div class="single-dropdown">
                            <a href="/Account/Login">登录</a>
                        </div>

                        </#if>
                        <!--=======  End of single dropdown  =======-->
                    </div>
                        <!--=======  End of header top dropdowns  =======-->
                </div>
            </div>
        </div>
    </div>
    <!--=====  End of header top  ======-->


    <!--=============================================
    =            navigation menu top            =
    =============================================-->


    <div class="navigation-menu-top pt-35 pb-35 pt-md-15 pb-md-15 pt-sm-15 pb-sm-15">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-6 col-lg-2 col-md-6 col-sm-6 order-1 order-lg-1">
                    <!--=======  logo  =======-->

                    <div class="logo">
                        <a href="/FgPage/goIndex">
                            <img src="../YiHome/assets/images/logo.png" class="img-fluid" alt="">
                        </a>
                    </div>

                    <!--=======  End of logo  =======-->
                </div>

                <div class="col-12 col-lg-8 col-md-12 col-sm-12 order-3 order-lg-2">
                    <!--=======  header feature container  =======-->
                    <div class="col-12">
                        <!--=======  navigation search bar  =======-->

                        <div class="navigation-search d-none d-lg-block">
                            <input type="search" id="search" placeholder="搜索商品 ...">
                            <button type="button" href="/Search/goSearch?searchByName=<#if pageinfo??><#if pageinfo.brandid?? && pageinfo.brandid!="">&searchByBrand=${pageinfo.brandid}</#if><#if pageinfo.Classesid?? && pageinfo.Classesid!="">&searchByClasses=${pageinfo.Classesid}</#if></#if>" onclick="javascript:window.location.href=$(this).attr('href') " id="searchbutton"><i class="icon ion-md-search"></i></button>
                        </div>

                        <!--=======  End of navigation search bar  =======-->
                    </div>
                    <!--=======  End of header feature container  =======-->
                </div>

                <div class=" col-6 col-lg-2 col-md-6 col-sm-6 order-2 order-lg-3">
                    <!--=======  cart icon  =======-->

                        <div class="minicart-section">
                            <a href="#" id="cart-icon">
                                <span class="image"><i class="icon ion-md-cart"></i></span>
                                <h5>￥ 0 <i class="fa fa-angle-down"></i></h5>
                                <p>0 件商品</p>
                            </a>

                            <!-- cart floating box -->
                            <div class="cart-floating-box hidden" id="cart-floating-box">
                                <div class="cart-items" id="goodscar">

                                </div>
                                <div class="cart-calculation">
                                    <div class="calculation-details">
                                        <p class="total">总金额 <span id="sum">￥0</span></p>
                                    </div>
                                    <div class="floating-cart-btn text-center">
                                        <a class="fl-btn pull-left" href="/Cart/cartpage">去购物车</a>
                                        <a class="fl-btn pull-right" href="checkout.html">结算</a>
                                    </div>
                                </div>
                            </div>
                            <!-- end of cart floating box -->
                        </div>
                    <!--=======  End of cart icon  =======-->
                </div>
            </div>
        </div>
    </div>

    <!--=======  End of navigation menu top  =======-->

    <!--=============================================
    =            navigation menu         =
    =============================================-->

    <div class="navigation-menu">
        <div class="container">
            <div class="row align-items-center justify-content-between">

                <div class="col-12 col-lg-3 col-md-12 col-sm-12">
                    <!--=======  category menu  =======-->
                    <div class="hero-side-category">
                        <!-- Category Toggle Wrap -->
                        <div class="category-toggle-wrap">
                            <!-- Category Toggle -->
                            <button class="category-toggle"> <i class="fa fa-bars"></i> 分类 </button>
                        </div>
                        <!-- Category Menu -->
                        <nav class="category-menu">
                            <ul>
                                <#list classes as classes1>
                                    <li class="menu-item-has-children"><a href="javascript:void(0);"> ${classes1.classesname}</a>
                                        <ul class="category-mega-menu">
                                            <#list classes1.sonClasses as classes2>
                                                    <#assign classesids></#assign>
                                                    <#assign classesids = classes2.id+",">
                                                        <#list classes2.sonClasses as classes3>
                                                            <#assign classesids =classesids+classes3.id+",">
                                                        </#list>
                                                <li><a href="/Search/goSearch?searchByName=&searchByBrand=&searchByClasses=${classesids}">${classes2.classesname}</a></li>
                                            </#list>
                                        </ul>
                                </#list>
                                <li><a href="#" id="more-btn">... 更多</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!--=======  End of category menu =======-->
                    <!--=======  sticky logo  =======-->
                    <div class="sticky-logo">
                        <a href="/FgPage/goIndex">
                            <img src="../YiHome/assets/images/logo.png" class="img-fluid" alt="">
                        </a>
                    </div>
                    <!--=======  End of sticky logo  =======-->
                    <!--=======  search icon for tablet  =======-->
                    <div class="search-icon-menutop-tablet text-right d-inline-block d-lg-none">
                        <a href="#" id="search-overlay-active-button">
                            <i class="icon ion-md-search"></i>
                        </a>
                    </div>
                    <!--=======  End of search icon for tablet  =======-->
                </div>
                <div class="col-12 col-lg-9">
                    <!-- navigation section -->
                    <div class="main-menu">
                        <nav>
                            <ul>
                                <li class="menu-item-has"><a href="/FgPage/goIndex">首页</a>
                                </li>


                                <li class="menu-item-has"><a href="/Search/goSearch?searchByName=">所有商品</a>
                                </li><li class="menu-item-has"><a href="/Account/my-account">个人中心</a>
                                </li>

                            </ul>
                        </nav>
                    </div>
                    <!-- end of navigation section -->
                </div>
                <div class="col-12 d-block d-lg-none">
                    <!-- Mobile Menu -->
                    <div class="mobile-menu"></div>
                </div>
            </div>
        </div>
    </div>
    <!--=====  End of navigation menu  ======-->
</div>
<script src="../YiHome/assets/js/vendor/carhartl-jquery-cookie/jquery.cookie.js"></script>
<!--=====  End of header container  ======-->
<script>
    var searchByname ;
    var searchByBrand ;
    var searchByClasses;
    <#if pageinfo??>

            <#if pageinfo.brandid?? && pageinfo.brandid!="">
                searchByBrand ='${pageinfo.brandid}'
            </#if>
            <#if pageinfo.Classesid?? && pageinfo.Classesid!="">
            searchByClasses ='${pageinfo.Classesid}'
            </#if>
    </#if>
    $("#search").change(function () {
    searchByname = $("#search").val();
    upSearchHref();
    })
    function upSearchHref() {
        if (searchByname == null){
            searchByname="";
        }
        if (searchByBrand == null){
            searchByBrand="";
        }
        if (searchByClasses == null){
            searchByClasses="";
        }
        $("#searchbutton").attr("href","/Search/goSearch?searchByName="+searchByname+"&searchByBrand="+searchByBrand+"&searchByClasses="+searchByClasses);
    }
    function goSearch() {
        window.location.href=$("#searchbutton").attr("href");
    }
</script>


