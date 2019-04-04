 package ch03;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch03_servlet/forward.do")	// url pattern 지정
public class ForwardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		System.out.println(name);
		System.out.println(color);
		String message = "";
		switch(color) {
		case "blue":
			message = "자기탐구와 내적성장을 상징";
			break;
		case "green":
			message = "기분의 안정과 온화함을 상징";
			break;
		case "red":
			message = "생명을 상징";
			break;
		}
		message += "하는 색입니다.";
		Map<String, Object> map = new HashMap<>();
		map.put("name", name);
		map.put("color", color);
		map.put("message", message);
		request.setAttribute("map", map);
		String page = "/ch03/color.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
