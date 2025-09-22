<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>简易计算器</title>
</head>
<body>

<%
    String n1 = request.getParameter("num1");
    String n2 = request.getParameter("num2");
    String op = request.getParameter("op");
    String result = "";

    // 默认值
    String v1 = (n1 == null) ? "" : n1;
    String v2 = (n2 == null) ? "" : n2;
    String selectedOp = (op == null) ? "+" : op;

    if (n1 != null && !n1.isEmpty() && n2 != null && !n2.isEmpty() && op != null) {
        try {
            double a = Double.parseDouble(n1);
            double b = Double.parseDouble(n2);
            double res = 0;
            switch (op) {
                case "+": res = a + b; break;
                case "-": res = a - b; break;
                case "*": res = a * b; break;
                case "/": res = b != 0 ? a / b : Double.NaN; break;
            }
            result = String.valueOf(res);
        } catch (Exception e) {
            result = "错误";
        }
    }
%>

<form>
    <input type="number" name="num1" step="any" value="<%= v1 %>">

    <select name="op">
        <option value="+" <%= "+".equals(selectedOp) ? "selected" : "" %>>+</option>
        <option value="-" <%= "-".equals(selectedOp) ? "selected" : "" %>>-</option>
        <option value="*" <%= "*".equals(selectedOp) ? "selected" : "" %>>*</option>
        <option value="/" <%= "/".equals(selectedOp) ? "selected" : "" %>>/</option>
    </select>

    <input type="number" name="num2" step="any" value="<%= v2 %>">

    <input type="submit" value="=">
    <input type="text" readonly value="<%= result %>">
</form>

</body>
</html>
