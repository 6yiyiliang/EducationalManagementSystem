<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title>学生信息显示</title>

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
						<h1 class="col-md-5">学生名单管理</h1>
						<form class="bs-example bs-example-form col-md-5" role="form" style="margin: 20px 0 10px 0;" action="/admin/selectStudent?page=1&pageSize=4" id="form1" method="post">
							<div class="input-group">
								<input type="text" class="form-control" placeholder="请输入姓名" name="findByName" id="findByName">
								<span class="input-group-addon btn" id="sub">搜索</span>
							</div>
						</form>
						<button class="btn btn-default col-md-2" style="margin-top: 20px" onClick="location.href='/admin/addStudent'">
							添加用户信息
							<sapn class="glyphicon glyphicon-plus"/>
						</button>

					</div>
				</div>
				<table class="table table-bordered">
					<thead>
					<tr>
						<th>学号</th>
						<th>姓名</th>
						<th>性别</th>
						<th>出生年份</th>
						<th>入学时间</th>
						<th>学院</th>
						<th>操作</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach  items="${pageInfo.list}" var="item">
						<tr>
							<td>${item.userid}</td>
							<td>${item.username}</td>
							<td>${item.sex}</td>
							<td><fmt:formatDate value="${item.birthyear}" dateStyle="medium" /></td>
							<td><fmt:formatDate value="${item.grade}" dateStyle="medium" /></td>
							<td>${item.collegeName}</td>
							<td>
								<button class="btn btn-default btn-xs btn-info" onClick="location.href='/admin/editStudent?id=${item.userid}'">修改</button>
									<%--&lt;%&ndash;${item.userid}&ndash;%&gt;  location.href='/admin/removeStudent?id=${item.userid}'--%>
								<button class="btn btn-default btn-xs btn-danger btn-primary" onClick="deleteConfirmd(${item.userid})">删除</button>
								<!--弹出框-->
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>

				<div class="panel-footer">
					<div class="pull-left">
						<div class="form-group form-inline">
							总共${pageInfo.pages} 页，共${pageInfo.total} 条数据。 每页
							<select class="form-control" id="changPageSize" onchange="changPageSize()">
								<option>请选择</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select> 条
						</div>
					</div>
				</div>

				<%--分页--%>
				<div class="panel-footer">
					<nav style="text-align: center">
						<ul class="pagination">
							<li>
								<a style="color: rgb(229,64,101);" aria-label="Previous" href="${pageContext.request.contextPath}/admin/showStudent?page=1&pageSize=${pageInfo.pageSize}">首页</a>
							</li>
							<li><a style="color: rgb(229,64,101);" href="${pageContext.request.contextPath}/admin/showStudent?page=${pageInfo.pageNum-1}&pageSize=${pageInfo.pageSize}">上一页</a></li>

							<c:forEach begin="1" end="${pageInfo.pages}" var="i">
								<c:if test="${i==pageInfo.pageNum}">
									<li><a style="background-color: rgba(227,74,108,0.7);color: rgba(229,64,101);" href="${pageContext.request.contextPath}/admin/showStudent?page=${i}&pageSize=${pageInfo.pageSize}">${i}</a></li>
								</c:if>
								<c:if test="${i!=pageInfo.pageNum}">
									<li><a style="color: rgb(229,64,101);" href="${pageContext.request.contextPath}/admin/showStudent?page=${i}&pageSize=${pageInfo.pageSize}">${i}</a></li>
								</c:if>
							</c:forEach>

							<li><a style="color: rgb(229,64,101);" href="${pageContext.request.contextPath}/admin/showStudent?page=${pageInfo.pageNum+1}&pageSize=${pageInfo.pageSize}">下一页</a></li>
							<li>
								<a style="color: rgb(229,64,101);" href="${pageContext.request.contextPath}/admin/showStudent?page=${pageInfo.pages}&pageSize=${pageInfo.pageSize}" aria-label="Next">尾页</a>
							</li>
						</ul>
					</nav>
				</div>

			</div>

		</div>
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
	$("#nav li:nth-child(2)").addClass("active");

	function deleteConfirmd(userId) {
		var msg = "您真的确定要删除吗？！";
		if (confirm(msg)==true){
			location.href='/admin/removeStudent?id='+userId;
			return true;
		}else{
			return false;
		}
	};

	//改变每页显示条数
	function changPageSize(){
		var pageSize=$("#changPageSize").val();
		location.href="${pageContext.request.contextPath}/admin/showStudent?page=1&pageSize="+pageSize;
	}


	function sleep(numberMillis) {
		var now = new Date();
		var exitTime = now.getTime() + numberMillis;
		while (true) {
			now = new Date();
			if (now.getTime() > exitTime)
				return;
		}
	}


	$("#sub").click(function () {
		findByName();
	});

	//按键盘的回车键也执行搜索
	$("#findByName").keydown(function () {
		if(event.keyCode==13) {
			findByName();
		}
	});


	// 发送ajax请求，将要查询的名字存入到session中
	function findByName() {
		var username = $("#findByName").val();
		// alert(username)
		var allData={
			username:username
		};

		$.ajax({
			url:"/admin/searchStudentName",
			contentType:"application/json;charset=UTF-8",
			data:JSON.stringify(allData),//'{"username":username}',
			dataType:"json",
			type:"post"
		});

		sleep(500)

		$("#form1").submit();
	}


</script>
</html>