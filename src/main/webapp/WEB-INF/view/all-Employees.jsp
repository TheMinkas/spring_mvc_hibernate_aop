<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<body>

<h2>All Employees</h2>
<br>
<%--Создание таблицы--%>
<table>
<%--Строка таблицы--%>
    <tr>
<%--Шапка таблицы--%>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>
<%--Временная переменная emp будет принимать значения каждого работника из списка allEmps --%>
<%--который я добавил в модель контроллера класса myController--%>
    <c:forEach var="emp" items="${allEmps}">
<%--Привязка к каждой кнопке update параметра id--%>
        <c:url var="updateButton" value="/updateInfo">

            <c:param name="empId" value="${emp.id}"/>

        </c:url>

<%--Строка таблицы--%>
        <tr>
<%--Ячейка таблицы--%>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Update"
                onclick="window.location.href = '${updateButton}'"/>
            </td>


        </tr>

    </c:forEach>

</table>

<br>
<%--Кнопка добавления нового сотрудника--%>
<input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'"/>

</body>

</html>