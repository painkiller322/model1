package test;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;

//test class
public class BoardDAOClient {
	public static void main(String[] args) {
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO();
		dto.setPoster("홍길동");
		dto.setSubject("dao test");
		dto.setContents("dato test...");
		dao.insert(dto);
}
}
