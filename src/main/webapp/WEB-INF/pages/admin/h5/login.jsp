<%--
  Created by IntelliJ IDEA.
  User: hexianglin
  Date: 2017/9/26
  Time: 下午3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>遇见-登录</title>
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
                <div class="EasyLogin_Mobile_tit EasyLogin_Mobile_Country">
                    <span class="EasyLogin-country-code" data-code="86">账号</span>
                </div>
                <input type="text" id="login_name" placeholder="请输入账号"></div>
            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">密码</div>
                <input type="password" id="login_password" placeholder="请输入密码">
            </div>
        </div>
    </div>
    <div class="form-info">账号是手动创建</div>
    <div class="form-button">
        <a id="login_button" href="javascript:;" class="login">登录</a>
    </div>


    <div class="agreement">
        遇见登录
    </div>


    <div class="overlay"
         style="top: 0px; left: 0px; width: 100%; height: 100%; background: rgba(0, 0, 0, 0.6);
         z-index: 9999; position: fixed; display: none;"></div>

    <script src="/resources/js/jquery-3.2.1.min.js"></script>
    <script>

        $(function () {
            $("#login_button").click(function () {
                var name = $("#login_name").val();
                var pass = $("#login_password").val();
                //alert(1);

                $.ajax({
                    type: "POST",
                    url: "/admin/loginvalidate",
                    dataType: "json",
                    //contentType:"application/json", //不能添加这个头
                    data: 'u=' + name + '&p=' + pass + '', //这里不能进行JSON.stringify,发送请求的数据在:form data
                    success: function (data) {
                        if (data.msg == "ok") {
                            window.location.href = "/admin/index";
                        }
                        else {
                            alert("您的账号密码有误，请重新输入账号密码!");
                        }

                    }
                });


            });
        })


    </script>
</body>
</html>