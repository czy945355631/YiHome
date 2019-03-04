$(function () {
    //显示购物车
    showGoodsCar()
})
function showGoodsCar() {
    //展示购物车
    //发送购物车数据到前台，查询商品详细信息并返回给前台，前台进行拼接展示。
    // if($.cookie("goodscar")!=null){
        // var jsonObj = $.parseJSON($.cookie("goodscar"))
        // console.log(jsonObj)
        // var goodsidlist = [];
        // $.each(jsonObj,function(index,value){
        //     var goods = {}
        //     goods.goodsid = value.goodsid;
        //     goods.quantity=value.quantity;
        //     goodsidlist.push(goods)
        // });
        $.ajax({
            url:"/Cart/getGoodsCar",
            type:"post",
            contentType: "application/json",
            success:function(data){
                var obj = JSON.parse(data);
                console.log(obj);
                if (obj != null){
                    var sum = 0;
                    var count = 0;
                    $.each(obj,function(index,value){
                        var goodsid = value.goodsid;
                        var goods = value.goods;
                        console.log(goods);
                        var path = goods.path;
                        var quantity = Number(value.quantity);
                        // console.log(quantity)
                        var price = Number(goods.nowPrice);
                        var sumprice = Number(price)*Number(quantity);
                        sum += sumprice;
                        var goodsname = goods.goodsname;
                        var goodscartag = "<div class=\"cart-float-single-item d-flex\">\n" +
                            "                                            <span class=\"remove-item\" id=\"remove-item\"><a href=\"#\"><i class=\"icon ion-md-close\"></i></a></span>\n" +
                            "                                            <div class=\"cart-float-single-item-image\">\n" +
                            "                                                <a href=\"/Products?id="+goodsid+"\"><img src=\"/asjy/file/"+path+"\" class=\"img-fluid\" alt=\"\"></a>\n" +
                            "                                            </div>\n" +
                            "                                            <div class=\"cart-float-single-item-desc\">\n" +
                            "                                                <p class=\"product-title\"> <a href=\"/Products?id="+goodsid+"\">"+goodsname+"</a></p>\n" +
                            "                                                <p class=\"quantity\"> 数量: "+quantity+"</p>\n" +
                            "                                                <p class=\"price\">￥"+sumprice+"</p>\n" +
                            "                                            </div>\n" +
                            "                                        </div>";
                        $("#goodscar").append(goodscartag);
                        count++;
                    });
                    $("#goodscar").parent().parent().find("a").find("h5").html("￥"+sum);
                    $("#goodscar").parent().parent().find("a").find("p").html(count+"件商品")
                    $("#sum").html("￥"+sum);
                }
            }
        })
}





function addGoodstoCar(goodsid,quantity,store) {
    //添加到购物车
    if (quantity == "single") {
        // 判断是单页还是首页，如果为单页
        quantity = $("#quantity").val();

        if (quantity > store){
            //判断是否大于库存
            alert("库存不足")
            return;
        }
    }else {
        //如果为首页，指定库存为1
        quantity = 1;
    }
    $.ajax({
        url:"/Cart/AddGoodsCart",
        type:"post",
        data:{goodsid:goodsid,quantity:quantity},
        success:function (data) {
            $("#goodscar").html("");
            showGoodsCar();
        }
    })
}