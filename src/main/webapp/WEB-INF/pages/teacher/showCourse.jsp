<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title>课程信息显示</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="/js/jquery-3.2.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- 顶栏 -->
	<jsp:include page="top.jsp"></jsp:include>
	<!-- 中间主体 -->
	<div class="container" id="content">
		<div class="row">
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="col-md-10">
				<div class="panel panel-default">
				    <div class="panel-heading">
						<div class="row">
					    	<h1 class="col-md-5">我教授的课程</h1>
							<%--<form class="bs-example bs-example-form col-md-5" role="form" style="margin: 20px 0 10px 0;" action="/teacher/selectCourse" id="form1" method="post">--%>
								<%--<div class="input-group">--%>
									<%--<input type="text" class="form-control" placeholder="请输入课程名" name="findByName">--%>
									<%--<span class="input-group-addon btn" onclick="document.getElementById('form1').submit" id="sub">搜索</span>--%>
								<%--</div>--%>
							<%--</form>--%>

						</div>
				    </div>
				    <table class="table table-bordered">
					        <thead>
					            <tr>
									<th>课程号</th>
									<th>课程名称</th>
									<th>授课老师编号</th>
									<th>上课时间</th>
									<th>上课地点</th>
									<th>周数</th>
									<th>课程类型</th>
									<th>学分</th>
									<th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
							<c:forEach  items="${courseList}" var="item">
								<tr>
									<td>${item.courseid}</td>
									<td>${item.coursename}</td>
									<td>${item.teacherid}</td>
									<td>${item.coursetime}</td>
									<td>${item.classroom}</td>
									<td>${item.courseweek}</td>
									<td>${item.coursetype}</td>
									<td>${item.score}</td>
									<td>
										<button class="btn btn-default btn-xs btn-info" onClick="location.href='/teacher/gradeCourse?id=${item.courseid}'">成绩</button>
										<!--弹出框-->
									</td>
								</tr>
							</c:forEach>
					        </tbody>
				    </table>

				</div>

			</div>
		</div>
	</div>
	<div class="container" id="footer">
		<div class="row">
			<div class="col-md-12"></div>
		</div>
	</div>
	<div class="container" id="footer">
		<div class="row">
			<div class="col-md-12">
				<footer class="text-center" style="margin-top: 20px; padding: 15px 0; color: #6c757d; border-top: 1px solid #e7e7e7; font-size: 15px;">
					<span class="glyphicon glyphicon-copyright-mark"></span>
					版权所有 © 珠海科技学院计算机学院 软件工程专业 04232002 刘漪靓
				</footer>
			</div>
		</div>
	</div>
</body>
	<script type="text/javascript">
		<%--设置菜单中--%>
		$("#nav li:nth-child(1)").addClass("active")

	</script>
</html>