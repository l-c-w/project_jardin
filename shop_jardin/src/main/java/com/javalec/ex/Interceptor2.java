package com.javalec.ex;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class Interceptor2 extends HandlerInterceptorAdapter {

	 // preHandle() : 컨트롤러보다 먼저 수행되는 메서드
	
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
    	
    	// session 객체를 가져옴
        HttpSession session = request.getSession();
        
        // login처리를 담당하는 사용자 정보를 담고 있는 객체를 가져옴
        
        Object obj = session.getAttribute("session_mem");
        
        if(obj != null) {
        	
        String s_n = (String) obj;
        
        session.setAttribute("s_n", s_n);    
        
        } else {
        	
        	response.setContentType("text/html; charset=UTF-8");
    		PrintWriter out = response.getWriter();
    		out.print("<script>");
    		out.print("alert('로그인 해주세요.');");
    		out.print("location.href = '../member/login';");
    		out.print("</script>");
    		out.flush();
        	return false;
        	
        }
        
        // session.setAttribute("session_mem", s_n);     
        
        // preHandle의return은 컨트롤러 요청 uri로 가도 되냐 안되냐를 허가하는 의미임
        // 따라서 true로하면 컨트롤러 uri로 가게 됨. 
        
        
        return true;
        
    }
 
    
    
    // 컨트롤러가 수행되고 화면이 보여지기 직전에 수행되는 메서드
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
        // TODO Auto-generated method stub
        super.postHandle(request, response, handler, modelAndView);
    }

	

}
