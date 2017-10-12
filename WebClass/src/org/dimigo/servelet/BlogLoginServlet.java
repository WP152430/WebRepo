package org.dimigo.servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**0
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			System.out.println(id+" "+pwd+" "+name);
			
			response.setContentType("application/json;charset=utf-8");
			PrintWriter out = response.getWriter();
			Gson gson = new Gson();
			JsonObject object = new JsonObject();
			
			if("test@naver.com".equals(id)){
				// 세션에 사용자 정보 생성
				HttpSession session = request.getSession();
				session.setAttribute("id", id);
				session.setAttribute("pwd", pwd);
				object.addProperty("msg", "success");
				UserVO user = new UserVO();
				user.setName(name);
				session.setAttribute("user", user);
				
			}else{
				object.addProperty("msg", "error");
			}
			
			String json = gson.toJson(object);	
			out.write(json);
			out.close();
		

	}

}
