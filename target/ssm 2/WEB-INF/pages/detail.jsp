<%@ page import="static com.tools.DateUtil.stampToDate" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: hexianglin
  Date: 2017/9/20
  Time: 下午4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<!DOCTYPE html>
<!-- saved from url=(0113)http://m.dianping.com/shop/67519205?from=shoplist&shoplistqueryid=4956179e-8151-4fd7-95c5-9a98156f5e47&showVideo= -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${requestScope.c_vendor.name}-遇见罗田</title>
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

                <span class="mainType" style="display: none;">新天地</span>
                <span class="subType">${requestScope.c_vendor.sale_cookingstyle} </span>
            </p>
        </div>
        <a class="new_pic" href="javascript:;">
            <%--商家图片--%>
            <c:forEach items="${vc_list_shop}" var="Vendorrecommend">
            <span>
            <img src="/resources/images/vendor/${Vendorrecommend.pic}" class="preview_img" width="90px"
                 alt="${requestScope.c_vendor.name} ">
            </span>
            </c:forEach>
        </a>


        <div class="desc" style="display: none;">


            <span>口味:8.4</span>

            <span>环境:8.8</span>

            <span>服务:8.1</span>


        </div>

    </div>
</div>

<div class="J_address">
    <div class="details-mode info-address">
        <div class="info-list link-list">

            <a class="item" href="http://apis.map.qq.com/uri/v1/geocoder?coord=${requestScope.c_vendor.address_point_x},${requestScope.c_vendor.address_point_y}&referer=myapp">
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
                <a class="item " href="tel:13297571510">
                    <i class="icon-call"></i>13297571510
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
        <a class="recommendDishTitle" href="javascript:;">
            <h3 class="text">推荐菜</h3>
            <i class="arrowent"></i>
        </a>

        <div class="recommendHead">
            <span class="textBorder"></span>
            <span class="text">网友推荐<ins class="count">(${requestScope.vc_list_recommend_count})</ins></span>
            <span class="textBorder"></span>
        </div>


        <div class="dishPics">
            <%--推荐菜--%>
            <c:forEach items="${vc_list_recommend}" var="Vendorrecommend">

                <a class="dishItem" href="javascript:;">
                    <div class="dishPicItem" style="display: block;">
                        <img src="/resources/images/vendor/${Vendorrecommend.pic}" alt="">
                        <div class="recommendInfo" style="display: none;">
                            <span class="goodUp"></span>361人推荐
                        </div>
                        <div class="dishName">${Vendorrecommend.title}</div>
                    </div>
                </a>
            </c:forEach>

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
        <a href="javascript:;">
            <h3 class="title-item"> 网友点评(${requestScope.c_list_count}) <i class="arrowent"></i></h3>
        </a>

        <div class="comment-list">

            <c:forEach items="${c_list}" var="Comment">

                <div class="singleUser" data-id="369285776">
                    <div class="user-pic">
                        <img src="/resources/images/user_head.jpg">
                    </div>
                    <a class="comment" href="javascript:;">
                        <div class="username">
                                ${Comment.wxUsername}
                        </div>
                        <div class="info">
                            <span class="star star-40"></span>
                        </div>
                        <div class="comment-entry">
                                ${Comment.content}
                        </div>

                        <div class="dishPic" style="display: none;">


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
                            <span>${Comment.timeStr}</span>
                            <span style="display: none;">赞7</span>


                        </div>
                    </a>
                </div>

            </c:forEach>

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


<div class="J_footer" style="display: none;">
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