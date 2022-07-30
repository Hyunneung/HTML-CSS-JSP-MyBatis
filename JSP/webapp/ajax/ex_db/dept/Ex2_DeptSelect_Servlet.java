package ex1_db_dept;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;

@WebServlet("/dept_select2")
public class Ex2_DeptSelect_Servlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
								throws ServletException, IOException{
		response.setCharacterEncoding("UTF-8");
		
		DAO dao= new DAO();
		
		JsonArray array = dao.selectAll_bean(); 
		
		PrintWriter out = response.getWriter();
		out.print(array);
	}
}
