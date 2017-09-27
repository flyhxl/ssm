<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hexianglin
  Date: 2017/9/20
  Time: 下午4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0113)http://m.dianping.com/shop/67519205?from=shoplist&shoplistqueryid=4956179e-8151-4fd7-95c5-9a98156f5e47&showVideo= -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>test</title>
    <meta name="x5-cache" content="enable">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <meta name="keywords" content="遇见罗田,吃、玩、住">
    <meta name="description" content="遇见罗田,吃、玩、住">
    <link rel="stylesheet" href="/resources/css/main.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/app.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop_entry.css" type="text/css">
</head>


<body class="shop-details">

<div class="J_header">

    <header class="shop-head">
        <a href="javascript:history.go(-1);" class="back">返回
        </a>
        <div class="placeholder"></div>
        <div class="title">商户详情</div>
    </header>

</div>

<div class="J_download-guide">

</div>

<div class="J_baseinfo">


    <div class="shopInfoPagelet shopMorePics">
        <div class="shopPicBg morePics">
            <h1 class="shop-name">${requestScope.c_vendor.name} </h1>
            <p>
                <span class="star star-45"></span>

                <span class="itemNum" style="display: none;"> <span class="itemNum-val">2898</span>条</span>


                ¥<span class="price">${requestScope.c_vendor.sale_percapitaprice}</span>/人

                <span class="mainType">新天地</span>
                <span class="subType">${requestScope.c_vendor.sale_cookingstyle} </span>
            </p>
        </div>
        <a class="new_pic" href="https://m.dianping.com/shop/67519205/photos">

        <span>
        <img src="/resources/images/d1.jpg"
             class="preview_img" width="90px" alt="${requestScope.c_vendor.name} ">
        </span>

            <span>
            <img src="/resources/images/d1.jpg" class="preview_img" width="90px" alt="G${requestScope.c_vendor.name} ">
        </span>

            <span>
           <img src="/resources/images/d1.jpg" class="preview_img" width="90px" alt="${requestScope.c_vendor.name} ">
        </span>

            <span>
            <img src="/resources/images/d1.jpg" class="preview_img" width="90px" alt="Green&amp;Safe(新天地店)">
        </span>

            <span>
            <img src="/resources/images/d1.jpg" class="preview_img" width="90px" alt="Green&amp;Safe(新天地店)">
        </span>

        </a>


        <div class="desc">


            <span>口味:8.4</span>

            <span>环境:8.8</span>

            <span>服务:8.1</span>


        </div>

    </div>
</div>

<div class="J_address">
    <div class="details-mode info-address">
        <div class="info-list link-list">
            <a class="item" href="http://uri.amap.com/marker?position=116.473195,39.993253">
                <i class="icon-address"></i>${requestScope.c_vendor.address}
                <i class="arrowent"></i>
            </a>
        </div>
    </div>
</div>

<div class="J_phone">

    <div class="details-mode info-address">
        <div class="info-list link-list" data-ktv="false">

            <div>
                <a class="item " href="tel:02163860140">
                    <i class="icon-call"></i>02163860140
                    <i class="arrowent"></i>
                </a>
            </div>

        </div>
    </div>
    <div class="standardBord"></div>

</div>

<div class="J_goldtongue">

</div>

<div class="J_massage-booking">

</div>

<div class="J_ktv-book">

</div>


<div class="J_recommend">

    <div class="recommendDish  ">
        <a class="recommendDishTitle" href="https://m.dianping.com/shop/67519205/dishlist"
           onclick="LXAnalytics(&#39;moduleClick&#39;, &#39;b_lt6zgemc&#39;, {custom:{module:&#39;shopinfo_dish&#39;,shopid:&#39;67519205&#39;}})">
            <h3 class="text">推荐菜</h3>
            <i class="arrowent"></i>
        </a>

        <div class="recommendHead">
            <span class="textBorder"></span>
            <span class="text">网友推荐<ins class="count">(279)</ins></span>
            <span class="textBorder"></span>
        </div>


        <div class="dishPics">

            <a class="dishItem" href="https://m.dianping.com/shop/67519205/dish70158">
                <div class="dishPicItem" style="display: block;">
                    <img src="/resources/images/menu.jpg" alt="">
                    <div class="recommendInfo">
                        <span class="goodUp"></span>361人推荐
                    </div>
                    <div class="dishName">色拉三吃</div>
                </div>
            </a>

            <a class="dishItem" href="https://m.dianping.com/shop/67519205/dish1012">
                <div class="dishPicItem" style="display: block;">
                    <img src="/resources/images/menu.jpg" alt="">
                    <div class="recommendInfo">
                        <span class="goodUp"></span>257人推荐
                    </div>
                    <div class="dishName">M6和牛肉眼牛排</div>
                </div>
            </a>

            <a class="dishItem" href="https://m.dianping.com/shop/67519205/dish10366742">
                <div class="dishPicItem" style="display: block;">
                    <img src="/resources/images/menu.jpg" alt="">
                    <div class="recommendInfo">
                        <span class="goodUp"></span>231人推荐
                    </div>
                    <div class="dishName">黑松露咸筒</div>
                </div>
            </a>


            <a class="dishItem" href="https://m.dianping.com/shop/67519205/dish250070">
                <div class="dishPicItem" style="display: block;">
                    <img src="/resources/images/menu.jpg" alt="">
                    <div class="recommendInfo">
                        <span class="goodUp"></span>65人推荐
                    </div>
                    <div class="dishName">咸筒四吃</div>
                </div>
            </a>

        </div>


    </div>
    <div class="standardBord"></div>


