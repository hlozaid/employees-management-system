<%@ page import="java.util.List" %>
<%@ page import="model.Employee" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Employee</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-vh-100 d-flex align-items-center justify-content-center ">
<div class="bg-white p-4 rounded-lg shadow-md-v-50">

    <h2>Search Employee</h2>
    <form action="SearchEmployeeServlet" method="post">
       <label for="keyword" class="form-label"> Name:</label> <input type="text" id="keyword" name="keyword" required  class="form-control mb-3"><br>
        <input type="submit" value="Search" class="btn btn-primary" > 
       
        <button onclick="location.href='adminHome.jsp';" class="btn btn-primary">Home</button>
    </form>
    </div>

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
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
 </body>
</html>
