package ch01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuguServlet
 */
//@WebServlet("/GuguServlet")
public class GuguServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// get 방식으로 호출할 때
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dan = Integer.parseInt(request.getParameter("dan"));
		System.out.println("구구단 : " + dan);
		
		// 결과값을 스트링에 저장
		StringBuilder sb = new StringBuilder();
		for(int i = 1; i <= 9; i++) {
			sb.append(dan + "x" + i + "=" + dan*i + "<br>");
		}
		
		// request.setAttribute() 이용해서 결과값을 저장
		request.setAttribute("result", sb.toString());
		
		// WebContent/ch01/gugu_result.jsp로 넘김
		RequestDispatcher rd = 
				request.getRequestDispatcher("/ch01/gugu_result.jsp");
		rd.forward(request, response);
	}
	
	// post 방식으로 호출할 때
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
