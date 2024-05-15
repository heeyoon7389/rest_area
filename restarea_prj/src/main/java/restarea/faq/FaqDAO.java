package restarea.faq;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import kr.co.sist.dao.DbConnection;





/**
 * 공지사항
 */
public class FaqDAO {

	private static FaqDAO fDAO;
	
	
	
	private FaqDAO() {
		
	}
	
	public static FaqDAO getInstance() {
		if(fDAO == null) {
			fDAO=new FaqDAO();
		}//end if
		return fDAO;
	}//getInstance
	
	

	/*
	public List<FaqVO> selectallFaq( SearchVO sVO)throws SQLException{
		List<FaqVO> list=new ArrayList<FaqVO>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DbConnection db=DbConnection.getInstance();
		
		try {
		//1. JNDI 사용객체 생성
		//2. DataSource 얻기
		//3. Connection 얻기
			con=db.getConn("jdbc/restarea");
		//4. 쿼리문 생성객체 얻기(Dynamic Query)
			StringBuilder selectFaq=new StringBuilder();
			selectFaq
			.append("   select faq_num, q, a, rnum   ")
			.append("   from  (select faq_num, q, a,  ")
			.append("            row_number() over(order by input_date desc) rnum     ")
			.append("            from  faq   ");
			
			if( sVO.getKeyword() != null && !"".equals(sVO.getKeyword() )) {
				
				selectFaq
				.append(" where instr(").append(columnNames[Integer.parseInt(sVO.getField())])
				.append(",? ) > 0 ");
			
			}//end if
			
			selectFaq.append(" )   where rnum between ? and ?   ");
			
			pstmt=con.prepareStatement(selectFaq.toString());
			
		//5. 바인드변수에 값 설정
			int bindIndex=0;
			if( sVO.getKeyword() != null && !"".equals(sVO.getKeyword() )) {
				pstmt.setString(++bindIndex, sVO.getKeyword());
			}//end if

			pstmt.setInt(++bindIndex, sVO.getStartNum());
			pstmt.setInt(++bindIndex, sVO.getEndNum());
			
		//6. 쿼리문 수행 후 결과얻기
			
			rs=pstmt.executeQuery();
			
			FaqVO fVO=null;
			while(rs.next()) {
				fVO=new FaqVO(rs.getString("faq_num"), rs.getString("q"),
						rs.getString("a"));
				
				list.add(fVO);
			}//end while
			
		}finally {
		//7. 연결 끊기
			db.closeCon(rs, pstmt, con);
		}//end finally
		return list;
	}//selectallFaq
	*/
	
	public FaqVO selectallFaq( String faq_num)throws SQLException{

		FaqVO fVO = null;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DbConnection db=DbConnection.getInstance();
		
		try { 
		//1. JNDI사용객체 생성
		//2. DBCP에서 DataSource 얻기
		//3. Connection얻기
			con=db.getConn("jdbc/restarea");
		//4. 쿼리문 생성객체 얻기
			StringBuilder selectallFaq=new StringBuilder();	
			selectallFaq
			.append("   select q, a ")
			.append("   from   faq              ")
			.append("   where  faq_num=?         ");
			
			pstmt=con.prepareStatement(selectallFaq.toString());
			
		//5. 바인드 변수에 값 설정
			pstmt.setString(1, faq_num);
		//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
				
			 if (rs.next()) {
				 fVO = new FaqVO(faq_num,		           
		                rs.getString("q"),rs.getString("a"));
		        }//end if
			
		}finally {
		//7. 연결 끊기
			db.closeCon(rs, pstmt, con);
		}//end finally
		
		 return fVO;
		
	}//selectallFaq
	
}//class
