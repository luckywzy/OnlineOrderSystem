package com.sust.filter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 权限校验
 *
 * OnlineOrder
 * com.sust.filter
 * 2018/4/22
 */
public class RequestFilter  implements Filter{
    @Override public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
            FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        // 获得当前请求的URI
        String nowUrl = request.getRequestURI();

        if(!"/".equals(nowUrl)){
            filterChain.doFilter(request,response);
            return;
        }
        //response.sendRedirect("/enterpriseInfo/enterpriseInfoList");
        response.sendRedirect("/home");
      //  filterChain.doFilter(request,response);
        return;
    }

    @Override public void destroy() {

    }
}
