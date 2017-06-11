<%--
  Created by IntelliJ IDEA.
  User: SX
  Date: 2017/6/11
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <title>注册</title>
</head>
<body>
<s:form action="register">
    <s:textfield name="user.username" label="用户名"/>
    <s:textfield name="user.password" label="密码"/>
    <s:textfield name="user.email" label="邮箱"/>
    <s:submit value="注册" align="left"/>
</s:form>
</body>
</html>
