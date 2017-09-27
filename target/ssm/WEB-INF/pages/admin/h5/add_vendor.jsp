<%--
  Created by IntelliJ IDEA.
  User: hexianglin
  Date: 2017/9/26
  Time: 下午9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>遇见-添加</title>
    <link rel="stylesheet" href="/resources/css/login_style.css" type="text/css">
</head>
<body>

<header>
    <div class="top-bar">
        <div class="back"><a href="javascript:history.go(-1);"></a></div>
        <div class="title">管理员登录</div>
        <div class="register"></div>
    </div>
</header>
<div id="login_form" class="form mt16">
    <div>
        <div class="EasyLogin_Mobile_Mobile">

            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">商家名称:</div>
                <input type="text" id="name" placeholder="商家名称">
            </div>
            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">商家地址:</div>
                <input type="text" id="address" placeholder="请输入商家地址">
            </div>
            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">经纬度:</div>
                <input type="text" id="address_point_x" placeholder="经"><input type="text" id="address_point_y" placeholder="纬">
            </div>
            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">商家logo:</div>
                <input type="text" id="logo" >
            </div>
            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">人均消费:</div>
                <input type="text" id="sale_percapitaprice" >
            </div>
            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">餐饮类型:</div>
                <input type="text" id="sale_cookingstyle" placeholder="火锅,炒菜">
            </div>
            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">营业时间:</div>
                <input type="text" id="business_hours" placeholder="星期一 至 星期天 10:00-22:00">
            </div>
        </div>
    </div>

    <div class="form-button">
        <a id="login_button" href="javascript:;" class="login">创建</a>
    </div>

    <div class="overlay"
         style="top: 0px; left: 0px; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.6);
         z-index: 9999; position: fixed; display: none;"></div>

    <script src="/resources/js/jquery-3.2.1.min.js"></script>
    <script>

        $(function () {
            $("#login_button").click(function () {
                var name = $("#name").val();
                var address = $("#address").val();
                var address_point_x = $("#address_point_x").val();
                var address_point_y = $("#address_point_y").val();
                var logo = $("#logo").val();
                var sale_percapitaprice = $("#sale_percapitaprice").val();
                var sale_cookingstyle = $("#sale_cookingstyle").val();
                var business_hours = $("#business_hours").val();
                var mdata='name='+name+'&address='+address+'&address_point_x='+address_point_x+'&address_point_y='+address_point_y+'&logo='+logo+'&sale_percapitaprice='+sale_percapitaprice+'&sale_cookingstyle='+sale_cookingstyle+'&business_hours='+business_hours+''
                //alert(1);

                $.ajax({
                    type: "POST",
                    url: "/admin/vendor/add",
                    dataType: "json",
                    //contentType:"application/json", //不能添加这个头
                    data: mdata, //这里不能进行JSON.stringify,发送请求的数据在:form data
                    success: function (data) {
                        if (data.msg == "ok") {
                            alert("添加成功");
                            window.location.href =window.location.href;
                            //window.location.reload();
                        }
                        else {
                            alert("添加失败");
                        }

                    }
                });


            });
        })


    </script>
</body>
</html>