<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>我的首页</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<style>
	.container{
		width: 1000px;
	}
	.commentbox{
		width: 900px;
		margin: 20px auto;
	}
	.mytextarea {
	    width: 100%;
	    overflow: auto;
	    word-break: break-all;
	    height: 100px;
	    color: #000;
	    font-size: 1em;
	    resize: none;
	}
	.comment-list{
		width: 900px;
		margin: 20px auto;
		clear: both;
		padding-top: 20px;
	}
	.comment-list .comment-info{
		position: relative;
		margin-bottom: 20px;
		margin-bottom: 20px;
		border-bottom: 1px solid #ccc;
	}
	.comment-list .comment-info header{
		width: 10%;
		position: absolute;
	}
	.comment-list .comment-info header img{
		width: 100%;
		border-radius: 50%;
		padding: 5px;
	}
	.comment-list .comment-info .comment-right{
		padding:5px 0px 5px 11%; 
	}
	.comment-list .comment-info .comment-right h3{
		margin: 5px 0px;
	}
	.comment-list .comment-info .comment-right .comment-content-header{
		height: 25px;
	}
	.comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span{
		padding-right: 2em;
		color: #aaa;
	}
	.comment-list .comment-info .comment-right .comment-content-header span,.comment-list .comment-info .comment-right .comment-content-footer span.reply-btn,.send,.reply-list-btn{
		cursor: pointer;
	}
	.comment-list .comment-info .comment-right .reply-list {
		border-left: 3px solid #ccc;
		padding-left: 7px;
	}
	.comment-list .comment-info .comment-right .reply-list .reply{
		border-bottom: 1px dashed #ccc;
	}
	.comment-list .comment-info .comment-right .reply-list .reply div span{
		padding-left: 10px;
	}
	.comment-list .comment-info .comment-right .reply-list .reply p span{
		padding-right: 2em;
		color: #aaa;
	}
</style>
</head>
<body>
	<!-- header-section-starts-here -->
<style> 
body{text-align:center} 
.divcss5{margin:0 auto;width:1200px;height:1241px;border:1px solid #000} 
/* CSS注释：设置对象边框、宽度、高度 便于观察布局效果 */ 
</style>
<div class="divcss5"><div class="header">
		<div class="header-top">
			<div class="wrap">
				<div class="top-menu">
					<ul>						
						<li><a href="user">我的首页</a></li>
						<li><a href="about">个人空间</a></li>
					</ul>
				</div>
				<div class="num">
				</div>
				<div class="clearfix"></div>
			</div>
		</div>		
	</div> 
	<!DOCTYPE html> 

<style> 
.divcss5-right{width:1038px; height:1200px;border:1px solid #979797;float:right} 
/* css注释：对divcss5-right设置float:right即可让对象靠右浮动 */ 
</style> 
<body> 
<div class="divcss5-right">
<style> 
body{ text-align:center} 
#divcss5{margin:0 auto;border:1px solid #FFFFFF;width:1000px;height:200px} 
</style> 
<body> 
<div id="divcss5">
	<br><p style="background:#D3D4D3"><font size="3"><b>&nbsp;&nbsp;&nbsp;我的动态</b></font></p>
	<div class="container">
	<div class="commentbox">
		<textarea cols="80" rows="50" placeholder="来说几句吧......" class="mytextarea" id="content"></textarea>
		<div class="btn btn-info pull-right" id="comment">评论</div>
	</div>
	<div class="comment-list">
	</div>
</div>
<!-- 
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.comment.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	//初始化数据
	var arr = [
		{id:1,img:"images/img1.jpg",replyName:"帅大叔",beReplyName:"匿名",content:"同学聚会，看到当年追我的屌丝开着宝马车带着他老婆来了，他老婆是我隔壁宿舍的同班同学，心里后悔极了。",time:"2017-10-17 11:42:53",address:"深圳",osname:"",browse:"谷歌",replyBody:[]},
	];
	$(function(){
		$(".comment-list").addCommentList({data:arr,add:""});
		$("#comment").click(function(){
			var obj = new Object();
			obj.img="./images/img.jpg";
			obj.replyName="匿名";
			obj.content=$("#content").val();
			obj.browse="深圳";
			obj.osname="win10";
			obj.replyBody="";
			$(".comment-list").addCommentList({data:[],add:obj});
		});
	})
</script>
-->
</div>
</body> 

</div> 
</body> 

<style> 
.div-left{width:160px;height:1100px;border:1px solid #6c6c6c;float:left} 
/* css注释说明：float:left设置居左靠左 */ 
</style> 
</head> 
<body> 
<div class="div-left"><div class="first_half">
				<div class="categories">
					<header>
						<h3 class="side-title-head"><b><font size="2">我关注的板块</font></b>&nbsp;&nbsp;&nbsp;<font size="1" color="#6C6C6C">关注</font></h3>
					</header>
					<ul>
						<li><a href=""><u><font size="2"><p align="left">我关注的板块帖子</p></font></u></a></li>
						<li><a href=""><u><font size="2"><p align="left">湿乎乎的话题</p></font></u></a></li>
						<li><a href=""><u><font size="2"><p align="left">中国篮球</p></font></u></a></li>
						<li><a href=""><u><font size="2"><p align="left">深蓝讨论区</p></font></u></a></li>
						<li><a href=""><u><font size="2"><p align="left">步行街主干道</p></font></u></a></li>
						<li><a href=""><u><font size="2"><p align="left">篮球场</p></font></u></a></li>
						<li><a href=""><u><font size="2"><p align="left">影视区</p></font></u></a></li>
					</ul>
				</div>				
			</div></div> 
</body> 

	<!-- header-section-ends-here -->
	<!-- content-section-starts-here -->
	<!-- content-section-ends-here -->
	<!-- footer-section-starts-here -->
	<!-- footer-section-ends-here -->
	<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<style> 
.div-left{width:160px;height:1200px;border:1px solid #6c6c6c;float:left} 
/* css注释说明：float:left设置居左靠左 */ 
</style> 
</head> 
</body>
</html>