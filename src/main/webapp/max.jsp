<%--
  Created by IntelliJ IDEA.
  User: kiyat
  Date: 29.03.2023
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="MaxServlet" method="post" onsubmit="return calc(this);">

                <input type="text" name="firstNum" placeholder="enter your number">
                <input type="text" name="secondNum" placeholder="enter your number">
                <input type="text" name="thirdNum" placeholder="enter your number">
                <input type="submit" value="Рассчитать">
</form>
</body>
</html>
