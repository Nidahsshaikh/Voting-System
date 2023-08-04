 import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final String CORRECT_USERNAME = "your_username"; 
    private static final String CORRECT_PASSWORD = "your_password"; 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals(CORRECT_USERNAME) && password.equals(CORRECT_PASSWORD)) {
            // Successful login, redirect to the dashboard or profile page
            response.sendRedirect("dashboard.jsp"); // Replace "dashboard.jsp" with the appropriate URL or path
        } else {
            // Failed login, redirect back to the login page with an error message
            response.sendRedirect("login.html?error=1");
        }
    }
}



