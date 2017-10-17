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
    <!--引入CSS-->
    <link rel="stylesheet" type="text/css" href="/resources/webuploader/webuploader.css">
    <script src="/resources/js/jquery-3.2.1.min.js"></script>
    <!--引入JS-->
    <script type="text/javascript" src="/resources/webuploader/webuploader.js"></script>

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
                <div class="EasyLogin_Mobile_tit">商户类型:</div>

                <select id="shop_type" style="margin-left: 20px;">
                    <option value="1">餐馆</option>
                    <option value="2">景点</option>
                </select>
            </div>

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
                <input type="text" id="address_point_x" placeholder="经"><input type="text" id="address_point_y"
                                                                               placeholder="纬">
            </div>
            <div class="EasyLogin_row" id="logodiv" >
                <div class="EasyLogin_Mobile_tit">商家logo:</div>
                <div id="picker_logo">选择文件</div>
                <div id="thelist_logo"></div>
                <div>
                    <div id="ctlBtn_logo" class="webuploader-pick">开始上传</div>
                    <input type="hidden" id="imgs_logo" value="">
                </div>

            </div>
            <div class="EasyLogin_row" style="height: 80px;" id="logo_list" >

            </div>


            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">人均消费:</div>
                <input type="text" id="sale_percapitaprice"/>
            </div>

            <div class="EasyLogin_row" id="shopimg">
                <div class="EasyLogin_Mobile_tit">商家介绍图:</div>

                <div id="picker">选择文件</div>
                <div id="thelist"></div>
                <div>
                    <div id="ctlBtn" class="webuploader-pick">开始上传</div>
                    <input type="hidden" id="imgs" value="">
                </div>
            </div>
            <div class="EasyLogin_row" style="height: 80px;" id="shopimg_list">

            </div>

            <div class="EasyLogin_row">
                <div class="EasyLogin_Mobile_tit">餐饮类型:</div>
                <input type="text" id="sale_cookingstyle" placeholder="火锅,炒菜,景点名称">
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


    <script>

        var BASE_URL = '/resources/webuploader';
        $(function () {

            var $ = jQuery,
                    $list = $('#thelist'),
                    $btn = $('#ctlBtn'),
                    state = 'pending',
                    shopdiv=0,
                    uploader;

            var uploader = WebUploader.create({

                // swf文件路径
                swf: BASE_URL + '/Uploader.swf',

                // 文件接收服务端。
                server: '/admin/upload',

                // 选择文件的按钮。可选。
                // 内部根据当前运行是创建，可能是input元素，也可能是flash.
                pick: '#picker',

                // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
                resize: false
            });
            // 当有文件被添加进队列的时候
            uploader.on('fileQueued', function (file) {
                shopdiv=shopdiv+50;
                $("#shopimg").css("height",shopdiv)
                $list.append('<div id="' + file.id + '" >' +
                        '<h4 class="info">' + file.name + '</h4>' +
                        '<a id="state" class="state">等待上传...</a>' +
                        '</div>');
            });


            uploader.on('uploadSuccess', function (file, response) {

                var srcimg = "/vendor/" + response._raw;
                var imgsv=$("#imgs").val();
                $("#imgs").val(imgsv+"|"+response._raw);
                $("#shopimg_list").append('<img id="'+response._raw+'" style="height:80px;width:90px" src="'+srcimg+'" />');
                $("#"+response._raw).click(function () {
                    alert(response._raw)
                });
                //$("#img_i").attr("src", srcimg);
                //alert(srcimg);
                $('#' + file.id).find('a.state').text('已上传');
            });

            uploader.on('uploadError', function (file) {
                $('#' + file.id).find('a.state').text('上传出错');
            });

            uploader.on('uploadComplete', function (file) {
                $('#' + file.id).find('.progress').fadeOut();
            });
            $btn.on('click', function () {
                if (state === 'uploading') {
                    uploader.stop();
                } else {
                    uploader.upload();
                }
            });
//------------------------logo  start--------------------------------
            var $ = jQuery,
                    $list_logo = $('#thelist_logo'),
                    $btn_logo = $('#ctlBtn_logo'),
                    state_logo = 'pending',
                    divheight=0,
                    uploader_logo;

            var uploader_logo = WebUploader.create({

                // swf文件路径
                swf: BASE_URL + '/Uploader.swf',

                // 文件接收服务端。
                server: '/admin/upload',

                // 选择文件的按钮。可选。
                // 内部根据当前运行是创建，可能是input元素，也可能是flash.
                pick: '#picker_logo',

                // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
                resize: false
            });
            // 当有文件被添加进队列的时候
            uploader_logo.on('fileQueued', function (file) {
                divheight=divheight+50;
                //$("#logodiv").css("height",divh);
                $("#logodiv").css("height",divheight);

                $list_logo.append('<div id="' + file.id + '" class="item">' +
                        '<h4 class="info">' + file.name + '</h4>' +
                        '<p class="state_logo">等待上传...</p>' +
                        '</div>');
            });
            // 文件上传过程中创建进度条实时显示。
            uploader_logo.on('uploadProgress', function (file, percentage) {
                var $li = $('#' + file.id),
                        $percent = $li.find('.progress .progress-bar');

                // 避免重复创建
                if (!$percent.length) {
                    $percent = $('<div class="progress progress-striped active">' +
                            '<div class="progress-bar" role="progressbar" style="width: 0%">' +
                            '</div>' +
                            '</div>').appendTo($li).find('.progress-bar');
                }

                $li.find('p.state_logo').text('上传中');

                $percent.css('width', percentage * 100 + '%');
            });

            uploader_logo.on('uploadSuccess', function (file, response) {

                var srcimg = "/vendor/" + response._raw;
                var imgsv_logo=$("#imgs_logo").val();
                $("#imgs_logo").val(imgsv_logo+"|"+response._raw);
                $("#logo_list").append('<img id="m'+response._raw.replace('.','')+'" style="height:80px;width:90px" src="'+srcimg+'" />');
                $("#m"+response._raw.replace('.','')+"").click(function () {
                    alert(response._raw+"删除");
                });
                //$("#ctlBtn_logo").after('<img id="'+response._raw+'" style="height:60px;width:50px" src="'+srcimg+'" />');
                $('#' + file.id).find('p.state_logo').text('已上传');
            });

            uploader_logo.on('uploadError', function (file) {
                $('#' + file.id).find('p.state_logo').text('上传出错');
            });

            uploader_logo.on('uploadComplete', function (file) {
                $('#' + file.id).find('.progress').fadeOut();
            });
            $btn_logo.on('click', function () {
                if (state_logo === 'uploading') {
                    uploader_logo.stop();
                } else {
                    uploader_logo.upload();
                }
            });
//------------------------logo  end---------------------------------




            $("#login_button").click(function () {

                var name = $("#name").val();
                if(name=="")
                {
                    alert("商户名不能为空");
                    return false;
                }
                var address = $("#address").val();
                if(address=="")
                {
                    alert("地址不能为空");
                    return false;
                }
                var address_point_x = $("#address_point_x").val();
                var address_point_y = $("#address_point_y").val();
                if(address_point_x==""||address_point_y=="")
                {
                    alert("坐标不能为空");
                    return false;
                }

                var sale_percapitaprice = $("#sale_percapitaprice").val();
                if(sale_percapitaprice=="")
                {
                    alert("人均消费不能为空");
                    return false;
                }
                var sale_cookingstyle = $("#sale_cookingstyle").val();
                var business_hours = $("#business_hours").val();
                if(business_hours=="")
                {
                    alert("营业时间不能为空");
                    return false;
                }
                var imgs_logo=$("#imgs_logo").val();
                if(imgs_logo=="")
                {
                    alert("logo不能为空");
                    return false;
                }
                var imgs=$("#imgs").val();
                if(imgs=="")
                {
                    alert("推荐图不能为空");
                    return false;
                }

                var shop_type=$("#shop_type").val();

                //alert(imgs_logo);
                var mdata = 'shop_type='+shop_type+'&imgs='+imgs+'&imgs_logo='+imgs_logo+'&name=' + name + '&address=' + address + '&address_point_x=' + address_point_x + '&address_point_y=' + address_point_y + '&sale_percapitaprice=' + sale_percapitaprice + '&sale_cookingstyle=' + sale_cookingstyle + '&business_hours=' + business_hours + ''
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
                            window.location.href = window.location.href;
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