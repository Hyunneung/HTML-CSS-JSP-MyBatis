package myBatis;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Term implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		EmpDAO dao = new EmpDAO();
		Map<String, String> map = new HashMap<>();
		map.put("startday", request.getParameter("startday"));
		map.put("endday", request.getParameter("endday"));
		map.put("deptno", request.getParameter("deptno"));
		List<Emp> list = dao.getTermList(map);
		
		ActionForward forward = new ActionForward();
		request.setAttribute("list", list);
		request.setAttribute("startday", map.get("startday"));
		request.setAttribute("endday", map.get("endday"));
		request.setAttribute("deptno", map.get("deptno"));
		forward.setPath("ex_mybatis/list1.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
