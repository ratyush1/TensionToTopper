package FIlter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/role-filter")
public class RoleFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
            throws IOException, ServletException {
        
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        HttpSession session = httpRequest.getSession(false);

        // Only process if there's an existing session with a role
        if (session != null && session.getAttribute("role") != null) {
            String role = (String) session.getAttribute("role");
            String requestURI = httpRequest.getRequestURI();

            // Skip filtering for login/register pages
            if (requestURI.endsWith("login.jsp") || requestURI.endsWith("register.jsp")) {
                chain.doFilter(request, response);
                return;
            }

            // Role-based redirection logic
            if ("admin".equalsIgnoreCase(role)) {
                if (!requestURI.endsWith("admin-dashboard.jsp")) {
                    httpResponse.sendRedirect(httpRequest.getContextPath() + "/admin-dashboard.jsp");
                    return;
                }
            } else {
                if (!requestURI.endsWith("dashboard.jsp")) {
                    httpResponse.sendRedirect(httpRequest.getContextPath() + "/dashboard.jsp");
                    return;
                }
            }
        }
        
        chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void destroy() {}
}