</div>

<div class="J_ktvmg">

</div>
<div class="J_otherinfo">

    <div class="shopInfo">
        <h3 class="infoTitle">
            商户信息
        </h3>
        <div class="otherInfo">
            <div class="businessTime">
                营业时间：${requestScope.c_vendor.businesshours}
            </div>
        </div>
    </div>
    <div class="standardBord"></div>
</div>

<div class="J_review">

    <div class="modebox shop-comment">
        <a onclick="LXAnalytics(&#39;moduleClick&#39;, &#39;b_bhk0onkn&#39;, {custom:{module:&#39;shopinfo_viewreview&#39;,shopid:&#39;67519205&#39;}})"
           href="https://m.dianping.com/shop/67519205/review_all">
            <h3 class="title-item"> 网友点评(2898) <i class="arrowent"></i></h3>
        </a>

        <div class="comment-list">

            <c:forEach items="${c_list}" var="Comment">

                <div class="singleUser" data-id="369285776">
                    <div class="user-pic">
                        <img src="/resources/images/user_head.jpg">
                    </div>
                    <a class="comment" href="https://m.dianping.com/shop/67519205/review_all">
                        <div class="username">
                                ${Comment.wxUsername}
                        </div>
                        <div class="info">
                            <span class="star star-40"></span>
                        </div>
                        <div class="comment-entry">
                                ${Comment.content}
                        </div>

                        <div class="dishPic">


                            <div class="imgFrame">
                                <img src="./detail_files/y2j3FSFl8rFMqw9XkGe-Aumu7AUASvH6FjiYOtw94tUfL8Syu2VYB8L4J0OuHB33GybIjx5eX6WNgCPvcASYAw.jpg"
                                     alt="Green&amp;Safe评论图片" class="picExample" style="height: 129px;">


                            </div>


                            <div class="imgFrame">
                                <img src="./detail_files/D-t9q4U4FVKoPQRKuhapCoPs4KfrYJyL2wMfcz3swSMmpoyeBPQOJE4vOdYZwm9AGybIjx5eX6WNgCPvcASYAw.jpg"
                                     alt="Green&amp;Safe评论图片" class="picExample" style="height: 129px;">


                            </div>


                            <div class="imgFrame">
                                <img src="./detail_files/g8N7x4CuZ-FS0piEgmHgXJjfSYl0Xkpyl5ZAv4Fwlkuy70VzwHwZJS5WbgX4LWBLGybIjx5eX6WNgCPvcASYAw.jpg"
                                     alt="Green&amp;Safe评论图片" class="picExample" style="height: 129px;">


                                <div class="imgNum"><i></i><span>11</span></div>

                            </div>


                        </div>

                        <div class="comment-info">

                            <span>浏览31373</span>


                            <span>赞7</span>


                        </div>
                    </a>
                </div>


            </c:forEach>
            <div class="singleUser" data-id="370072120" style="display: none;">
                <div class="user-pic">
                    <img src="/resources/images/user_head.jpg">
                </div>
                <a class="comment" href="https://m.dianping.com/shop/67519205/review_all">
                    <div class="username">
                        lumenmen
                    </div>
                    <div class="info">
                        <span class="star star-50"></span>


                    </div>
                    <div class="comment-entry">
                        居然比想象中的好，超赞哦！
                        环境：意大利餐厅给我的概念应该是很正统的那种，这家倒是有点小清新，工业装修，硬朗很随意，没有压力感，菜单也很欧美，等位时5岁儿子说感觉像在美国：D
                        菜品：没有一道菜让我失望的👍
                        咸筒：28/个，比我想象中的小，要了松茸菌的，很鲜满口鲜香的菌菇味，口感很独特；
                        生蚝：惊艳到我了，58/个，不便宜也不是最贵，我不喜欢生蚝是因为有时很腥，或有会有点杂质，这家非常非常新鲜，品像就很干净，白白嫩嫩的，后来上的海鲜拼盘里烤的生蚝也很好吃；
                        冷肉拼盘：一般冷肉我喜欢配盘生菜吃，太多没有全部尝遍，的蜂蜜倒是很特别；
                        饮料：饮料也非常非常好哦！牛油果香蕉奶昔38/元，被我一口气就喝完了（所以后面菜也吃不下了），水果啤酒真的是有水果味唉！没有啤酒的苦味，每日果汁儿子也说好喝，味道配的刚刚好！
                        牛排：我是冲着牛排去的，倒是没有想象中的好，两头太油腻了，中间段的肉倒是还不错，肉的品质还是挺好的，没有惊艳，也谈不上失望；
                        薯条：虽然吃不下了，但尝了两口，真的很好吃唉！我喜欢粗的薯条，这个真的是够粗，哈哈！
                        海鲜拼盘：我实在是吃不动了，吃了个波龙大鳌肉质带点点咸，非常好吃；
                        这家的菜看家菜非常非常多，可以当下午茶的菜品也非常多，值得多来几次，细细品尝！
                    </div>

                    <div class="dishPic">


                        <div class="imgFrame">
                            <img src="./detail_files/dx9CxqvSZS6kL7uvRs3vnbV_kw_8uhOQtmXWd9joEohej6SzjOLL4AHjAW34ZgqwGybIjx5eX6WNgCPvcASYAw.jpg"
                                 alt="Green&amp;Safe评论图片" class="picExample" style="height: 129px;">


                        </div>


                        <div class="imgFrame">
                            <img src="./detail_files/_y0pB1XBjDUMNpjRiIPeUdjN5hREf5_2eS9jqFLk7W1dcfOP9aI9-XQw8T5ZHFEyGybIjx5eX6WNgCPvcASYAw.jpg"
                                 alt="Green&amp;Safe评论图片" class="picExample" style="height: 129px;">


                        </div>


                        <div class="imgFrame">
                            <img src="./detail_files/pQIBZ-O0laZeGw9FnzNP1tTcIJaOA5JZXVaAlZUr1YJReOmlC99TbGR2C9Ecoc-zGybIjx5eX6WNgCPvcASYAw.jpg"
                                 alt="Green&amp;Safe评论图片" class="picExample" style="height: 129px;">


                            <div class="imgNum"><i></i><span>9</span></div>

                        </div>


                    </div>

                    <div class="comment-info">

                        <span>浏览3919</span>


                        <span>赞2</span>


                    </div>
                </a>
            </div>

        </div>
    </div>
    <div class="standardBord"></div>

