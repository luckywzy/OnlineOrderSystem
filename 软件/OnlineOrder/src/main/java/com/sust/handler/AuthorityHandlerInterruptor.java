package com.sust.handler;

import com.sust.utils.CookieUtils;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 做权限校验拦截器
 */

public class AuthorityHandlerInterruptor implements HandlerInterceptor {
    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(AuthorityHandlerInterruptor.class);
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        StringBuffer requestURL = request.getRequestURL();

        String userId = CookieUtils.getCookieValue(request, "userId");
        logger.debug("URL:{}",requestURL);
        if(requestURL.toString().contains("/admin/") && request.getSession().getAttribute("admin") == null){
            logger.debug("admin -- URL:{}",requestURL);
            response.sendRedirect(request.getContextPath() + "/admin/admin-login.html");
            return false;
        }else if(userId == null){
            logger.debug("user -- URL:{}",requestURL);
            response.sendRedirect(request.getContextPath() + "/login.html");

            return false;
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
