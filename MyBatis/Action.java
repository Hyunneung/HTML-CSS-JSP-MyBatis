package myBatis;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

/*
 	Ư�� ����Ͻ� ��û���� �����ϰ� ��� ���� ActionForward Ÿ������ ��ȯ�ϴ� �޼��尡 ���ǵǾ� �ֽ��ϴ�.
  	Action : �������̽���
  	ActionForward : ��ȯ��
*/
public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;
}
