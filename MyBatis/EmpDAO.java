package myBatis;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class EmpDAO {
	private SqlSession getSession() {
		SqlSession session = null;
		Reader reader = null;
		
		try {
			reader = Resources.getResourceAsReader("myBatis/sqlMapConfig.xml");
			SqlSessionFactory sf = new SqlSessionFactoryBuilder().build(reader);
			session = sf.openSession(true);
		} catch(IOException e) {
			e.printStackTrace();
		}
		return session;
	}
	
	public List<Emp> getTermList(Map<String, String> map) {
		List<Emp> list = null;
		SqlSession session = null;
		try {
			session = getSession();
			list = session.selectList("myBatis.Emp.termlist",map);
		} catch(Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return list;
	}

	public List<Emp> getCheckList(Map<String, Object> map) {
		List<Emp> list = null;
		SqlSession session = null;
		try {
			session = getSession();
			list = session.selectList("myBatis.Emp.checklist",map);
		} catch(Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			if(session != null) {
				session.close();
			}
		}
		return list;
	}
}
