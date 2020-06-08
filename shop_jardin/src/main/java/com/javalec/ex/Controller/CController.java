package com.javalec.ex.Controller;

import java.io.File;
import java.io.IOException;
import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javalec.ex.Dao.CDao;
import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.CDto.PagingDto;

@Controller
public class CController {

	
	@Autowired
	private SqlSession sqlsession;
	
	
	
	
	@RequestMapping("community/comment_list")
	public String comment_list(Model model,
			PagingDto pagedto,
			@RequestParam(value="nowPage", required=false) String nowPage,
			@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		
		
		
		
		CDao cao = sqlsession.getMapper(CDao.class);
		
		
		/*
		 * ArrayList<C_ReviewDto> cdto = cao.c_list();
		 * 
		 * model.addAttribute("clist",cdto);
		 */
		
		
        int total = cao.c_countBoard();
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} 
		
		else if (nowPage == null) {
			nowPage = "1";
		} 
		
		else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		
		
		pagedto = new PagingDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pagedto);
			
		model.addAttribute("viewAll", cao.c_selectBoard(pagedto));
		
		
		return "community/comment_list";
	}

	
	
	
	
	
	@RequestMapping("community/comment_view")
	public String comment_view(HttpServletRequest request, Model model) {
		
		
		String id = request.getParameter("id");
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
		C_ReviewDto cdto = dao.c_view(id);
		
		model.addAttribute("c_view", cdto);
		
		
		return "community/comment_view";
	}
	
	
	
	
	

	@RequestMapping("community/comment_write")
	public String comment_write() {
		return "community/comment_write";
	}
	
	
	
	
	
	@RequestMapping("community/comment_write_ok")
	public String comment_write_ok() {
		
		
		
		
		return "community/comment_list";
	}
	
	
	

	
	
	// 포토 //
	
	
	
	
	

	@RequestMapping("community/epilogue_list")
	public String epilogue_list(Model model, 
			//
			PagingDto pagedto,
			@RequestParam(value="nowPage", required=false) String nowPage,
			@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		
        CDao cao = sqlsession.getMapper(CDao.class);
		
		/*
		 * ArrayList<P_ReviewDto> pdto = cao.p_list();
		 * 
		 * model.addAttribute("plist",pdto);
		 */
		
		
		
		int total = cao.countBoard();
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} 
		
		else if (nowPage == null) {
			nowPage = "1";
		} 
		
		else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		
		
		
		pagedto = new PagingDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pagedto);
			
		model.addAttribute("viewAll", cao.selectBoard(pagedto));
		
		return "community/epilogue_list";
		
	}

	
	
	
	@RequestMapping("community/epilogue_view")
	public String epilogue_view(HttpServletRequest request, Model model) {
		
        String id = request.getParameter("id");
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
		P_ReviewDto pdto = dao.p_view(id);
		
		model.addAttribute("p_view", pdto);
		
		return "community/epilogue_view";
	}

	
	
	
	
	@RequestMapping("community/epilogue_write")
	public String epilogue_write() {
		return "community/epilogue_write";
	}
	
	
	
	
	
	@RequestMapping(value = "community/epilogue_write_ok", method = RequestMethod.POST)
	public String epilogue_write_ok(MultipartHttpServletRequest mtfRequest, Model model, P_ReviewDto pdto) {

		MultipartFile mf = mtfRequest.getFile("file");

//		String path = "C:\\upload\\";
		
		String path = "C:\\Users\\koitt01a\\Documents\\GitHub\\project_jardin\\shop_jardin\\src\\main\\webapp\\img\\";

		String originFileName = mf.getOriginalFilename(); // 원본 파일 명
		
		long fileSize = mf.getSize(); // 파일 사이즈

		System.out.println("originFileName : " + originFileName);
		
		System.out.println("fileSize : " + fileSize);

		String safeFile = path + originFileName;
		
        CDao dao = sqlsession.getMapper(CDao.class);
		
		dao.p_write("test4", "2", pdto.getPr_title(), pdto.getPr_content(), originFileName, pdto.getPr_score(), 0);

		try {
			mf.transferTo(new File(safeFile));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:epilogue_list"; //★★★ community 빼야함
	}
	
	
	

//	@RequestMapping("community/enjoy_list")
//	public String enjoy_list() {
//		return "community/enjoy_list";
//	}
//
//	@RequestMapping("community/enjoy_view")
//	public String enjoy_view() {
//		return "community/enjoy_view";
//	}	


//	@RequestMapping("community/expr_list")
//	public String expr_list() {
//		return "community/expr_list";
//	}
//
//	@RequestMapping("community/expr_review")
//	public String expr_review() {
//		return "community/expr_review";
//	}
//
//	@RequestMapping("community/expr_view")
//	public String expr_view() {
//		return "community/expr_view";
//	}
	
	
	

	
	
}
