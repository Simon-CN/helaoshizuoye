<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
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
    <%--<link rel="stylesheet" href="bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="bootstraplogin.css">--%>
</head>
<body>

<s:form action="login" theme="simple">
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
                <td colspan="2" width="200" align="left" style="background:#eee">Login Here</td>
            </tr>
            <tr>
                <td align="left">用户名:</td>
                <td align="left"><s:textfield name="user.username"/></td>
            </tr>
            <tr>
                <td align="left">密码:</td>
                <td align="left"><s:password type="text" name="user.password"/></td>
            </tr>
            <tr>
                <td align="left"></td>
                <td align="left"><input type="submit" name="login" value="登录"></td>
            </tr>
        </table>
        <p><a href="register.jsp">注册</a></p>
    </center>
</s:form>

</body>
</html>