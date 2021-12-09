package co.won.prj.member.service;

import java.util.List;

// model - DAO의 역할
public interface MemberService {
	List<MemberVO> memberSelectList(); // 전체멤버 리스트
	MemberVO memberSelect(MemberVO vo); // 맴버 조회 및 로그인 체크
	int memberInsert(MemberVO vo); // 멤버 입력
	int memberUpdate(MemberVO vo); // 멤버 수정
	int memberDelete(MemberVO vo); // 멤버 삭제
}
