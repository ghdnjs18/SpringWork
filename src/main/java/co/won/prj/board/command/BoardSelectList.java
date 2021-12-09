package co.won.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.won.prj.board.service.BoardService;
import co.won.prj.board.serviceImpl.BoardServiceImpl;
import co.won.prj.comm.Command;

public class BoardSelectList implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardService = new BoardServiceImpl();
		request.setAttribute("boards", boardService.boardSelectList());
		return "board/boardSelectList";
	}

}
