package co.yedam.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardCommandCreateForm;
import co.yedam.app.board.BoardCommandSelectList;
import co.yedam.app.boardAjax.AjaxBoardList;
import co.yedam.app.boardAjax.AjaxBoardOne;

/**
 * Servlet implementation class NewFrontController
 */
@WebServlet("*.do") // 모든 로 끝나는 url요청
public class NewFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NewFrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// 해쉬맵 구조를 put메소드를 통해 작업. 초기화되며 stack에 올라감(cont에 url과 실행Class를 정의)
//		cont.put("/index.do", new IndexCommand());// 홈페이지 호출

		// board
		// 등록
		// 수정
		cont.put("/boardCreateForm.do", new BoardCommandCreateForm());
		// 삭제
		// 상세조회
		// 목록
		cont.put("/boardList.do", new BoardCommandSelectList());
		// 수정 폼
		// 등록 폼

		// AJAX
		cont.put("/ajaxBoardList.do", new AjaxBoardList());
		cont.put("/ajaxBoardOne.do", new AjaxBoardOne());
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실행할 class객체를 찾아주는 부분. get메소드로
		// 요청하는 url을 분석하여 실행하는 부분
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		// 로그처리
		System.out.println("path=" + path);
		// 권한체크(로그인체크)

		Command commandImpl = cont.get(path);// 객체를 찾아서
		String page = null;

		response.setContentType("text/html; charset=UTF-8");
		if (commandImpl != null) {
			page = commandImpl.excute(request, response);// 실행
			if (page != null && !page.isEmpty()) {
				if (page.startsWith("redirect:")) {
					String view = page.substring(9);
					response.sendRedirect(view);
				} else if (page.startsWith("ajax:")) {
					response.getWriter().append(page.substring(5));
				} else if (page.startsWith("script:")) {
					response.getWriter().append("<script>").append(page.substring(7)).append("</script>");
				} else {
					request.getRequestDispatcher(page).forward(request, response);
				}
			} else {
				response.getWriter().append("잘못된 요청");
			}
		}
	}
}
