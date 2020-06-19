package com.javalec.ex.Controller;

import java.io.File;
import java.io.IOException;
import java.security.Provider.Service;
import java.util.ArrayList;
import java.util.Locale;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javalec.ex.Dao.CDao;
import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.MDto.NoticeDto;

@Controller
public class CController {

	
	@Autowired
	private SqlSession sqlsession;
	
	
	
	@RequestMapping("/community/comment_list")
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
		
		
		return "/community/comment_list";
	}

	
	
	
	
	
	@RequestMapping("/community/comment_view")
	public String comment_view(HttpServletRequest request, Model model) {
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
		String cr_num = request.getParameter("cr_num");
		
		dao.c_upHit(cr_num);
		
		C_ReviewDto cdto = dao.c_view(cr_num);
		
		C_ReviewDto cdto_n = dao.cr_next(cr_num);
		
		C_ReviewDto cdto_p = dao.cr_pre(cr_num);
		
		model.addAttribute("c_view", cdto);
		
		model.addAttribute("cdto_n", cdto_n);
		
		model.addAttribute("cdto_p", cdto_p);
		
		
		return "/community/comment_view";
	}
	
	
	
	

	@RequestMapping("/community/comment_write")
	public String comment_write() {
		return "/community/comment_write";
	}
	
	
	
	
	
	
	@RequestMapping("/community/comment_write_ok")
	public String comment_write_ok(Model model, C_ReviewDto cdto, HttpSession session) {
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
		String c_id = (String) session.getAttribute("s_n");
		
		dao.c_write(c_id, "2", cdto.getCr_title(), cdto.getCr_content(), cdto.getCr_score(), 0);
		
		return "redirect:/community/comment_list";
		
		
	}
	
	
	
	
	@RequestMapping("/community/comment_update")
	public String comment_update(HttpServletRequest request, Model model) {
		
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
		String cr_num = request.getParameter("cr_num");
		
		C_ReviewDto cdto = dao.c_view(cr_num);
		
		model.addAttribute("c_view", cdto);
		
		return "/community/comment_update";
		
	}
	
	
	
	
	
	
	@RequestMapping("/community/comment_update_ok")
	public String comment_update_ok(HttpServletRequest request, Model model, C_ReviewDto cdto) {
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
		String cr_num = request.getParameter("cr_num");
		
		dao.cr_update(cdto.getCr_title(), cdto.getCr_content(), cdto.getCr_score(), cr_num);
		//dao.cr_update(cr_title, cr_content, cr_score, cr_num);
		
		
		return "redirect:/community/comment_list";
	}
	
	
	
	
	
	
	@RequestMapping("/community/comment_delete")
	
	public String comment_delete(HttpServletRequest request, Model model) {

		CDao cao = sqlsession.getMapper(CDao.class);

		String cr_num = request.getParameter("cr_num");

		cao.cr_delete(cr_num);

		return "redirect:/community/comment_list";
		
	}
	
	
	
	
	
	
	
	
	

	
	
	// 포토 //
	
	
	
	
	

	@RequestMapping("/community/epilogue_list")
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
		
		return "/community/epilogue_list";
		
	}

	
	
	
	@RequestMapping("/community/epilogue_view")
	public String epilogue_view(HttpServletRequest request, Model model) {
		
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
        String pr_num = request.getParameter("pr_num");
        
        dao.p_upHit(pr_num);
		
		P_ReviewDto pdto = dao.p_view(pr_num);
		
		P_ReviewDto pdto_n = dao.pr_next(pr_num);
		
		P_ReviewDto pdto_p = dao.pr_pre(pr_num);
		
		model.addAttribute("p_view", pdto);
		
		model.addAttribute("pdto_n", pdto_n);
		
		model.addAttribute("pdto_p", pdto_p);
		
		
		return "/community/epilogue_view";
		
		
		
	}

	
	
	
	@RequestMapping("/community/epilogue_write")
	public String epilogue_write() {
		return "/community/epilogue_write";
	}
	
	
	
	
	
	@RequestMapping(value = "/community/epilogue_write_ok", method = RequestMethod.POST)
	public String epilogue_write_ok(HttpSession session, MultipartHttpServletRequest mtfRequest, Model model, P_ReviewDto pdto) {

		
		MultipartFile mf = mtfRequest.getFile("file");
		

//		String path = "C:\\upload\\";
		
		String path = "C:\\Users\\koitt01a\\Documents\\GitHub\\project_jardin\\shop_jardin\\src\\main\\webapp\\img\\";

		
		
		String originFileName = mf.getOriginalFilename(); // 원본 파일 명
		
		long fileSize = mf.getSize(); // 파일 사이즈
		
		

		System.out.println("originFileName : " + originFileName);
		
		System.out.println("fileSize : " + fileSize);
		
		

		String safeFile = path + originFileName;
		
		
		
        CDao dao = sqlsession.getMapper(CDao.class);
        
        String p_id = (String) session.getAttribute("s_n");
        
        
		
		dao.p_write(p_id, "2", pdto.getPr_title(), pdto.getPr_content(), originFileName, pdto.getPr_score(), 0);

		
		try {
			mf.transferTo(new File(safeFile));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:/community/epilogue_list"; 
		
	}
	
	
	
	
	
	
	@RequestMapping("/community/epilogue_update")
	public String epilogue_update(HttpServletRequest request, Model model) {
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
		String pr_num = request.getParameter("pr_num");
		
		P_ReviewDto pdto = dao.p_view(pr_num);
		
		model.addAttribute("p_view", pdto);
		
		return "/community/epilogue_update";
	}
	
	
	
	
	
	
	
	
	@RequestMapping("/community/epilogue_update_ok")
	public String epilogue_update_ok(HttpServletRequest request, Model model, MultipartHttpServletRequest mtfRequest, P_ReviewDto pdto) {
		
		CDao dao = sqlsession.getMapper(CDao.class);
		
		String pr_num = request.getParameter("pr_num");
		
		String pre_file = request.getParameter("pre_file");
		
		MultipartFile mf = mtfRequest.getFile("file");
		

//		String path = "C:\\upload\\";
		
		String path = "C:\\Users\\koitt01a\\Documents\\GitHub\\project_jardin\\shop_jardin\\src\\main\\webapp\\img\\";

		File file = new File(path+pre_file);
		
		if(file.exists() == true)
			
		{file.delete();}
		
		String originFileName = mf.getOriginalFilename(); // 원본 파일 명
		
		long fileSize = mf.getSize(); // 파일 사이즈
		
		System.out.println("originFileName : " + originFileName);
		
		System.out.println("fileSize : " + fileSize);

		String safeFile = path + originFileName;
		
		dao.pr_update(pdto.getPr_title(), pdto.getPr_content(), originFileName , pdto.getPr_score(), pr_num);
		//dao.pr_update(pr_title, pr_content, pr_file, pr_score, pr_num);
		
		try {
			mf.transferTo(new File(safeFile));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		
		return "redirect:/community/epilogue_list";
	}
	
	
	
	
	
	

	@RequestMapping("/community/epilogue_delete")
	public String epilogue_delete(HttpServletRequest request, Model model) {
		
		CDao cao = sqlsession.getMapper(CDao.class);
		
		String pr_num = request.getParameter("pr_num");
		
		String path = "C:\\Users\\koitt01a\\Documents\\GitHub\\project_jardin\\shop_jardin\\src\\main\\webapp\\img\\";
		
		P_ReviewDto pdto = cao.p_view(pr_num);
		
		String upload= pdto.getPr_file();
        
		File file = new File(path+upload);

		if(file.exists() == true)
						
		{file.delete();}
		
		cao.pr_delete(pr_num);

		return "redirect:/community/epilogue_list";
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
