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
<!-- saved from url=(0048)http://m.dianping.com/shoplist/1/d/1/c/10/s/s_-1 -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>罗田好吃-遇见罗田</title>
    <meta name="x5-cache" content="enable">
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no">
    <meta name="keywords" content="遇见罗田,吃、玩、住">
    <meta name="description" content="遇见罗田,吃、玩、住">
    <link rel="stylesheet" href="/resources/css/main.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/shop_entry.css" type="text/css">
    <style>
        .icon {
            position: absolute;
            width: 15px;
            height: 15px;
            top: 50%;
            left: 15px;
            margin-top: -8px;
            background-image: url(//www.dpfile.com/app/app-m-module/static/1690f83….png);
            background-repeat: no-repeat;
            background-position: -1px -306px;
            background-size: 46px;
        }

    </style>
</head>

<body>
<div class="J_header">
    <header class="list-head">
        <a class="newback" href="javascript:history.go(-1);"></a>
        <div class="list-type-cnt">
            <div class="list-type">
                <a class="on">推荐商户</a>
                <%--<a >住宿</a>--%>
            </div>
        </div>
    </header>
</div>


<div class="J_mapiSearch">
    <ul class="search-list J_list">
        <c:forEach items="${v_list}" var="Vendor">
            <li class="">

                <a class="item Fix"
                   href="/shop/detail/${Vendor.vendor_id}.html">

                    <div class="pic">
                        <img src="/resources/images/vendor/${Vendor.vendor_id}_list.jpg"
                             style="width:66px;height: 66px;">


                    </div>
                    <div class="content">
                        <div class="name">
                            <h3 class="shopname">
                                <span class="shop_name" style="max-width: 1145px;">${Vendor.name}</span>
                            </h3>
                        </div>
                        <div class="comment">
                            <span class="star star-45" style="display: none;"></span>
                            <span>￥${Vendor.sale_percapitaprice}/人</span>
                        </div>
                        <div class="intro Fix">
                            <span style="display: none;">新天地</span>
                            <span class="type">${Vendor.sale_cookingstyle}</span>
                        </div>

                        <div class="tag-list">
                        </div>

                    </div>
                </a>

                <div class="new-coupon">
                    <a class="coupon"
                       href="https://m.dianping.com/tuan/deal/27191537?from=shoplist&amp;shoplistqueryid=4956179e-8151-4fd7-95c5-9a98156f5e47">
                        <i class="icon"></i>
                        <span class="coupon-info">三里畈温泉度假村周边200米</span>
                        <i class="arrowent"></i>
                    </a>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>


<div class="overlay"
     style="top: 0px; left: 0px; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.6); z-index: 200; position: fixed; display: none;"></div>
<a onclick="window.scrollTo(0,0)" class="top-box Hide">
    <div class="arrow-ent"></div>
</a></body>
</html>