package creatica_theater_hub.Config;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;

public class AdminInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession(false);
        
        // Check if user is logged in as admin
        if (session == null || session.getAttribute("adminLoggedIn") == null || !(boolean) session.getAttribute("adminLoggedIn")) {
            // Redirect to login page if not logged in
            response.sendRedirect(request.getContextPath() + "/admin/login");
            return false;
        }
        
        return true;
    }
}
