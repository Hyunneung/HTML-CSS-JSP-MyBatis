package ex1_db_dept;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;

@WebServlet("/dept_select3")
public class Ex3_DeptSelect_Servlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
								throws ServletException, IOException{
		response.setCharacterEncoding("UTF-8");
		
		DAO dao= new DAO();
		int deptno = Integer.parseInt(request.getParameter("deptno"));
		JsonArray array = dao.search(deptno); 
		
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print(array);
	}
}
