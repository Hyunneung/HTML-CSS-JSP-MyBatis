package ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet ("/ex/Login_ok")
public class LoginTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public LoginTest2 () {
		super();
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
									throws ServletException, IOException {
		// 한글처리
		request.setCharacterEncoding("euc-kr");
		
		// 응답의 컨텐츠 형식
		response.setContentType("text/html;charset=euc-kr");
		
		// 출력스트림
		PrintWriter out = response.getWriter();
		
		// request에 id, passwd 속성 저장
		String id = request.getParameter("id");
		String pw = request.getParameter("passwd");
		
		// id, pw이 java라고 가정
		if(id.equals("java") && pw.equals("java")) { // id, pw 일치할 때
			// 세션 생성
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			
			// redirect 방식 전송
			response.sendRedirect("ex_loginSuccess.jsp");
		} else if (id.equals("java")) {  // id만 일치할 때 (pw 틀릴 때)
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않습니다.')");
			out.println("history.back()"); // 바로 전 페이지로 이동
			out.println("</script>");
			out.close();
		} else {  // pw만 일치할 때 (id 틀릴 때)
			out.println("<script>");
			out.println("alert('아이디가 일치하지 않습니다.')");
			out.println("history.back()"); // 바로 전 페이지로 이동
			out.println("</script>");
			out.close();
		}
	}
}
