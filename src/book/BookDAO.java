package book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import config.DB;

public class BookDAO {
	public ArrayList<BookVO> bookList() {
		ArrayList<BookVO> list = new ArrayList<BookVO>();
		Connection conn = null;	// DB접속 객체
		PreparedStatement pstmt = null;	// SQL실행객체
		ResultSet rs = null;	// 결과셋 처리 객체
		
		try {
			conn = DB.dbConn();
			String sql = "select * from book";
			// SQL 실행객체 생성
			pstmt = conn.prepareStatement(sql);
			// SQL 실행 후 결과셋이 rs에 리턴됨
			rs = pstmt.executeQuery();
			// 결과.next() : 다음 레코드가 있으면 true
			while(rs.next()) {
				BookVO vo = new BookVO();
				// 결과셋.get자료형("컬럼");
				vo.setId(rs.getInt("id"));
				vo.setTitle(rs.getString("title"));
				vo.setAuthor(rs.getString("author"));
				vo.setPrice(rs.getInt("price"));
				vo.setQty(rs.getInt("qty"));
				// ArrayList에 추가
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(pstmt != null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}

}
