<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-vh-100 d-flex align-items-center justify-content-center ">
<div class="bg-white p-4 rounded-lg shadow-md-v-50">
    <h2>Add New Employee</h2>
    <form action="AddEmployeeServlet" method="post">
       <label for="name" class="form-label"> Name:</label> <input type="text" id="name" name="name" required class="form-control mb-3">
       <label for="department" class="form-label"> Department:</label> <input type="text" id="department" name="department" required class="form-control mb-3">
        <label for="salary" class="form-label">Salary:</label> <input type="number" id="salary" name="salary" required class="form-control mb-3">
        <input type="submit" value="Add Employee" class="btn btn-primary">
        <button onclick="location.href='adminHome.jsp';" class="btn btn-primary">Home</button>
    </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" ></script>
</body>
</html>
