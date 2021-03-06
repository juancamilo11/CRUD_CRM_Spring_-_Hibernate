<%--
  Created by IntelliJ IDEA.
  User: JuanCamiloCC
  Date: 8/3/21
  Time: 8:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List of Customers</title>
</head>
<body>
<h1>List of Customers</h1>
<div>
    <a href="${pageContext.request.contextPath}/customer/form-add-customer">Insert a new Customer</a>
</div>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="tempCustomer" items="${customersList}">

            <c:url var="updateLink" value="/customer/show-form-update">
                <c:param name="customerId" value="${tempCustomer.id}"/>
            </c:url>

            <c:url var="deleteLink" value="/customer/delete-customer">
                <c:param name="customerId" value="${tempCustomer.id}" />
            </c:url>


            <tr>
                <td>${customer.firstName}</td>
                <td>${customer.lastName}</td>
                <td>${customer.age}</td>
                <td>${customer.email}</td>
                <td>
                    <a href="${updateLink}">Update</a> | <a href="${deleteLink}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
