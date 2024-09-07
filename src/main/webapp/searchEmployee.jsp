<%@ page import="java.util.List" %>
<%@ page import="model.Employee" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Employee</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h2>Search Employee</h2>
    <form action="SearchEmployeeServlet" method="post">
        Keyword: <input type="text" name="keyword" required><br>
        <input type="submit" value="Search"> 
       
        <button onclick="location.href='adminHome.jsp';">Home</button>
    </form>

    <% if (request.getAttribute("employeeList") != null && !((List<?>)request.getAttribute("employeeList")).isEmpty()) { %>
        <h2>Search Results</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Salary</th>
            </tr>
            <% 
                List<Employee> employeeList = (List<Employee>) request.getAttribute("employeeList");
                for (Employee employee : employeeList) { 
            %>
                <tr>
                    <td><%= employee.getId() %></td>
                    <td><%= employee.getName() %></td>
                    <td><%= employee.getDepartment() %></td>
                    <td><%= employee.getSalary() %></td>
                </tr>
            <% } %>
        </table>
    <% } %>
</body>
</html>
