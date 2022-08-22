package myBatis;

/*
	ActionForward Ŭ������ Action �������̽����� ����� �����ϰ� ������� ������ �̵��� �� ���Ǵ� Ŭ�����Դϴ�.
	�� Ŭ������ Redirect ���� ���� �������� �������� ��ġ�� ������ �ֽ��ϴ�.
	�� ������ FrontController���� ActionForward Ŭ���� Ÿ������ ��ȯ���� ��������
	�� ���� Ȯ���Ͽ� �ش��ϴ� ��û �������� �̵��մϴ�.
*/
public class ActionForward {
	private boolean redirect = false;
	private String path = null;

	
	// getter, setter
	// property redirect�� is �޼ҵ�
	public boolean isRedirect() { 
		// ������Ƽ Ÿ���� boolean�� ��� get ��� is�� �տ� ���� �� �ֽ��ϴ�.
		return redirect;
	}
	// property redirect�� set �޼ҵ�
	public void setRedirect(boolean b) {
		redirect = b;
	}
	// property path�� is �޼ҵ�
	public String getPath() {
		return path;
	}
	// property path�� set �޼ҵ�
	public void setPath(String string) {
		path = string;
	}
}
