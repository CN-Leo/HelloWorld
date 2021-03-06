<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" type="text/css" href="../res/static/css/main.css">
<link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
<script type="text/javascript" src="../res/layui/layui.js"></script>
<script type="text/javascript" src="../script/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../script/qm_main.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
	<div class="site-nav-bg">
		<div class="site-nav w1200">
			<p class="sn-back-home">
				<i class="layui-icon layui-icon-home"></i> <a href="#">首页</a>
			</p>
			<div class="sn-quick-menu">
				<div class="login">
					<a href="login.html">登录</a>
				</div>
				<div class="sp-cart">
					<a href="shopcart.html">购物车</a><span>2</span>
				</div>
			</div>
		</div>
	</div>



	<div class="header">
		<div class="headerLayout w1200">
			<div class="headerCon">
				<h1 class="mallLogo">
					<a href="#" title="药品管理"> <img src="../res/static/img/logo2.png">
					</a>
				</h1>
				<div class="mallSearch">
					<form action="" class="layui-form" novalidate>
						<input type="text" name="title" required lay-verify="required"
							autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
						<button class="layui-btn" lay-submit lay-filter="formDemo">
							<i class="layui-icon layui-icon-search"></i>
						</button>
						<input type="hidden" name="" value="">
					</form>
				</div>
			</div>
		</div>
	</div>


	<div class="content content-nav-base  login-content">
		<div class="main-nav">
			<div class="inner-cont0">
				<div class="inner-cont1 w1200">
					<div class="inner-cont2">
						<a href="commodity.html" class="active">所有商品</a> <a
							href="buytoday.html">今日团购</a> <a href="information.html">母婴资讯</a>
						<a href="about.html">关于我们</a>
					</div>
				</div>
			</div>
		</div>
		<div class="login-bg">
			<div class="login-cont w1200">
				<div class="form-box">
					<form class="layui-form" action="">
					<input type="hidden" name="fUserRole" value="1">
					<input type="hidden" name="fResource" value="1">
						<legend>手机号注册</legend>
						<div class="layui-form-item">
							<div class="layui-inline iphone">
								<div class="layui-input-inline">
									<i class="layui-icon layui-icon-cellphone iphone-icon"></i> <input
										type="tel" name="fUserCode" id="fUserCode"
										lay-verify="required|phone" placeholder="请输入手机号"
										autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-inline iphone">
								<div class="layui-input-inline">
									<i class="layui-icon layui-icon-password iphone-icon"></i> <input
										id="fUserName" type="text" name="fUserName"
										lay-verify="required" placeholder="请输入昵称" autocomplete="off"
										class="layui-input">
								</div>
							</div>
							<div class="layui-inline iphone">
								<div class="layui-input-inline">
									<i class="layui-icon layui-icon-password iphone-icon"></i> <input
										id="fUserPwd" type="password" name="fUserPwd"
										lay-verify="required" placeholder="请输入密码" autocomplete="off"
										class="layui-input">
								</div>
							</div>
						</div>
						<div class="layui-form-item login-btn">
							<div class="layui-input-block">
								<button class="layui-btn" lay-submit="" lay-filter="register"
									onclick="return false">注册</button>

							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="ng-promise-box">
			<div class="ng-promise w1200">
				<p class="text">
					<a class="icon1" href="javascript:;">7天无理由退换货</a> <a class="icon2"
						href="javascript:;">满99元全场免邮</a> <a class="icon3"
						style="margin-right: 0" href="javascript:;">100%品质保证</a>
				</p>
			</div>
		</div>
		<div class="mod_help w1200">
			<p>
				<a href="javascript:;">关于我们</a> <span>|</span> <a
					href="javascript:;">帮助中心</a> <span>|</span> <a href="javascript:;">售后服务</a>
				<span>|</span> <a href="javascript:;">母婴资讯</a> <span>|</span> <a
					href="javascript:;">关于货源</a>
			</p>
			<p class="coty">母婴商城版权所有 &copy; 2012-2020</p>
		</div>
	</div>
	
	<script>
layui.config({
      base: '../res/static/js/util' //你存放新模块的目录，注意，不是layui的模块目录
    }).use(['jquery','form','layer'], function(){
  var form = layui.form; 
  //监听提交
  form.on('submit(register)', function(data){
	  $.post("/register",data.field,function(res){
			if(res.resultCode==GLOBAL_SUCCESS_CODE)
			{
				var fUserCode = $("#fUserCode").val();
				window.location.href="login.jsp?fUserCode="+fUserCode;
			}else{
				delError(res);
				return false
			}
		},'json');
  });
});
</script>
</body>
</html>