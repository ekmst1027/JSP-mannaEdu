package ch02;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.MemberDAO;

// url mapping 처리 코드
@WebServlet("/ch02_servlet/*")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// get 방식으로 호출할 때
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사용자가 요청한 url
		String url = request.getRequestURL().toString();
		// 스트링.indexOf("검색어") : 검색어를 찾은 위치 값, 없으면 -1을 리턴
		// 검색어가 포함되어 있으면
		if(url.indexOf("login.do") != -1) {
			// 폼에서 입력한 값
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			System.out.println(id + ", " + pass);
			MemberDAO dao = new MemberDAO();
			String name = dao.loginCheck(id, pass);
			System.out.println("이름 : " + name);
			String message = "";
			String page = "";
			// 로그인 성공
			if(name != null) {
				message = name + "님 환영합니다.";
				page = "/ch02/login_success.jsp";	// 로그인 성공 페이지
				// session 객체 생성
				HttpSession session = request.getSession();
				session.setAttribute("userid", id);	// 세션에 변수 저장
				session.setAttribute("message", message);
			} else {
				message = "아이디 또는 비밀번호가 일치하지 않습니다.";
				// 로그인 페이지로 되돌아감
				page = "/ch02/login.jsp?message=" + URLEncoder.encode(message, "utf-8");
			}
			response.sendRedirect(request.getContextPath()+page);
		} else if(url.indexOf("logout.do") != -1) {
			// session 객체 만들기
			HttpSession session = request.getSession();
			// session을 초기화시킴
			session.invalidate();
			// 로그인 페이지로 되돌아감
			String message = "로그아웃되었습니다.";
			response.sendRedirect(request.getContextPath() + 
					"/ch02/login.jsp?message=" + URLEncoder.encode(message, "utf-8"));
		}
	}

	// post 방식으로 호출할 때
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
