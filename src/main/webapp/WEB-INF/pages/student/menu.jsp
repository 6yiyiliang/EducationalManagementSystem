<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .nav-stacked > li > a {
        transition: all 0.3s;
        color: rgba(234, 44, 87, 0.6) !important; /* 默认文字颜色 */
    }
    .nav-stacked > li > a:hover {
        background-color: rgba(234, 44, 87, 0.6) !important;
        color: white !important; /* 悬停时文字颜色 */
    }
    .nav-stacked > li.active > a {
        background-color: rgba(234, 44, 87, 0.8) !important;
        color: white !important; /* 激活状态文字颜色 */
    }
    /* 确保图标颜色与文字一致 */
    .nav-stacked > li > a span {
        color: inherit !important;
    }
</style>

<div class="col-md-2">
    <ul class="nav nav-pills nav-stacked" id="nav" style="font-size: 1.2em;">
        <li><a href="/student/showCourse">所有课程<span class="badge pull-right"></span></a></li>
        <li><a href="/student/selectedCourse">已选课程<span class="badge pull-right"></span></a></li>
        <li><a href="/student/overCourse">已修课程<span class="badge pull-right"></span></a></li>
        <li><a href="/student/passwordRest">修改密码<span class="glyphicon glyphicon-pencil pull-right"></span></a></li>
        <li><a onclick="logoutConfirmd()">退出系统<span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
    </ul>

    <script>
        function logoutConfirmd() {
            var msg = "您确定要退出吗？！";
            if (confirm(msg)==true){
                location.href='/logout';
                return true;
            }else{
                return false;
            }
        };
    </script>
</div>