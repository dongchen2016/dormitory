<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/1/12 0012
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<link href="<c:url value="/css/font-awesome.min.css"/>" rel="stylesheet">
<link href="<c:url value="/css/animate.css"/>" rel="stylesheet">
<link href="<c:url value="/css/styleMy.css"/>" rel="stylesheet">
<link href="<c:url value="/css/page.css"/>" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="/css/daterangepicker-bs3.css"/>"/>
<link rel="stylesheet" type="text/css" media="all" href="<c:url value="/css/daterangepicker-1.3.7.css"/>"/>
<style type="text/css">
    #tr_head th{text-align: center;}
    body{font-size:14px;}
</style>
<!--js部分-->
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/js/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="/js/jquery.dataTables.init.js"/>"></script>
<script src="<c:url value="/js/moment.js"/>"></script>
<script src="<c:url value="/js/daterangepicker-1.3.7.js"/>"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#add").click(function(){
            location.href="/dormitory/iframe/stayOutLate/add";
        });
    });
</script>
<body>

<div class="dataTable-wrapper center-block" style="width: 800px;" >
    <div class="title row" style="margin-bottom: 10px;">
        <div class="col-md-4 col-md-offset-4">晚归学生</div>
        <button class="col-md-1 btn btn-primary" id="add">新增</button>
    </div>
    <table id="dataTable" class="table table-striped table-hover table-bordered">
        <tr role="row" id="tr_head">
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>宿管站</th>
            <th>晚归时间</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${tbUsers}" var="u">
            <tr class="text-center">
                <td><c:out value="${u.studentid}"/></td>
                <td><c:out value="${u.studentname}"/></td>
                <td>
                    <c:if test="${u.studentsex=='1'}">男</c:if>
                    <c:if test="${u.studentsex=='0'}">女</c:if>
                </td>
                <td><c:out value="${department}"/></td>
                <td><c:out value="${u.stringLateTime}"/></td>
                <td><a href="/dormitory/iframe/stayOutLate/change?studentid=<c:out value="${u.studentid}"/>">修改</a>&nbsp;&nbsp;
                    <a onclick="return confirm('确认删除此用户？')" href="/dormitory/iframe/stayOutLate/del?studentid=<c:out value="${u.studentid}"/>">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