</div>

<div class="J_bottom-search">
    <div class="footer-tags-box">
        <!--底部查找模块-->
        <div class="home-search">
            <textarea placeholder="给商户一个好评吧" id="user_comment" name="keyword" style="height:80px;"></textarea>

        </div>
    </div>
</div>

<div class="J_ugc">
    <div class="simpleFunction ">
        <a class="functionItem" style="cursor: hand;" id="sub_comment" title="点评">
            <div class="itemPicBg writecomment"></div>
            确定
        </a>

    </div>

</div>


<div class="J_footer">
    <footer class="footer">
        <a href="http://m.dianping.com/my" title="">我的</a><em>|</em>
        <a href="http://m.dianping.com/history" title="">最近浏览</a><em>|</em>
        <a href="http://m.dianping.com/sitemap/c1c10" title="">网站地图</a><em>|</em>
        <a href="http://evt.dianping.com/synthesislink/6513.html">添加商户</a><em>|</em>
        <a href="http://m.dianping.com/feedback" title="">意见反馈</a>
        <br>
        <a id="j-computer" href="http://www.dianping.com/" title="">电脑版</a><em>|</em>
        <a id="F_download" href="javascript:void(0)" title="">客户端</a>
        <br>
        <p class="copyright">copyright ©2017 dianping.com</p>
    </footer>
</div>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script>
    $(function () {
        $("#sub_comment").click(function () {
            if ($("#user_comment").val() != "") {

                $.post("/shop/${requestScope.c_vendor.vendor_id}/comment",
                        {
                            str: $("#user_comment").val()
                        },
                        function (data) {
                            if (data != "no") {
                                window.location = window.location
                            }
                            else {
                                alert("提交失败！");
                            }
                        });
            }
            else {

                alert(($("#user_comment").val() == ""));
                alert($("#user_comment").val());

            }
        });

    })


</script>
</body>
</html>