package com.oracle.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer
{
	@Override
	protected Class<?>[] getRootConfigClasses()
	{
		// TODO Auto-generated constructor stub
		return new Class[]{WebConfig.class};
	}
	
	@Override
	protected Class<?>[] getServletConfigClasses()
	{
		// TODO Auto-generated constructor stub
		return new Class[]{DBConfiguration.class};
	}
	
	@Override
	protected String[] getServletMappings()
	{
		// TODO Auto-generated constructor stub
		return new String[]{"/"}; //any requests, forward the requests to DispatcherServlet
	}
	

}
