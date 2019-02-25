<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>

   
   
   
                                          登录虎扑帐号和注册虎扑帐号
   

</title>
<link rel="stylesheet" href="https://passport.hupu.com/pc/css/reset.css?v=2018110201">
<link rel="stylesheet" href="https://passport.hupu.com/pc/css/passport.css?v=2018110201">
<link rel="stylesheet"    href="https://passport.hupu.com/pc/css/passport-index.css?v=2018110201">

<script src="https://passport.hupu.com/pc/js/lib/MD5.js"></script>
<script src="https://passport.hupu.com/pc/js/cookie.js"></script>
<!-- 同盾接入测试 -->
<script type="text/javascript">
    (function() {
        _fmOpt = {
            partner: 'hupu',
            appName: 'hupu_web',
            token: MD5(getCookie("_HUPUSSOID"))           };
        var cimg = new Image(1,1);
        cimg.onload = function() {
            _fmOpt.imgLoaded = true;
        };
        cimg.src = "https://fp.fraudmetrix.cn/fp/clear.png?partnerCode=hupu&appName=hupu_web&tokenId=" + _fmOpt.token;
        var fm = document.createElement('script'); fm.type = 'text/javascript'; fm.async = true;
        fm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'static.fraudmetrix.cn/fm.js?ver=0.1&t=' + (new Date().getTime()/3600000).toFixed(0);
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(fm, s);
    })();
</script>
<!-- 同盾接入测试  -->

<!-- 阿里滑块处理  -->
<script>
    window.NVC_Opt = {
        appkey:'FFFF0N00000000000B27',
        scene:'ic_login',
        renderTo:'#float-captcha',
        elements: [
            '//img.alicdn.com/tfs/TB17cwllsLJ8KJjy0FnXXcFDpXa-50-74.png',
            '//img.alicdn.com/tfs/TB17cwllsLJ8KJjy0FnXXcFDpXa-50-74.png'
        ],
        bg_back_prepared: '//img.alicdn.com/tps/TB1skE5SFXXXXb3XXXXXXXXXXXX-100-80.png',
        bg_front: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABQCAMAAADY1yDdAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAADUExURefk5w+ruswAAAAfSURBVFjD7cExAQAAAMKg9U9tCU+gAAAAAAAAAIC3AR+QAAFPlUGoAAAAAElFTkSuQmCC',
        obj_ok: '//img.alicdn.com/tfs/TB1rmyTltfJ8KJjy0FeXXXKEXXa-50-74.png',
        bg_back_pass: '//img.alicdn.com/tfs/TB1KDxCSVXXXXasXFXXXXXXXXXX-100-80.png',
        obj_error: '//img.alicdn.com/tfs/TB1q9yTltfJ8KJjy0FeXXXKEXXa-50-74.png',
        bg_back_fail: '//img.alicdn.com/tfs/TB1w2oOSFXXXXb4XpXXXXXXXXXX-100-80.png',
        upLang:{"cn":{
            _ggk_guide: "请摁住鼠标左键，刮出两面盾牌",
            _ggk_success: "恭喜您成功刮出盾牌<br/>继续下一步操作吧",
            _ggk_loading: "加载中",
            _ggk_fail: ['呀，盾牌不见了<br/>请', "javascript:noCaptcha.reset()", '再来一次', '或', "http://survey.taobao.com/survey/QgzQDdDd?token=%TOKEN", '反馈问题'],
            _ggk_action_timeout: ['我等得太久啦<br/>请', "javascript:noCaptcha.reset()", '再来一次', '或', "http://survey.taobao.com/survey/QgzQDdDd?token=%TOKEN", '反馈问题'],
            _ggk_net_err: ['网络实在不给力<br/>请', "javascript:noCaptcha.reset()", '再来一次', '或', "http://survey.taobao.com/survey/QgzQDdDd?token=%TOKEN", '反馈问题'],
            _ggk_too_fast: ['您刮得太快啦<br/>请', "javascript:noCaptcha.reset()", '再来一次', '或', "http://survey.taobao.com/survey/QgzQDdDd?token=%TOKEN", '反馈问题']
            }
        }
    }
</script>
<!-- 阿里滑块处理  -->


</head>

