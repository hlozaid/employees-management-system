package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class AdminLoginServlet extends HttpServlet {
    private final String USERNAME = "admin";
    private final String PASSWORD = "admin"; // Simple static login; you can replace this with a database check

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (USERNAME.equals(username) && PASSWORD.equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", username);
            response.sendRedirect("adminHome.jsp");
        } else {
            response.sendRedirect("loginError.jsp");
        }
    }
}
