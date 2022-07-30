package ex1_db_dept;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class DAO {
	
	private DataSource ds;
	
	public DAO() {
		try {
			Context init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
		} catch(Exception e) {
			System.out.println("DB 연결 실패\n" + e.getMessage());
		}
	}
	
	
	// selectAll
	public JsonArray selectAll() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JsonArray array = null;
		
		try {
			con = ds.getConnection();
			
			String sql = "select * from dept";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			int i = 0;
			while(rs.next()) {
				if(i++ == 0) {
					array = new JsonArray();
				}
				
				JsonObject obj = new JsonObject();
				obj.addProperty("deptno", rs.getInt(1));
				obj.addProperty("dname", rs.getString(2));
				obj.addProperty("loc", rs.getString(3));
				
				array.add(obj);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				} 
			} catch(SQLException se) {
				se.printStackTrace();
			}
			try {
				if(pstmt != null) {
					pstmt.close();
				} 
			} catch(SQLException se) {
				se.printStackTrace();
			}
			try {
				if(con != null) {
					con.close();
				} 
			} catch(SQLException se) {
				se.printStackTrace();
			}
		} // finally end
		return array;
	} // selectAll() end
	
	
	//selectAll_bean()
	public JsonArray selectAll_bean() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JsonArray array = new JsonArray();
		
		try {
			con = ds.getConnection();
			
			String sql = "select * from dept";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Dept dept = new Dept();
				dept.setDeptno(rs.getInt(1));
				dept.setDname(rs.getString(2));
				dept.setLoc(rs.getString(3));
				
				JsonElement je = new Gson().toJsonTree(dept); // dept를 JsonElement로 변환
				array.add(je);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				} 
			} catch(SQLException se) {
				se.printStackTrace();
			}
			try {
				if(pstmt != null) {
					pstmt.close();
				} 
			} catch(SQLException se) {
				se.printStackTrace();
			}
			try {
				if(con != null) {
					con.close();
				} 
			} catch(SQLException se) {
				se.printStackTrace();
			}
		} // finally end
		return array;
	} // selectAll_bean() end
	
	
	// search() - 검색 select
	public JsonArray search(int deptno) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JsonArray array = new JsonArray();
		
		try {
			con = ds.getConnection();
			
			String sql = "select * from dept where deptno=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, deptno);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Dept dept = new Dept();
				dept.setDeptno(rs.getInt(1));
				dept.setDname(rs.getString(2));
				dept.setLoc(rs.getString(3));
				
				JsonElement je = new Gson().toJsonTree(dept); // dept를 JsonElement로 변환
				array.add(je);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				} 
			} catch(SQLException se) {
				se.printStackTrace();
			}
			try {
				if(pstmt != null) {
					pstmt.close();
				} 
			} catch(SQLException se) {
				se.printStackTrace();
			}
			try {
				if(con != null) {
					con.close();
				} 
			} catch(SQLException se) {
				se.printStackTrace();
			}
		} // finally end
		return array;
	} // search() end
	
	
}