<body class="">
    <div class="bg-img">
        <img src="C:\Users\11491\Desktop\workspace\bg.jpg" alt="">
    </div>
    <div class="user-login">
    	
	        <div class="back-title">
	            <a href="https://www.baidu.com/link?url=4nRhn1FG3UPoluYNY-VafjQPzIa0mze-lLAnKeqqzLKcFphWlVduGdy6fao-piBf&wd=&eqid=bb627b5000041302000000025c3fd51d"> <b><</b> 返回上页</a>
	        </div>
        
        <div class="login-wrap">
            <div class="logo">
                
				   
				   
				   
						<img src="https://passport.hupu.com/pc/images/logo.png" alt="">
				   
				
            </div>
            
            	
            	
            		<!-- 登录名、邮箱、手机+密码登录 -->
		            <form class="common-form login-form" id="J_loginForm" autocomplete="off" action = "demo" method="post">
		                <ul>
		                    <li>
		                        <div class="ipt-wrap">
		                            <input autocomplete="off" type="text" name="name" placeholder="登录名/手机号/邮箱" data-rule="empty" data-name="帐号" id="J_username" tabindex="1">
		                        </div>
		                    </li>
		                    <li id="J_insertVali">
		                        <div class="ipt-wrap">
		                            <input autocomplete="off" type="password" name="pwd" placeholder="密码" data-rule="empty" data-name="密码" id="J_pwd" tabindex="2">
		                        </div>
		                    </li>
		                    <li class="clearfix sp-item">
		                        <a href="/pc/findpwd.view?project=&from=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D4nRhn1FG3UPoluYNY-VafjQPzIa0mze-lLAnKeqqzLKcFphWlVduGdy6fao-piBf%26wd%3D%26eqid%3Dbb627b5000041302000000025c3fd51d&jumpurl=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D4nRhn1FG3UPoluYNY-VafjQPzIa0mze-lLAnKeqqzLKcFphWlVduGdy6fao-piBf%26wd%3D%26eqid%3Dbb627b5000041302000000025c3fd51d"  class="forget-btn fl">忘记密码？</a>
		                        <a href="/register?project=&display=&from=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D4nRhn1FG3UPoluYNY-VafjQPzIa0mze-lLAnKeqqzLKcFphWlVduGdy6fao-piBf%26wd%3D%26eqid%3Dbb627b5000041302000000025c3fd51d&jumpurl=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D4nRhn1FG3UPoluYNY-VafjQPzIa0mze-lLAnKeqqzLKcFphWlVduGdy6fao-piBf%26wd%3D%26eqid%3Dbb627b5000041302000000025c3fd51d" class="register-btn fr">没有帐号，立即注册 <b>></b></a>
		                    </li>
		                    <li>
							    <div id="float-captcha"></div>
		                        <!-- <div id="float-captcha" class="hide"></div> -->
		                        <!-- <img id="wait" class="aligncenter" onerror="this.style.display='none'" src="https://passport.hupu.com/pc/images/loading-bubbles.svg" alt="Loading icon" > -->
		                    </li>
		                    <li><input type="submit" class="submit-btn" id="J_submit" value="登录"></li>
		                </ul>
		            </form>
		            <div class="login-method">
						
		            		
		            		
		            		    
								    
								    
									    <a href="javascript:;" data-href="https://open.weixin.qq.com/connect/qrconnect?appid=wxe6fc600d8a7e230c&redirect_uri=https%3A%2F%2Fpassport.hupu.com%2Fpc%2Fweixincallback.action%3Ftype%3Dlogin%26jumpurl%3Dhttps%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D4nRhn1FG3UPoluYNY-VafjQPzIa0mze-lLAnKeqqzLKcFphWlVduGdy6fao-piBf%26wd%3D%26eqid%3Dbb627b5000041302000000025c3fd51d&response_type=code&scope=snsapi_login&state=dbd36eaa-afe5-4538-a62b-da5223710366#wechat_redirect" data-title="用微信帐号登录" class="login-weixin pop-box">微信登录</a>
									    <a href="javascript:;" data-href="/pc/qqlogin.view?type=login&project=&from=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D4nRhn1FG3UPoluYNY-VafjQPzIa0mze-lLAnKeqqzLKcFphWlVduGdy6fao-piBf%26wd%3D%26eqid%3Dbb627b5000041302000000025c3fd51d&&parent=" data-title="用QQ帐号登录" class="login-qq pop-box">QQ登录</a>
								    
								
		            		
		            	
		                <a href="/pc/login?mode=mobile&project=&from=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D4nRhn1FG3UPoluYNY-VafjQPzIa0mze-lLAnKeqqzLKcFphWlVduGdy6fao-piBf%26wd%3D%26eqid%3Dbb627b5000041302000000025c3fd51d&display=&jumpurl=https%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D4nRhn1FG3UPoluYNY-VafjQPzIa0mze-lLAnKeqqzLKcFphWlVduGdy6fao-piBf%26wd%3D%26eqid%3Dbb627b5000041302000000025c3fd51d" class="login-phone">手机短信快捷登录</a>
		            </div>
            	
            

        </div>

        <div class="pop-wrap">
				<div class="pop-hd">提示

				</div>
				<div class="pop-txt">

				</div>
				<div class="pop-btn pop-btn2">

				</div>
		</div>
		<div id="cboxOverlay" ></div>
		</div>

	</div>
	<!-- 阿里滑块处理  -->
	<script src="//b1.hoopchina.com.cn/js/passport/nvc_guide.js"></script>
	<script src="//b1.hoopchina.com.cn/js/passport/smartCaptcha_index.js"></script>
    <!-- 阿里滑块处理  
    <script type="text/javascript">
    	var staticDomain = 'https://passport.hupu.com';
    	var httpSchema   = 'https://';
    	var curDomain    = "https://passport.hupu.com";
    	var version      = "2018110201";
    	var loginMode    = "";
    	var showVerifyImg    = "";//只有值为"true"时，显示验证码图片
    	window.domains       = ["passport.kaluli.com","passport.shihuo.cn","passport.hupu.com","passport.liangle.com","passport.haitaodashi.cn"];
    	window.currentSchema = httpSchema;
    </script>
    <script src="https://passport.hupu.com/pc/js/lib/require.js?v=2018110201"></script>

    <script>
    	var registerJs = 'https://passport.hupu.com/pc/js/app/register.js';
    	var loginJs    = 'https://passport.hupu.com/pc/js/app/login.js';
    	var mode  = '';
    	var url   = (mode == 'mobile' ? registerJs : loginJs);

	    require(['https://passport.hupu.com/pc/js/common.js?v=2018110201'], function(commmon) {
            require([url]);
        });
	</script>
	-->
</body>	
</body>
</html>