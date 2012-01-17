<!DOCTYPE HTML>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<title><spring:message code="customer.title" /></title>
</head>
<body>
<h1><spring:message code="customer.title" /></h1>

<p>

    <form:form method="POST" modelAttribute="customer">
        <input type="hidden" name="_method" value="PUT" />        
        <fieldset>
            <legend><spring:message code="customer.personal"/></legend>
            <table>
                <tr><td><form:label path="firstName" cssErrorClass="error"><spring:message code="customer.firstname" /></form:label></td><td><form:input path="firstName" /></td><td><form:errors path="firstName"/></td></tr>
                <tr><td><form:label path="lastName" cssErrorClass="error"><spring:message code="customer.lastname" /></form:label></td><td><form:input path="lastName" /></td><td><form:errors path="lastName"/></td></tr>
                <tr><td><form:label path="dateOfBirth" cssErrorClass="error"><spring:message code="customer.dob" /></form:label></td><td><form:input path="dateOfBirth" type="date" /></td><td><form:errors path="dateOfBirth"/></td></tr>
                <tr><td><form:label path="address.street" cssErrorClass="error"><spring:message code="address.street" /></form:label></td><td><form:input path="address.street" /></td><td><form:errors path="address.street"/></td></tr>
                <tr><td><form:label path="address.houseNumber" cssErrorClass="error"><spring:message code="address.houseNumber" /></form:label></td><td><form:input path="address.houseNumber" /></td><td><form:errors path="address.houseNumber"/></td></tr>
                <tr><td><form:label path="address.boxNumber" cssErrorClass="error"><spring:message code="address.boxNumber" /></form:label></td><td><form:input path="address.boxNumber" /></td><td><form:errors path="address.boxNumber"/></td></tr>
                <tr><td><form:label path="address.city" cssErrorClass="error"><spring:message code="address.city" /></form:label></td><td><form:input path="address.city" /></td><td><form:errors path="address.city"/></td></tr>
                <tr><td><form:label path="address.postalCode" cssErrorClass="error"><spring:message code="address.postalCode" /></form:label></td><td><form:input path="address.postalCode" /></td><td><form:errors path="address.postalCode"/></td></tr>
                <tr><td><form:label path="address.country" cssErrorClass="error"><spring:message code="address.country" /></form:label></td><td><form:select path="address.country" items="${countries}"/></td><td><form:errors path="address.country"/></td></tr>
            </table>
        </fieldset>
        <fieldset>
            <legend><spring:message code="customer.userinfo"/></legend>
            <table>
                <tr><td><form:label path="username" cssErrorClass="error"><spring:message code="customer.username" /></form:label></td><td><form:input path="username" /></td><td><form:errors path="username"/></td></tr>
                <tr><td><form:label path="emailAddress" cssErrorClass="error"><spring:message code="customer.email" /></form:label></td><td><form:input path="emailAddress" /></td><td><form:errors path="emailAddress"/></td></tr>
            </table>
        </fieldset>
        <button id="save"><spring:message code="button.save"/></button>
    </form:form>

    <h1><spring:message code="customer.orders" /></h1>
    <table>    
        <tr><th>#</th><th>Date</th><th>Total</th></tr>
        <c:forEach items="${orders}" var="order">
            <tr><td>${order.id}</td><td>${order.orderDate}</td><td>${order.totalOrderPrice} $</td></tr>
        </c:forEach>
    </table>

</body>
</html>