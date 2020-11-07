package myclass;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Test.user;
import board.BoardDBBean;
import board.BoardDataBean;

public class MyclassBean {
	 private static MyclassBean instance = new MyclassBean();

	    public static MyclassBean getInstance() {
	        return instance;
	    }
	    
	    private MyclassBean() {}
	    

	    private Connection getConnection() throws Exception {
	    	Connection conn=null;
	    	PreparedStatement pstmt=null;
	    	
	    	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	    	String jdbc_url  = "jdbc:mysql://localhost:3306/bdbjsp?characterEncoding=UTF-8&serverTimezone=UTC";
	    	
	    	
	    		try {
	    			Class.forName(jdbc_driver);
	    			conn=DriverManager.getConnection(jdbc_url,"root","1234");
	    			
	    		} catch (Exception e) {
	    			// TODO Auto-generated catch block
	    			e.printStackTrace();
	    		}
	    		
	    	 
	        return conn;
	    }
	 
	    //
	    public void insertMyclass(Myclass myclass) throws Exception {

	        Connection conn = null;
	        PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				
				if(myclass.getLike_yn()==null) {
					myclass.setLike_yn("N");
				}
	            conn = getConnection();
				String sql="insert into myclass(id,class_id,like_yn,entry_yn,reg_date, link) values(?,?,?,?, NOW(),?)";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1,myclass.getId());
				pstmt.setString(2,myclass.getClass_id());
				pstmt.setString(3,myclass.getLike_yn());
				pstmt.setString(4,myclass.getEntry_yn());
				pstmt.setString(5,"/assets/css/images/"+myclass.getClass_id()+".jpg");
				pstmt.executeUpdate();
				
		    } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
				if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	             if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
	    }
	    
	    //좋아요 수정
	    public boolean updateMyclass(Myclass myclass){
			
			Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs = null;
		    
			boolean b = true;
			try {
				conn = getConnection();
				String sql = "update myclass set like_yn =? where id=? and class_id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, myclass.getLike_yn());
				pstmt.setString(2, myclass.getId());
				pstmt.setString(3, myclass.getClass_id());
				pstmt.executeUpdate();
			} catch (Exception e) {
				
			} finally {
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (Exception e2) {

				}
			}
			return b;
		}
	    
		//
	    public ArrayList<Myclass> getMyclass(Myclass myclass) throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;
	
	        ArrayList<Myclass> classList=new ArrayList<>();

	        String sql="";
	        
	        try {
	            	conn = getConnection();
	            	
	            	if(myclass.getClass_id()!=null) {
		                sql="select * from myclass where id= ? and class_id=?";	
		                pstmt=conn.prepareStatement(sql);
		                pstmt.setString(1, myclass.getId());
		                pstmt.setString(2, myclass.getClass_id());
	            	}else if("Y".equals(myclass.getLike_yn())){
		                sql="select * from myclass where id= ? and like_yn='Y' ";	
		                pstmt=conn.prepareStatement(sql);
		                pstmt.setString(1, myclass.getId());		                
	            	}else if("Y".equals(myclass.getEntry_yn())){
		                sql="select * from myclass where id= ? and entry_yn='Y' ";	
		                pstmt=conn.prepareStatement(sql);
		                pstmt.setString(1, myclass.getId());
	            	}
	            	rs = pstmt.executeQuery();

	                while(rs.next()){
						myclass = new Myclass();
						myclass.setId(rs.getString("id"));
						myclass.setClass_id(rs.getString("class_id"));
						myclass.setLike_yn(rs.getString("like_yn"));
						myclass.setReg_date(rs.getTimestamp("reg_date"));
						myclass.setEntry_yn(rs.getString("entry_yn"));
						myclass.setLink(rs.getString("link"));
						classList.add(myclass);
					}
		            
	        }catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
			return classList;
	    }
	 
}
