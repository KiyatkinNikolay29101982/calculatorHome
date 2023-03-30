<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Калькулятор простых сервлетов</title>
    <!--
	<link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="text/javascript">
        function calc(form){
            with(form){
                if(firstNum.value == "" || secondNum.value == ""){
                    alert("Пожалуйста, введите номер!");
                    return false;
                }
                if(isNaN(firstNum.value) || isNaN(secondNum.value)){
                    alert("Формат числа неправильный!");
                    return false;
                }
                if(operator.value == "-1"){
                    alert(«Выберите оператора!»);
                    return false;
                }
            }
        }
    </script>
</head>

<body>
<form action="CalculateServlet" method="post" onsubmit="return calc(this);">
    <table align="center" border="0">
        <tr>
            <th>Калькулятор простых сервлетов</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="firstNum">
                <select name="operator">
                    <option value="-1">Оператор</option>
                    <option value="+">+</option>
                    <option value="-">-</option>
                    <option value="*">*</option>
                    <option value="/">/</option>
                </select>
                <input type="text" name="secondNum">
                <input type="submit" value="Рассчитать">
            </td>
        </tr>
    </table>
</form>
</body>
</html>