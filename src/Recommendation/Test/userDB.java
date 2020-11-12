package Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class userDB {
	private static userDB instance =new userDB();
	private Connection conn; // connection:db�뿉�젒洹쇳븯寃� �빐二쇰뒗 媛앹껜
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Statement ds; 

	
	public static userDB getInstance() {
		return instance;
	}
	

	 private Connection getConnection() throws Exception {
	    	Connection conn=null;
	    	PreparedStatement pstmt=null;
	    	
	    	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	    	String jdbc_url  = "jdbc:mysql://localhost:3306/qwwa79?characterEncoding=UTF-8&serverTimezone=UTC";
	    	
	    	
	    		try {
	    			Class.forName(jdbc_driver);
	    			conn=DriverManager.getConnection(jdbc_url,"qwwa79","kimju853!");
	    			
    		} catch (Exception e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
    		
    	 
        return conn;
    }
	
	//濡쒓렇�씤硫붿냼�뱶
	public int userCheck(String id, String passwd) {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT passwd FROM user WHERE id = ?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
		
			if (rs.next()) {
				if (rs.getString(1).equals(passwd)) {
					return 1; //�꽦怨�
					
				} else
					return 0; //鍮꾨�踰덊샇 遺덉씪移�
			}
			return -1; // �븘�씠�뵒 �끂
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; 
	}
	//�븘�씠�뵒 以묐났 �솗�씤
	public boolean idCheck(String id) {
		boolean b=false;
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM user WHERE id = ?";

	        conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				b=true;
			}	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return b;
}
	//�쉶�썝�닔�젙-�쉶�썝�젙蹂� 媛��졇�삤湲�
	public user getData(String id){

		user use = null;
		   Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;

	        try {
	            conn = getConnection();
	            pstmt = conn.prepareStatement("select * from user where id=?");
	            pstmt.setString(1,id);
	            rs = pstmt.executeQuery();

				if(rs.next()){
					use = new user();
					use.setId(rs.getString("id"));
					use.setPasswd(rs.getString("passwd"));
					use.setName(rs.getString("name"));
					use.setEmail(rs.getString("email"));
					use.setAddress(rs.getString("address"));
					use.setPhone(rs.getString("phone"));
					use.setBirth(rs.getString("birth"));
					use.setHobby(rs.getString("hobby"));
					use.setReg_date(rs.getTimestamp("reg_date"));
					
				}
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }

		return use;
	}
	
	//�쉶�썝�젙蹂� �닔�젙�븯湲� -李먯닔�젙
		public boolean modifyData(user bean){
			
			Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs = null;
		    
			boolean b = true;
			try {
				conn = getConnection();
				String sql = "update user set passwd=?,name=?, email=?,address=?, phone=?,birth=? where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bean.getPasswd());
				pstmt.setString(2, bean.getName());
				pstmt.setString(3, bean.getEmail());
				pstmt.setString(4, bean.getAddress());
				pstmt.setString(5, bean.getPhone());
				pstmt.setString(6, bean.getBirth());
				pstmt.setString(7, bean.getHobby());
				pstmt.setString(8, bean.getId());
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
		
		//�쉶�썝 �깉�눜 - 鍮꾨�踰덊샇 �솗�씤

		public boolean deleteConfirm(String id, String passwd){

			boolean b = false;

			try {
				conn = getConnection();
				String sql = "select id,passwd,name,email,address,phone,birth,hobby from user where id = ? and passwd = ?";

				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, id);

				pstmt.setString(2, passwd);

				rs = pstmt.executeQuery();

				if(rs.next()) b = true;

				

			} catch (Exception e) {

				System.out.println("deleteConfirm err : " + e);

			} finally {

				try {

					if(rs!=null)rs.close();

					if(pstmt!=null)pstmt.close();

					if(conn!=null)conn.close();

				} catch (Exception e2) {

					// TODO: handle exception
				}
			}
			return b;
		}

		//�쉶�썝 �깉�눜 - �깉�눜�븯湲�
		public boolean deleteData(String id){
			 Connection conn = null;
		     PreparedStatement pstmt = null;
		     ResultSet rs= null;
			boolean b= false;
			try {
				String sql = "delete from user where id = ?";
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				int re = pstmt.executeUpdate();
				if(re>0) b = true;

			} catch (Exception e) {
				
			} finally {
				try {
					if(rs!=null)rs.close();
					if(pstmt!=null)pstmt.close();
					if(conn!=null)conn.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
			return b;
		}
		

		///愿�由ъ옄�럹�씠吏� �쉶�썝 紐⑸줉 /////
		public ArrayList<user> getMemberAll(int start, int end,String keyField,String keyword) throws Exception {
			 Connection conn = null;
		     PreparedStatement pstmt = null;
		     ResultSet rs = null;
		     ArrayList<user> memberList=new ArrayList<>();

		     String sql="";
		        
		        try {
		            conn = getConnection();
		            if(!"".equals(keyField) ){
		            	sql ="select * from user where "+keyField+" like ?  order by reg_date desc limit ?,?"; 
			            pstmt=conn.prepareStatement(sql);
			            pstmt.setString(1,"%"+keyword+"%");
			            pstmt.setInt(2, start-1);
						pstmt.setInt(3, end);
		            
		            }else{
		                sql="select * from user order by reg_date desc limit ?,? ";
		                pstmt=conn.prepareStatement(sql);
		                pstmt.setInt(1, start-1);
		    		    pstmt.setInt(2, end);
		            }
			            rs = pstmt.executeQuery();
						while(rs.next()){
							user user= new user();
							user.setId(rs.getString("id"));
							user.setName(rs.getString("name"));
							user.setPhone(rs.getString("phone"));
							user.setEmail(rs.getString("email"));
							user.setAddress(rs.getString("address"));
							user.setReg_date(rs.getTimestamp("reg_date"));
			                memberList.add(user);
					
						}
			        } catch(Exception ex) {
			            ex.printStackTrace();
			        } finally {
			            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
			        }

				return memberList;
			}

//�쉶�썝紐⑸줉 �닔
		public int getUserListCount() throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;

	        int x=0;

	        try {
	            conn = getConnection();
	            
	            pstmt = conn.prepareStatement("select count(*) from user ");
	            rs = pstmt.executeQuery();

	            if (rs.next()) {
	               x= rs.getInt(1);
				}
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
			return x;
	    }

					
		}
