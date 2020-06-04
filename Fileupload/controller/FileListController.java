package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.UploadFile;
import service.face.FileService;
import service.impl.FileServiceImpl;

/**
 * Servlet implementation class FileListController
 */
@WebServlet("/file/list")
public class FileListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FileService fileService = new FileServiceImpl();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//전체 목록 조회하기
		List<UploadFile> uploadFileList = fileService.list();
		
		// 조회된 결과를 모델값으로 view에 전달하기
		
		req.setAttribute("list", uploadFileList);

		//view 지정
		req.getRequestDispatcher("/WEB-INF/views/list/list.jsp")
			.forward(req, resp);
		

	}
}
