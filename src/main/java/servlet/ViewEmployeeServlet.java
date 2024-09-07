package servlet;

import dao.EmployeeDAO;
import model.Employee;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ViewEmployeeServlet extends HttpServlet {
    private EmployeeDAO employeeDAO = new EmployeeDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employees = employeeDAO.getAllEmployees();
        request.setAttribute("employeeList", employees);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewEmployee.jsp");
        dispatcher.forward(request, response);
    }
}
