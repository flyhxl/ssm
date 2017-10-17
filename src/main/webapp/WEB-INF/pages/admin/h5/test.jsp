<%--
  Created by IntelliJ IDEA.
  User: hexianglin
  Date: 2017/10/10
  Time: 上午10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!-- Force latest IE rendering engine or ChromeFrame if installed -->
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<![endif]-->
<meta charset="utf-8">
<title>jQuery File Upload Plugin Test</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<body>


<div id="uploader" class="wu-example">
    <!--用来存放文件信息-->
    <div id="thelist" class="uploader-list"></div>
    <div class="btns">
        <div id="picker">选择文件</div>
        <button id="ctlBtn" class="btn btn-default">开始上传</button>

    </div>
</div>


<!--引入CSS-->
<link rel="stylesheet" type="text/css" href="/resources/webuploader/webuploader.css">
<script src="/resources/js/jquery-3.2.1.min.js"></script>


<!--引入JS-->
<script type="text/javascript" src="/resources/webuploader/webuploader.js"></script>


<!-- The template to display files available for upload -->


<script type="text/javascript">
 var BASE_URL='/resources/webuploader';
    jQuery(function () {
        var $ = jQuery,
                $list = $('#thelist'),
                $btn = $('#ctlBtn'),
                state = 'pending',
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
        uploader.on( 'fileQueued', function( file ) {
            $list.append( '<div id="' + file.id + '" class="item">' +
                    '<h4 class="info">' + file.name + '</h4>' +
                    '<p class="state">等待上传...</p>' +
                    '</div>' );
        });
        // 文件上传过程中创建进度条实时显示。
        uploader.on( 'uploadProgress', function( file, percentage ) {
            var $li = $( '#'+file.id ),
                    $percent = $li.find('.progress .progress-bar');

            // 避免重复创建
            if ( !$percent.length ) {
                $percent = $('<div class="progress progress-striped active">' +
                        '<div class="progress-bar" role="progressbar" style="width: 0%">' +
                        '</div>' +
                        '</div>').appendTo( $li ).find('.progress-bar');
            }

            $li.find('p.state').text('上传中');

            $percent.css( 'width', percentage * 100 + '%' );
        });

        uploader.on( 'uploadSuccess', function( file,response ) {
            //alert(response._raw);
            var srcimg="/resources/images/vendor/"+response._raw;
            $("#img_i").attr("src",srcimg);
            alert(srcimg);

            $( '#'+file.id ).find('p.state').text('已上传');
        });

        uploader.on( 'uploadError', function( file ) {
            $( '#'+file.id ).find('p.state').text('上传出错');
        });

        uploader.on( 'uploadComplete', function( file ) {
            $( '#'+file.id ).find('.progress').fadeOut();
        });
        $btn.on( 'click', function() {
            if ( state === 'uploading' ) {
                uploader.stop();
            } else {
                uploader.upload();
            }
        });


    });


</script>
</body>
</html>
