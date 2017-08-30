package com.common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
   ----web.xml-------------------------------
    <filter>
  	<description>encode filter</description>
  	<display-name>EncodingFilter</display-name>
  	<filter-name>EncodingFilter</filter-name>
  	<filter-class>common.filter.EncodingFilter</filter-class>
  </filter>
  <filter-mapping>
  	<filter-name>EncodingFIlter</filter-name>
  	<url-pattern>*.jsp</url-pattern>
  </filter-mapping>   
   ------------------------------------------
 * */
@WebFilter("*")
public class EncodingFilter implements Filter {

    public EncodingFilter() {
        // TODO Auto-generated constructor stub
    } 

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, 
			FilterChain chain) throws IOException, ServletException {
		System.out.println("EncodingFilter");
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
