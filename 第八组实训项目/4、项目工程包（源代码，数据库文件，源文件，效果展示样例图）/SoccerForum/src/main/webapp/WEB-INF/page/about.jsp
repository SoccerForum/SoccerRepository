<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Express News Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- web-fonts -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function () {
		  $("#slider").responsiveSlides({
			auto: true,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			pager: true,
		  });
		});
	</script>
	<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<link rel="stylesheet" href="css/layui.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/layui.all.js"></script>
 <style> 
#divcss7{margin:0 auto;border:1px solid white;width:500px;height:1100px;float:left} 
</style>
<style> 
.divcss6-right{width:300px; height:1100px;border:1px solid #979797;float:right} 
/* css注释：对divcss5-right设置float:right即可让对象靠右浮动 */ 
</style> 
<style> 
.divcss7-right{width:200px;border:1px solid #fff;margin-top:80px;margin-right:80px;float:right} 
/* css注释：对divcss5-right设置float:right即可让对象靠右浮动 */ 
</style>
<style>
p{
	background-color:#d8dddf;
	font-size:16px;
}
</style>
<style type="text/css">
#ee {
	margin-left:25px;
	height: 295px;
	width: 700px;
	left: 953px;
	top: 70px;
	line-height: 24px;
}
</style>
<title>个人空间</title>
</head>
<body>
<style> 
body{text-align:left} 
.divcss5{margin:0 auto;width:1200px;border:1px solid #000} 
/* CSS注释：设置对象边框、宽度、高度 便于观察布局效果 */ 
</style> 
<div class="divcss5">	<div class="header">
		<div class="header-top">
			<div class="wrap">
				<div class="top-menu">
					<ul>
						<li><a href="user">我的首页</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
</div>

<style> 
.divcss5-right{width:1038px; height:1100px;border:1px solid #979797;float:right} 
/* css注释：对divcss5-right设置float:right即可让对象靠右浮动 */ 
</style> 

<div class="divcss5-right"><div id="divcss7">
    <div id="ee">
      <table width="50%" border="0" align="right" cellpadding="0" cellspacing="0">
        <tr>
          <td><hr /></td>
        </tr>
        <tr>
          <td>姓名:${user.name}</td>
        </tr>
        <tr>
          <td>性别：${user.gender}</td>
        </tr>
        <tr>
          <td>年龄：19</td>
        </tr>
        <tr>
          <td>家乡：甘肃省镇原县</td>
        </tr>
        <tr>
          <td>自我介绍：${user.bio}</td>
        </tr>
        <tr>
          <td>个性签名：${user.sightml}</td>
        </tr>
        <tr>
          <td>兴趣爱好：听歌，打篮球</td>
        </tr>
        <tr>
          <td>政治面貌：团员</td>
        </tr>
        <tr>
          <td>联系电话：13245676543</td>
        </tr>
        <tr>
          <td>Email:179997256@qq.com</td>
        </tr>
        <tr>
          <td>关键词：学生</td>
        </tr>
      </table>
        <div class="layui-col-md3">
        <div class="layui-upload layui-col-lg-offset2">
            <div class="layui-upload-list">	
                <img class="layui-upload-img" id="demo1" src="images/img1.jpg" style="width: 80%">
                <p id="demoText"></p>
                <button type="button" class="layui-btn" id="test1">上传图片</button>
            </div>
        </div>
    </div>
</div>
 </div>
<div class="divcss6-right">  
<div><font size="3" face="黑体" color="#AD0000"><b>&nbsp;&nbsp;收藏的帖子</b></font></div>

			<c:forEach var="title" items="${collectors}">
<li class='list '><a id = "aaaa" href="content?title=${title}">${title}</a></li> 
				</c:forEach> 
 </div>
 </div> 
<style> 
.div-left{width:160px;height:1100px;border:1px solid #979797;background-color:#FFFFFF;float:left} 
/* css注释说明：float:left设置居左靠左 */ 
</style> 

<div class="div-left">			<div class="first_half">
				<div class="categories">
					<ul>
						<li><a href="about"><u><font size="2">空间首页</font></u></a></li>
						<li><a href=""><u><font size="2">动态</font></u></a></li>
						<li><a href=""><u><font size="2">日志</font></u></a></li>
						<li><a href=""><u><font size="2">碎碎念</font></u></a></li>
						<li><a href=""><u><font size="2">帖子</font></u></a></li>
						<li><a href=""><u><font size="2">推荐</font></u></a></li>
						<li><a href=""><u><font size="2">留言板</font></u></a></li>
						<li><a href=""><u><font size="2">档案</font></u></a></li>
						<li><a href=""><u><font size="2">关注</font></u></a></li>
				    </ul>
				</div></div> 
				

	<!-- header-section-ends-here -->
	<!-- content-section-starts-here -->
	<div class="main-body">
		<div class="wrap">
		<div class="privacy-page">
			<div class="col-md-8 content-left">
			</div>
			<div class="col-md-4 side-bar">				

			<div class="clearfix"></div>
		</div>	
		</div>
	</div>
	<!-- content-section-ends-here -->
	<!-- footer-section-starts-here -->
	<!-- footer-section-ends-here -->
	<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				wrapID: 'toTop', // fading element id
				wrapHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<script>
    layui.use('upload', function(){
        var $ = layui.jquery,upload = layui.upload;
        //普通图片上传
        var uploadInst = upload.render({
            elem: '#test1',
            url: 'uploadHead.do',
            before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            },
            done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }
                //上传成功
                layer.msg("上传成功");
            },
            error: function(){
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
        });
    });
</script>
<!----></div> 
</div>
</body>
</html>