package co.won.prj.board.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.won.prj.board.service.BoardService;
import co.won.prj.board.service.BoardVO;
import co.won.prj.board.serviceImpl.BoardServiceImpl;
import co.won.prj.comm.Command;

public class BoardInsert implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		// 글 저장
		BoardService boardService = new BoardServiceImpl();
		BoardVO vo = new BoardVO();
		vo.setWriter(request.getParameter("writer"));
		vo.setWdate(Date.valueOf(request.getParameter("wdate")));
		vo.setTitle(request.getParameter("title"));
		vo.setSubject(request.getParameter("subject"));
		
		int n = boardService.boardInsert(vo);
		if (n != 0) {
			request.setAttribute("messate", "게시글이 정상 등록되었습니다.");
		} else {
			request.setAttribute("messate", "게시글 등록이 실패하였습니다.");
		}
		
		return "board/boardResult";
	}

}
