package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBBean {
	
    private static BoardDBBean instance = new BoardDBBean();
    //.jsp페이지에서 DB연동 빈인 boardDBBean 클래스의 메소드에 접근시 필요
    public static BoardDBBean getInstance() {
        return instance;
    }
    
    private BoardDBBean() {}
    
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
 
    //board테이블에 글을 추가 (insert문) <=writePro.jsp 페이지에서 사용
    public void insertArticle(BoardDataBean article) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
		ResultSet rs = null;

		int num=article.getNum();
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		
		
		String boardType = article.getBoardType(); //free - 자유, qna-QNA , 
		int number=0;
        String sql="";

        try {
            conn = getConnection();

            pstmt = conn.prepareStatement("select max(num) from board");
			rs = pstmt.executeQuery();
			
			if (rs.next())
		      number=rs.getInt(1)+1; // 작성된 글이 있다면 그 글의 넘버에 1을 더한다.
		    else
		      number=1; //작성된 글이 없다면 넘버는 1
		   
		    if (num!=0) {  
		      sql="update board set re_step=re_step+1 ";
		      sql += "where ref= ? and re_step> ?";
              pstmt = conn.prepareStatement(sql);
              pstmt.setInt(1, ref);
			  pstmt.setInt(2, re_step);
			  pstmt.executeUpdate();
			  re_step=re_step+1;
			  re_level=re_level+1;
		     }else{
		  	  ref=number;
			  re_step=0;
			  re_level=0;
		     }	 
            // ������ �ۼ�
			
            sql = "insert into board(writer,email,subject,passwd,reg_date,";
		    sql+="ref,re_step,re_level,content,boardType) values(?,?,?,?,?,?,?,?,?,?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, article.getWriter());
            pstmt.setString(2, article.getEmail());
            pstmt.setString(3, article.getSubject());
            pstmt.setString(4, article.getPasswd());
			pstmt.setTimestamp(5, article.getReg_date());
            pstmt.setInt(6, ref);
            pstmt.setInt(7, re_step);
            pstmt.setInt(8, re_level);
			pstmt.setString(9, article.getContent());
            pstmt.setString(10, article.getBoardType());

            pstmt.executeUpdate();
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
    }
    
    private PreparedStatement setString(int i, Object boardType) {
		// TODO Auto-generated method stub
		return null;
	}

	private Object getBoardType() {
		// TODO Auto-generated method stub
		return null;
	}

	//board테이블에 저장된 전체글의 수를 얻어냄.(select문)<=list.jsp에서 사용.
	public int getArticleCount(String boardType) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int x=0;

        try {
            conn = getConnection();
            
            pstmt = conn.prepareStatement("select count(*) from board  where boardType=?");
            pstmt.setString(1,boardType);
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

	//글의 목록(복수개의 글)을 가져옴 (select문) <=list.jsp에서 사용.
	public List<BoardDataBean> getArticles(int start, int end, String boardType, String keyField, String keyword)
             throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<BoardDataBean> articleList=null;
        
        String sql="";
        
        try {
            conn = getConnection();
            if(!"".equals(keyField) ){
            	sql ="select * from board where "+keyField+" like ? and boardType= ? order by ref desc, re_step asc limit ?,?"; 
	            pstmt=conn.prepareStatement(sql);
	            pstmt.setString(1,"%"+keyword+"%");
	            pstmt.setString(2, boardType);
	            pstmt.setInt(3, start-1);
				pstmt.setInt(4, end);
            
            }else{
                sql="select * from board where boardType= ? order by ref desc, re_step asc limit ?,? ";
                pstmt=conn.prepareStatement(sql);
                pstmt.setString(1, boardType);
                pstmt.setInt(2, start-1);
    		    pstmt.setInt(3, end);
            }
	            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                articleList = new ArrayList<BoardDataBean>(end);
                do{
                  BoardDataBean article= new BoardDataBean();
				  article.setNum(rs.getInt("num"));
				  article.setWriter(rs.getString("writer"));
                  article.setEmail(rs.getString("email"));
                  article.setSubject(rs.getString("subject"));
                  article.setPasswd(rs.getString("passwd"));
			      article.setReg_date(rs.getTimestamp("reg_date"));
				  article.setReadcount(rs.getInt("readcount"));
                  article.setRef(rs.getInt("ref"));
                  article.setRe_step(rs.getInt("re_step"));
				  article.setRe_level(rs.getInt("re_level"));
                  article.setContent(rs.getString("content"));
                  article.setBoardType(rs.getString("boardType"));
			     
				  
                  articleList.add(article);
			    }while(rs.next());
			}
          
        }catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return articleList;
    }
 
	//글의 내용을 보기(1개의 글) (select문)<=content.jsp페이지에서 사용.
	public BoardDataBean getArticle(int num)
            throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardDataBean article=null;
        try {
            conn = getConnection();

            pstmt = conn.prepareStatement(
            	"update board set readcount=readcount+1 where num = ?");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();

            pstmt = conn.prepareStatement("select * from board where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                article = new BoardDataBean();
                article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
                article.setEmail(rs.getString("email"));
                article.setSubject(rs.getString("subject"));
                article.setPasswd(rs.getString("passwd"));
			    article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
                article.setRef(rs.getInt("ref"));
                article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
                article.setContent(rs.getString("content"));
			   
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return article;
    }
	
    /////관리자페이지 게시글 목록전체 가져오기
	public List<BoardDataBean> getAdminArticles(int start, int end, String keyField, String keyword)
            throws Exception {
       Connection conn = null;
       PreparedStatement pstmt = null;
       ResultSet rs = null;
       List<BoardDataBean> adminArticle=null;
       String sql="";
       
       try {
           conn = getConnection();
           if(!"".equals(keyField) ){
           	sql ="select * from board where "+keyField+" like ?  order by ref desc, re_step asc limit ?,?"; 
	            pstmt=conn.prepareStatement(sql);
	            pstmt.setString(1,"%"+keyword+"%");
	            pstmt.setInt(2, start-1);
				pstmt.setInt(3, end);
           
           }else{
               sql="select * from board order by ref desc, re_step asc limit ?,? ";
               pstmt=conn.prepareStatement(sql);
               pstmt.setInt(1, start-1);
   		    pstmt.setInt(2, end);
           }
	            rs = pstmt.executeQuery();

           if (rs.next()) {
        	   adminArticle = new ArrayList<BoardDataBean>(end);
               do{
                 BoardDataBean admin= new BoardDataBean();
                 admin.setNum(rs.getInt("num"));
                 admin.setWriter(rs.getString("writer"));
                 admin.setEmail(rs.getString("email"));
                 admin.setSubject(rs.getString("subject"));
                 admin.setPasswd(rs.getString("passwd"));
                 admin.setReg_date(rs.getTimestamp("reg_date"));
                 admin.setReadcount(rs.getInt("readcount"));
                 admin.setRef(rs.getInt("ref"));
                 admin.setRe_step(rs.getInt("re_step"));
                 admin.setRe_level(rs.getInt("re_level"));
                 admin.setContent(rs.getString("content"));
                 admin.setBoardType(rs.getString("boardType"));
			     
				  
                 adminArticle.add(admin);
			    }while(rs.next());
			}
       } catch(Exception ex) {
           ex.printStackTrace();
       } finally {
           if (rs != null) try { rs.close(); } catch(SQLException ex) {}
           if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
           if (conn != null) try { conn.close(); } catch(SQLException ex) {}
       }
		return adminArticle;
   }
	
	
	////admin 게시글 전체글수 
		public int getAdminListCount() throws Exception {
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;

	        int x=0;

	        try {
	            conn = getConnection();
	            
	            pstmt = conn.prepareStatement("select count(*) from board ");
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
	 //글 수정폼에서 사용할 글의 내용(1개의 글)(select문)<=updateForm.jsp에서 사용
    public BoardDataBean updateGetArticle(int num)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardDataBean article=null;
        try {
            conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select * from board where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                article = new BoardDataBean();
                article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
                article.setEmail(rs.getString("email"));
                article.setSubject(rs.getString("subject"));
                article.setPasswd(rs.getString("passwd"));
			    article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
                article.setRef(rs.getInt("ref"));
                article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
                article.setContent(rs.getString("content"));
			     
			}
        } catch(Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
        }
		return article;
    }

    //글 수정폼에서 사용할 글의 내용(1개의 글)(update문)<=updatePro.jsp에서 사용
    public int updateArticle(BoardDataBean article)
          throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;

        String dbpasswd="";
        String sql="";
		int x=-1;
        try {
            conn = getConnection();
            
			pstmt = conn.prepareStatement(
            	"select passwd from board where num = ?");
            pstmt.setInt(1, article.getNum());
            rs = pstmt.executeQuery();
            
			if(rs.next()){
			  dbpasswd= rs.getString("passwd"); 
			  if(dbpasswd.equals(article.getPasswd())){//db패스워드와 게시판안의 패스워드를 비교
                sql="update board set writer=?,email=?,subject=?,passwd=?"; //같으면 업데이트
			    sql+=",content=? where num=?";
                pstmt = conn.prepareStatement(sql);

                pstmt.setString(1, article.getWriter());
                pstmt.setString(2, article.getEmail());
                pstmt.setString(3, article.getSubject());
                pstmt.setString(4, article.getPasswd());
                pstmt.setString(5, article.getContent());
			    pstmt.setInt(6, article.getNum());
                pstmt.executeUpdate();
				x= 1; //제대로 수행은 1리턴
			  }else{
				x= 0; //비밀번호 다르면 0 리턴
			  }
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
    
    //글 삭제처리시 사용(delete문)<=deletePro.jsp페이지에서 사용.
    public int deleteArticle(int num, String passwd)
        throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs= null;
        String dbpasswd="";
        int x=-1;
        try {
			conn = getConnection();

            pstmt = conn.prepareStatement(
            	"select passwd from board where num = ?");
            pstmt.setInt(1, num);
            rs = pstmt.executeQuery();
            
			if(rs.next()){
				dbpasswd= rs.getString("passwd"); 
				if(dbpasswd.equals(passwd)){
					pstmt = conn.prepareStatement(
            	      "delete from board where num=?");
                    pstmt.setInt(1, num);
                    pstmt.executeUpdate();
					x= 1; //글삭제 성공
				}else
					x= 0; //비밀번호 틀림
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