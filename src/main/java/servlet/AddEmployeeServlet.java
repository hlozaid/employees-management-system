package servlet;

import dao.EmployeeDAO;
import model.Employee;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class AddEmployeeServlet extends HttpServlet {
    private EmployeeDAO employeeDAO = new EmployeeDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String department = request.getParameter("department");
        double salary = Double.parseDouble(request.getParameter("salary"));

        Employee employee = new Employee();
        employee.setName(name);
        employee.setDepartment(department);
        employee.setSalary(salary);

        employeeDAO.addEmployee(employee);
        response.sendRedirect("viewEmployee.jsp");
    }
}
