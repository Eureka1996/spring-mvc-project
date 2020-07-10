<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-04-03
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    $(function () {
        alert("hello wufuqiang");
    })
</script>
<head>
    <title>Title</title>
    <h2>WuFuqiang</h2>
    <c:if test="${empty requestScope.employees}">
        没有任何员工信息。
    </c:if>
    <c:if test="${!empty requestScope.employees}">
        <table border="1" cellpadding="10" cellspacing="0">
            <tr>
                <th>ID</th>
                <th>LastName</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Department</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${requestScope.employees}" var="emp">
                <tr>
                    <th>${emp.id}</th>
                    <th>${emp.lastName}</th>
                    <th>${emp.email}</th>
                    <th>${emp.gender == 0 ? 'Female':'Male'}</th>
                    <th>${emp.department.departmentName}</th>
                    <th><a href="">Edit</a> </th>
                    <th><a href="emp/${emp.id}">Delete</a> </th>
                </tr>
            </c:forEach>
        </table>
    </c:if>

    <a href="emp">Add New Employee.</a>

</head>
<body>

</body>
</html>
