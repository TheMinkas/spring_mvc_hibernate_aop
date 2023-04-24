<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>

<h2>Employee info</h2>
<br>

<form:form action="saveEmployee" modelAttribute="employee">
<%--Сохранеие Id работника из базы данных в saveEmployee--%>
    <form:hidden path="id"/>

<%--Заполнение данных о работнике--%>
    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Department <form:input path="department"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    <input type="submit" value="OK">
<%--После заполнения и нажания кнопки ОК вызывается метод saveEmployee--%>


</form:form>

</body>

</html>