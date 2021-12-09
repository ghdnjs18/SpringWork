package co.won.prj.comm;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// command의 종류에 따라 상속해서 정보전달에 사용하기 위한 인터페이스 객체
// service부분을 인터페이스로 만들고 사용시에는 Impl로 사용하는것과 비슷
public interface Command { 
	public String run(HttpServletRequest request, HttpServletResponse response);
}
