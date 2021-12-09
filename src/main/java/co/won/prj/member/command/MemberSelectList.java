package co.won.prj.member.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.won.prj.comm.Command;
import co.won.prj.member.service.MemberService;
import co.won.prj.member.service.MemberVO;
import co.won.prj.member.serviceImpl.MemberServiceImpl;

public class MemberSelectList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 회원 전체 목록
		MemberService memberDao = new MemberServiceImpl();
		List<MemberVO> members = memberDao.memberSelectList(); // 전체회원 목록을 가져온다.
		request.setAttribute("members", members); // jsp객체에 전달
		
		// 현업에서는 이런식으로 줄여서 쓴다.
//		MemberService memberDao = new MemberServiceImpl();
//		request.setAttribute("members",  memberDao.memberSelectList()); // jsp객체에 전달
		
		return "member/memberSelectList";
		
		
	}

}
