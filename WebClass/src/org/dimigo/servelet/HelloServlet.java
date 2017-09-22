package org.dimigo.servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "첫번째 서블릿", urlPatterns = { "/hello" })
public class HelloServlet extends HttpServlet {
	
private static final long serialVersionUID = 1L;

	public HelloServlet() {

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청데이터 처리
		request.setCharacterEncoding("utf-8");	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		System.out.printf("%s, %s\n", id, name);
		
		//출력데이터 Content Type 설정
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Hello</h1>");
		out.println("<h1>안녕</h1>");
		out.println("<h1>"+id+"</h1>");
		out.println("<h1>"+name+"</h1>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost() 호출됨");
		doGet(request, response);
		
	
	}
	
	@Override
		public void init() throws ServletException {
			System.out.println("ini 호출");
		}
	@Override
		protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
			System.out.println("service 호출");
			super.service(arg0, arg1);
		}
	@Override
		public void destroy() {
			System.out.println("destroy 호출");
		}
}
