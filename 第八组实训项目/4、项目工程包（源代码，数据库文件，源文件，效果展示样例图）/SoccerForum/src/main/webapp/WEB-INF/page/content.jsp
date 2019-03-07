<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>帖子详情页</title>
<meta name="keywords" content="个人博客模板,博客模板,响应式" />
<meta name="description" content="个人博客模板，神秘、俏皮。" />
<link rel="stylesheet" type="text/css" href="css/base.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/media.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/layui.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
</head>
<body>
	<div class="ibody">

  <article>
      <div class="content whisper-content">
    <div class="cont">
      <div class="whisper-list">
        <div class="item-box">
          <div class="item">
            <div class="whisper-title">
              <div style="float:left"><span>${post.getTitle()}</span></div>
            </div>
            <div style="float:right"><font size="3"><span class="name">作者:${post.getUser().name}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="data">2018/06/06</span></font></div>
            <br><br><div><p class="text-cont">
              ${post.getContext()}
            </p></div>
            <div class="img-box">
              <img src="">
            </div>
            <div class="op-list">
              <p class="like"><i class="layui-icon layui-icon-user"></i><span>${post.getVisit().pv}</span></p>
              <p class="like"><i class="layui-icon layui-icon-praise" id = "likenum"></i><span id='like'>${post.getVisit().like}</span></p> 
              <p class="edit"><i class="layui-icon layui-icon-rate" id = "collnum"></i><span>123</span></p>
            </div>
          </div>
          <div class="review-version">
              <div class="form">
                <img src="images/header2.png">
                <form class="layui-form" action="">
                  <div class="layui-form-item layui-form-text">
                    <div class="layui-input-block">
                      <textarea name ="desc" id = "neirong" class="layui-textarea"></textarea>
                    </div>
                  </div>
                  <div class="layui-form-item">
                    <div class="layui-input-block" style="text-align: right;">
                      <a class="layui-btn definite" id = "queding">确定</a>
                    </div>
                  </div>
                </form>
              </div>
			<c:forEach var="comment" items="${comments}">
					<div class="list-cont">
                <div class="cont">
                  <div class="img">
                    <img src="${comment.avatar}" alt="" width="50px" height="50px">
                  </div>
                  <div class="text">
                    <p class="tit"><span class="name">${comment.name}</span><span class="data">2018/06/06</span></p>
                    <p class="ct">${comment.content}</p>
                  </div>
                </div>
                  </div>
            </c:forEach> 
              </div>
          </div>
        </div>
      </div>
      <div id="demo" style="text-align: center;"></div>
    </div>
  </div>
<!-- 
<script type="text/html" id="laytplCont">
    <div class="cont">
      <div class="img">
        <img src="{{d.avatar}}" alt="">
      </div>
      <div class="text">
        <p class="tit"><span class="name">{{d.name}}</span><span class="data">2018/06/06</span></p>
        <p class="ct">{{d.cont}}</p>
      </div>
    </div>
  </script>
 --> 
<!-- <script type="text/javascript" src="js/layui.js"></script>
  <script type="text/javascript">
   layui.config({
      base: 'js/'
    }).use(['element','laypage','form','menu'],function(){
      element = layui.element,laypage = layui.laypage,form = layui.form,menu = layui.menu;

      menu.init();
      menu.off();
      menu.submit()
    })
  </script>
-->  
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript">
  	$("#likenum").click(function (){
  		$.ajax({
			type:"POST",
			url:"like",
			data:{"name":"${post.getTitle()}"}, 
			success:function(data) {
				var likenum=JSON.parse(data).likenum;
				console.log(JSON.parse(data));
				$("#like").text(likenum);	
			}
		});
  	});
  </script>
  <script type="text/javascript">
  $("#queding").click(function (){
	  $.ajax({
			type:"POST",
			url:"comment",
			data:{name:"${user.name}",title:"${post.getTitle()}",content2:$("#neirong").val()}, 
			success:function(data) {
				//var likenum=JSON.parse(data).likenum;
				//console.log(JSON.parse(data));
				alert(data);
			}
		});
  	});
  </script>
  <script type="text/javascript">
  $("#collnum").click(function (){
	  $.ajax({
			type:"POST",
			url:"collector",
			data:{tname:"${post.getTitle()}",uname:"${user.name}"}, 
			success:function(data) {
				//var likenum=JSON.parse(data).likenum;
				//console.log(JSON.parse(data));
				alert(data);
			}
		});
  	});
  </script>
  </article>
  <aside>
  	<br><br>
    <div class="tj_news">
      <h2>
        <p class="tj_t1">最新文章</p>
      </h2>
      <ul>
        <li><a href="/">犯错了怎么办？</a></li>
        <li><a href="/">两只蜗牛艰难又浪漫的一吻</a></li>
        <li><a href="/">春暖花开-走走停停-发现美</a></li>
        <li><a href="/">琰智国际-Nativ for Life官方网站</a></li>
        <li><a href="/">个人博客模板（2014草根寻梦）</a></li>
        <li><a href="/">简单手工纸玫瑰</a></li>
        <li><a href="/">响应式个人博客模板（蓝色清新）</a></li>
        <li><a href="/">蓝色政府（卫生计划生育局）网站</a></li>
      </ul>
      <h2>
        <p class="tj_t2">推荐文章</p>
      </h2>
      <ul>
        <li><a href="/">犯错了怎么办？</a></li>
        <li><a href="/">两只蜗牛艰难又浪漫的一吻</a></li>
        <li><a href="/">春暖花开-走走停停-发现美</a></li>
        <li><a href="/">琰智国际-Nativ for Life官方网站</a></li>
        <li><a href="/">个人博客模板（2014草根寻梦）</a></li>
        <li><a href="/">简单手工纸玫瑰</a></li>
        <li><a href="/">响应式个人博客模板（蓝色清新）</a></li>
        <li><a href="/">蓝色政府（卫生计划生育局）网站</a></li>
      </ul>
    </div>
 </aside>
  <div class="clear"></div>
  <!-- 清除浮动 --> 
</div>
</body>
</html>