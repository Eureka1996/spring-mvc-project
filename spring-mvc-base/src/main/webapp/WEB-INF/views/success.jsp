<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020-03-15
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>SUCCEss</h2>
    time:${requestScope.time}
    <br/>
    names:${requestScope.names}
    <br/>
    <fmt:message key="i18n.username"></fmt:message>
    <fmt:message key="i18n.password"></fmt:message>
</body>
</html>
