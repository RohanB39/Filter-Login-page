package com.myapp;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class AuthFilter extends HttpFilter implements Filter {

    private static final long serialVersionUID = 1L;

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
  
        if (httpRequest.getRequestURI().endsWith("index.jsp") || httpRequest.getRequestURI().endsWith("Login")) {
            chain.doFilter(request, response);
            return;
        }
        String user = (String) httpRequest.getSession().getAttribute("user");
        if (user != null) {
            chain.doFilter(request, response);
        } else {
            httpResponse.sendRedirect("index.jsp");
        }
    }
}
