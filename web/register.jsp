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
    <style type="text/css">
        body {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
        }

        .errors {
            background-color: #FFCCCC;
            border: 1px solid #CC0000;
            width: 220px;
            line-height: 10px;
        }

        .errorsli {
            list-style: none;
        }
    </style>
</head>
<body>
<%--<s:form action="register">--%>
    <%--<s:textfield name="user.username" label="用户名"/>--%>
    <%--<s:textfield name="user.password" label="密码"/>--%>
    <%--<s:textfield name="user.email" label="邮箱"/>--%>
    <%--<s:submit value="注册" align="left"/>--%>
<%--</s:form>--%>
<s:form action="register" theme="simple">
    <center>
        <table width="200">
            <tr height="30">
                <td width="200" colspan="2">
                    <s:if test="hasActionErrors()">
                        <div class="errors">
                            <s:actionerror/>
                        </div>
                    </s:if>
                </td>
            </tr>
            <tr>
                <td colspan="2" width="200" align="left" style="background:#eee">请注册</td>
            </tr>
            <tr>
                <td align="left">用户:</td>
                <td align="left"><s:textfield name="user.username"/></td>
            </tr>
            <tr>
                <td align="left">密码:</td>
                <td align="left"><s:password type="text" name="user.password"/></td>
            </tr>
            <tr>
                <td align="left">邮箱:</td>
                <td align="left"><s:textfield type="text" name="user.email"/></td>
            </tr>
            <tr>
                <td align="left"></td>
                <td align="left"><input type="submit" name="register" value="注册"></td>
            </tr>
        </table>
    </center>
</s:form>
</body>
</html>
