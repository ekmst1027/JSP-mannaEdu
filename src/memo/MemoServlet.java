package memo;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemoServlet
 */
//@WebServlet("/MemoServlet")
public class MemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("memo servlet...");
		
		// DAO 생성
		MemoDAO dao = new MemoDAO();
		
		// 메모 목록을 받아옴
		List<MemoVO> items = dao.listMemo();
		
		// 저장
		request.setAttribute("list", items);
		
		// 페이지 이동
		RequestDispatcher rd = 
				request.getRequestDispatcher("/memo/memo_list.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
