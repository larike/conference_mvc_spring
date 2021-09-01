<%--
  Created by IntelliJ IDEA.
  User: Lari Visma Academy
  Date: 31.8.2021
  Time: 15.23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Reg</title>
    <style>
        .error {
            color: #ff0000;
        }

        .errorblock {
            color: #000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>
<h1>Reg</h1>
<form:form modelAttribute="registration">
    <form:errors path="*" cssClass="errorblock" element="div"/>
    <table>
        <tr>
            <td>
                <spring:message code="name"/>
            </td>
            <td>
                <form:input path="name"/>
            </td>
            <td>
                <form:errors path="name" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message code="save.changes" text="default"/>"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
