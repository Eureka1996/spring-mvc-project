<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-04
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--
        可以通过modelAttribute属性指定绑定的模型属性
        若没有指定该属性，则默认从request域对象中读取command的表单bean
        如果该属性也不存在，则会发生错误
    --%>
    <form:form action="emp" method="POST" modelAttribute="employee">
        <%--path属性对应html表单标签的name属性--%>
        LastName:<form:input path="lastName"/>
        <br/>
        Email:<form:input path="email"/>
        <br/>
        <%
            Map<Integer,Object> genders = new HashMap<>();
            genders.put(1,"Male");
            genders.put(2,"Female");
            request.setAttribute("genders",genders);
        %>
        Gender:<form:radiobuttons path="gender" items="${genders}"/>
        <br/>
        Department:<form:select path="department.id" items="${departments}" itemLabel="departmentName" itemValue="id"></form:select>
        <br/>
        <input type="submit" value="Submit"/>
    </form:form>
</body>
</html>
