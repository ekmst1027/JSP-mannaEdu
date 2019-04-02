package memo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.DB;

public class MemoDAO {
	
	public List<MemoVO> listMemo() {
		List<MemoVO> items = new ArrayList<>();
		Connection conn = null;	// db접속 클래스
		PreparedStatement pstmt = null;	// sql을 실행시키는 클래스
		ResultSet rs = null;	// select 쿼리의 결과셋을 탐색하는 클래스
		
		try {
			conn = DB.dbConn();	// DB에 접속
			String sql = "select * from memo order by idx desc";
			pstmt = conn.prepareStatement(sql);	// sql 실행 객체 생성
			rs = pstmt.executeQuery();	// select 명령어 실행, 결과셋이 넘어옴
			while(rs.next()) {
				MemoVO vo = new MemoVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setWriter(rs.getString("writer"));
				vo.setMemo(rs.getString("memo"));
				vo.setPost_date(rs.getString("post_date"));
				items.add(vo);
			}
			
		} catch(Exception e ) {
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
		
		return items;
		
	} // finish listMemo() method
	
}	// finishi MemoDAO class
