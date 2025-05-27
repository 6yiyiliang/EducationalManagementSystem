<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="/js/jquery-3.2.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<style type="text/css">
		#login-box {
			margin-left: -12px;
			padding: 35px;
			padding-top: 50px;
			border-radius:15px;
			background: rgba(86, 102, 107, 0.7);
			color: #fff;
			box-shadow: 0 4px 8px rgba(0,0,0,0.1);
		}
		.footer {
			position: fixed;
			bottom: -7px;
			width: 100%;
			text-align: center;
			padding: 15px 0;
			background-color: rgba(0, 0, 0, 0.5);
			color: white;
			font-size: 15px;
			font-family: Arial, sans-serif;
		}
	</style>
</head>
<body style="
  padding-top: 90px;
  margin: 0;
  background: url('images/background_image.jpg') no-repeat;
  background-size: 100% 100%;
  background-attachment: fixed;
  min-height: 100vh;
  padding-bottom: 70px; /* 为页脚留出空间 */
">
<div class="container" id="top">
	<div class="row" style="margin-top: 280px;">
		<div class="col-md-4"></div>
		<div class="col-md-4" id="login-box">
			<form class="form-horizontal" role="form" action="/login" id="from1" method="post">
				<div class="form-group">
					<label for="userID" class="col-sm-3 control-label" style="font-size: 18px;">用户id</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="userID" placeholder="请输入用户id" name="username" style="font-size: 15px;">
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-3 control-label" style="font-size: 18px;">密码</label>
					<div class="col-sm-9">
						<input type="password" class="form-control" id="password" placeholder="请输入密码" name="password" style="font-size: 15px;">
					</div>
				</div>

				<div class="form-group">
					<div class="text-center">
						<div class="label" style="font-size: 14px;color: red">
							${message}
						</div>
					</div>
				</div>
				<div class="form-group" style="margin-right: 15px;">
					<div class="col-sm-offset-2 text-center">
						<button
								type="submit"
								class="btn btn-info"
								style="
								margin-top: -20px;
								font-size: 15px;
								background-color: rgb(234, 44, 87);  /* 使用你的RGB值 */
								border-color: rgb(234, 44, 87);      /* 边框颜色同步 */
								color: white;                        /* 白色文字 */
								transition: all 0.3s;                /* 悬停动画 */
  "
								onmouseover="this.style.backgroundColor='rgb(210, 30, 70)'"
								onmouseout="this.style.backgroundColor='rgb(234, 44, 87)'"
						>
						登录
						</button>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-4"></div>
	</div>
</div>

<!-- 版权信息 -->
<div class="footer">
	版权所有©计算机学院 软件工程专业 04232002 刘漪靓
</div>

<script>
	// 给文本框获取焦点
	$("#userID").focus();
</script>
</body>
</html>