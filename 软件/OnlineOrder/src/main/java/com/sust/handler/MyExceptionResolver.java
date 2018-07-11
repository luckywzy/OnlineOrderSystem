package com.sust.handler;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class MyExceptionResolver implements HandlerExceptionResolver {


    @Override
    public ModelAndView
    resolveException(HttpServletRequest request,
                     HttpServletResponse response, Object handler, Exception ex) {

        // 视图显示专门的错误页
        ModelAndView modelAndView = new ModelAndView("front/errorPage");
        return modelAndView;
    }
}
