<%@ page import="java.util.List" %>
<%@ page import="model.Employee" %>

<!DOCTYPE html>
<html>
<head>
    <title>All Employees</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h2>Employee List</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Actions</th>
        </tr>
        <%-- Java code for the for loop --%>
        <% 
            List<Employee> employeeList = (List<Employee>) request.getAttribute("employeeList");
            if (employeeList != null) {
                for (Employee employee : employeeList) {
        %>
        <tr>
            <td><%= employee.getId() %></td>
            <td><%= employee.getName() %></td>
            <td><%= employee.getDepartment() %></td>
            <td><%= employee.getSalary() %></td>
            <td>
                <a href="updateEmployee.jsp?id=<%= employee.getId() %>">Update</a>
                <a href="DeleteEmployeeServlet?id=<%= employee.getId() %>">Delete</a>
            </td>
        </tr>
        <% 
                }
            } 
        %>
        <button onclick="location.href='adminHome.jsp';">Home</button>
    </table>
</body>
</html>
