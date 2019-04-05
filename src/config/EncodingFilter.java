package config;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

// url pattern /* => 모든 url pattern에 적용
// 요청에 앞서 선처리되는 코드
@WebFilter("/*")
public class EncodingFilter implements Filter {
	
	private String charset = "utf-8";
	
	// 웹서버가 종료(shutdown)될 때 호출되는 코드
	public void destroy() {
	}
	
	// 요청에 앞서 선처리되는 코드
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 한글 처리를 위한 인코딩 설정 코드 
		request.setCharacterEncoding(charset);
		chain.doFilter(request, response);
	}

	// 웹서버가 시작(startup)될 때 호출되는 코드
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
