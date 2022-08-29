package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import service.BoardService;
import service.BoardServiceImpl;

@WebServlet("/brd/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	private RequestDispatcher rdp;
	private String destPage;
	private int isUp;
	private BoardService bsv;

    public BoardController() {
    	bsv = new BoardServiceImpl();
    }

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset = utf-8");
		
		String uri = req.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/")+1);
		
		switch (path) {
		case "register":
			destPage = "/board/register.jsp";
			break;
		case "insert":
			isUp = bsv.register(new BoardVO(req.getParameter("title"), req.getParameter("writer"), req.getParameter("content")));
			destPage = "list";
			break;
		case "list":
			List<BoardVO> list = bsv.getList();
			req.setAttribute("list", list);
			destPage = "/board/list.jsp";
			break;
		case "detail":
			req.setAttribute("bvo", bsv.getDetail(Integer.parseInt(req.getParameter("bno"))));
			destPage = "/board/detail.jsp";
			break;
		case "modify":
			req.setAttribute("bvo", bsv.getDetail(Integer.parseInt(req.getParameter("bno"))));
			destPage = "/board/modify.jsp";
			break;
		case "update":
			isUp = bsv.modify(new BoardVO(Integer.parseInt(req.getParameter("bno")),
					req.getParameter("title"), req.getParameter("content")));
			destPage = "detail?bno=" + Integer.parseInt(req.getParameter("bno"));
			break;
		case "remove":
			isUp = bsv.remove(Integer.parseInt(req.getParameter("bno")));
			destPage = "list";
			break;
		}
		rdp = req.getRequestDispatcher(destPage);
		rdp.forward(req, res);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

}
