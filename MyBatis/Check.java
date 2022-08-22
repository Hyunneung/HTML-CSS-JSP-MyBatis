package myBatis;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Check implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] deptnos = request.getParameterValues("deptno");
		
		EmpDAO dao = new EmpDAO();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("deptnos", deptnos);
		List<Emp> list = dao.getCheckList(map);
		
		ActionForward forward = new ActionForward();
		request.setAttribute("list", list);
		request.setAttribute("deptnos", map.get("deptnos"));
		forward.setPath("ex_mybatis/list2.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
