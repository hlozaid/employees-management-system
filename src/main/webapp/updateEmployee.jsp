<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <h2>Update Employee</h2>
    <form action="UpdateEmployeeServlet" method="post">
        ID: <input type="text" name="id" required><br>
        Name: <input type="text" name="name" required><br>
        Department: <input type="text" name="department" required><br>
        Salary: <input type="number" step="0.01" name="salary" required><br>
        <input type="submit" value="Update Employee">
        <button onclick="location.href='adminHome.jsp';">Home</button>
    </form>
</body>
</html>
