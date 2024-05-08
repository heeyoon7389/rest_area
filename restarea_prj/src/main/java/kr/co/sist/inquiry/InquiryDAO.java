package kr.co.sist.inquiry;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.sist.dao.DbConnection;



/**
 * 문의
 */
public class InquiryDAO {

	private static InquiryDAO iDAO;
	
	private InquiryDAO() {
	}
	
	public static InquiryDAO getInstance() {
		if(iDAO == null) {
			iDAO=new InquiryDAO();
		}//end if
		return iDAO;
	}//getInstance
	
	
	public void insertInquiry( InquiryaddVO iaVO) throws SQLException{
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		DbConnection db=DbConnection.getInstance();
		
		try {
		//1. JNDI사용객체 생성
		//2. DBCP에서 DataSource 얻기
		//3. DataSource에서 Connection얻기
			con=db.getConn("jdbc/dbcp");
		//4. 쿼리문 생성객체 얻기
			StringBuilder insertInquiry=new StringBuilder();
			insertInquiry
			.append("insert into inquiry")
			.append("(memid,title,contents,secret_flag)")
			.append("values(?,?,?,?)");
			
			pstmt=con.prepareStatement(insertInquiry.toString());
		//5. 바인드변수에 값 설정
			pstmt.setString(1, iaVO.getMemid());
			pstmt.setString(2, iaVO.getTitle());
			pstmt.setClob(3, iaVO.getContents());
			pstmt.setLong(4, iaVO.getSecret_flag());
			
			
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeUpdate();
		}finally {
		//7. 연결끊기
			db.closeCon(null, pstmt, con);
		}//end finally
		
	}//insertInquiry
	
	
	/**
	 * 총 레코드의 수
	 * @param sVO
	 * @return
	 * @throws SQLException
	 */
	public int selectTotalCount(SearchVO sVO)throws SQLException{
		int totalCnt=0;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DbConnection db=DbConnection.getInstance();
		
		try {
		//1. JNDI 사용객체 생성
		//2. DataSource 얻기
		//3. Connection 얻기
			con=db.getConn("jdbc/dbcp");
		//4. 쿼리문 생성객체 얻기(Dynamic Query)
			StringBuilder selectCnt=new StringBuilder();
			selectCnt.append("select count(*) cnt from inquiry");
			
			pstmt=con.prepareStatement(selectCnt.toString());
		//5. 바인드변수에 값 설정
		//6. 쿼리문 수행 후 결과얻기
			rs=pstmt.executeQuery();
			if(rs.next()) {
				totalCnt=rs.getInt("cnt");
			}//end if
		}finally {
		//7. 연결 끊기
			db.closeCon(rs, pstmt, con);
		}//end finally
			
		return totalCnt;
	}//totalCount
	
	public List<InquiryVO> selectallInquiry( SearchVO sVO)throws SQLException{
		List<InquiryVO> list=new ArrayList<InquiryVO>();
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DbConnection db=DbConnection.getInstance();
		
		try {
		//1. JNDI 사용객체 생성
		//2. DataSource 얻기
		//3. Connection 얻기
			con=db.getConn("jdbc/dbcp");
		//4. 쿼리문 생성객체 얻기(Dynamic Query)
			StringBuilder selectInquiry=new StringBuilder();
			selectInquiry
			.append("   select IQUIRY_NUM, TITLE, MEM_ID, INPUT_DATE, CNT, rnum   ")
			.append("   from  (select INQUIRY_NUM, TITLE, MEM_ID, INPUT_DATE, CNT,  ")
			.append("            row_number() over(order by input_date desc) rnum     ")
			.append("            from  inquiry)   ")
			.append("   where rnum between ? and ?   ");
			
			pstmt=con.prepareStatement(selectInquiry.toString());
			
		//5. 바인드변수에 값 설정
			pstmt.setInt(1, sVO.getStartNum());
			pstmt.setInt(2, sVO.getEndNum());
		//6. 쿼리문 수행 후 결과얻기
			
			rs=pstmt.executeQuery();
			
			InquiryVO iVO=null;
			while(rs.next()) {
				iVO=new InquiryVO(rs.getString("inquirynum"), rs.getInt("cnt"),
						rs.getString("memid"), rs.getString("title"), null,
						rs.getDate("input_date"));
				
				list.add(iVO);
			}//end while
			
		}finally {
		//7. 연결 끊기
			db.closeCon(rs, pstmt, con);
		}//end finally
		return list;
	}//selectallInquiry
	
	public InquirydetailVO selectoneInquiry( String inquirynum)throws SQLException{

		InquirydetailVO idVO = null;
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		DbConnection db=DbConnection.getInstance();
		
		try { 
		//1. JNDI사용객체 생성
		//2. DBCP에서 DataSource 얻기
		//3. Connection얻기
			con=db.getConn("jdbc/dbcp");
		//4. 쿼리문 생성객체 얻기
			StringBuilder selectoneInquiry=new StringBuilder();	
			selectoneInquiry
			.append("   select title,input_date,memid,contents,answer_date,answer_contents ")
			.append("   from   inquiry              ")
			.append("   where  inquiry_num=?         ");
			
			pstmt=con.prepareStatement(selectoneInquiry.toString());
			
		//5. 바인드 변수에 값 설정
			pstmt.setString(1, inquirynum);
		//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
				
			 if (rs.next()) {
		            idVO = new InquirydetailVO(rs.getString("inquirynum"),		           
		                rs.getString("memid"),rs.getString("title"),
		                rs.getClob("contents"),rs.getDate("input_date"),
		                rs.getString("answer_contents"),rs.getDate("answer_date"));
		        }//end if
			
		}finally {
		//7. 연결 끊기
			db.closeCon(rs, pstmt, con);
		}//end finally
		
		 return idVO;
		
	}//selectoneInquiry
	
}//class
