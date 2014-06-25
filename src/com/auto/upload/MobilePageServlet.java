package com.auto.upload;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.auto.sns.post.service.SnsPostServiceFactory;
import com.system.util.BeanUtil;

/**
 * 接收移动端传递的微博主键
 * 查询微博信息
 * 跳转移动端使用的画面 不需要登录
 * @author acute
 *
 */
public class MobilePageServlet extends HttpServlet{
	private static Logger logger = Logger.getLogger(MobilePageServlet.class);
	private static final long serialVersionUID = 2700782859222431212L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException	{
		doPost(request, response);
	}

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String postGuid = request.getParameter("postGuid");
			Map<String,Object> postInfoMap = new HashMap<String, Object>();
			if(BeanUtil.isNotBlank(postGuid)){
				Map<String,Object> param = new HashMap<String, Object>();
				param.put("postGuid", postGuid);
				@SuppressWarnings("rawtypes")
				List<Map> list = SnsPostServiceFactory.snsPostInfoService.listPost(param);
				if(!list.isEmpty()){
					postInfoMap = list.get(0);
					System.out.println("postInfoMap................"+postInfoMap.toString());
				}
				
			}else{
				logger.debug("移动端微博详细画面(MobilePageServlet)：微博主键(postGuid)为空");
			}
			
			request.setAttribute("postInfoMap", postInfoMap);
			String url = "/AUTO/SNS/mobilePage.jsp";
//			response.sendRedirect(url);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(url); 
			dispatcher .forward(request, response); 
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.debug("移动端微博详细画面(MobilePageServlet)："+e);
		}
	}
	
	public void destroy() {
		super.destroy();
	}

}
