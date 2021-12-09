package co.won.prj.board.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.won.prj.board.service.BoardService;
import co.won.prj.board.service.BoardVO;
import co.won.prj.board.serviceImpl.BoardServiceImpl;
import co.won.prj.comm.Command;

public class BoardSelect implements Command {

	@Override
	public String run(HttpServletRequest request, HttpServletResponse response) {
		BoardService boardService = new BoardServiceImpl(); // 모델을 사용하기 위해 선언
		BoardVO boardVO = new BoardVO(); // 값을 전달하거나 받기 위해 (한행의 레코드)
		boardVO.setNo(Integer.valueOf(request.getParameter("no")));
		
		request.setAttribute("board", boardService.boardSelect(boardVO));
		return "board/boardSelect";
	}

}
