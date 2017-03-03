<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/1/18 0018
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">
<style type="text/css">
    div.add-content{width: 500px;height:365px;border: 1px solid lightgray;background-color: slategray;
                    margin-top: 30px; }
    input{margin: 5px 0;}
</style>
<script src="<c:url value="/js/jquery.min.js"/>"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script>
   $(document).ready(function(){
       $("#check").click(function(){
          location.href="/dormitory/iframe/userManage";
       });
       $("input[name='gender'][value=${userInfo.gender}]").attr("checked",true);
   });
</script>
<body>
<div class="center-block add-content">
    <div class="col-md-7 col-md-offset-2">
        <h3>${title}</h3><br>
        <form action="${url}">
            用户名：　<input type="text" name="userid" value="${userInfo.userid}" ${readonly}><br>
            姓名：　　<input type="text" name="username" value="${userInfo.username}"><br>
            性别：　　<input type="radio" name="gender" value="1">男&nbsp;&nbsp;
                    <input type="radio" name="gender" value="0">女<br>
            密码：　　<input type="password" name="password" id="pwd" value="${userInfo.password}"><br>
            确认密码：<input type="password" name="rpassword" id="rpwd" value="${userInfo.password}"><br>   <%--此处需要加上校验--%>
            宿管站：　<input type="text" name="department"value="${userInfo.department}"><br>
            权利等级：<input type="text" name="priority" value="${userInfo.priority}"><br>
            <div class="btn col-sm-4 col-sm-offset-3" style="margin-top: 10px;">
                <button type="submit" class="btn">保存</button>
                <button type="button" id="check" class="btn" style="margin-left:10px;">查看变动</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
