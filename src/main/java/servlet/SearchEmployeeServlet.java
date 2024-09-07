package servlet;

import dao.EmployeeDAO;
import model.Employee;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class SearchEmployeeServlet extends HttpServlet {
    private EmployeeDAO employeeDAO = new EmployeeDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        List<Employee> employees = employeeDAO.searchEmployees(keyword);
        request.setAttribute("employeeList", employees);
        RequestDispatcher dispatcher = request.getRequestDispatcher("searchEmployee.jsp");
        dispatcher.forward(request, response);
    }
}
