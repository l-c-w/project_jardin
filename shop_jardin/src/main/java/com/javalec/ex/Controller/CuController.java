package com.javalec.ex.Controller;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpRequest;
import org.springframework.http.client.HttpComponentsAsyncClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dao.CuDao;
import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.MDto.FnqDto;
import com.javalec.ex.Dto.MDto.NoticeDto;
import com.javalec.ex.Dto.MDto.Oo_fnqDto;
import com.javalec.ex.Service.CUService.CuService;
import com.javalec.ex.Service.CUService.FnqView;
import com.javalec.ex.Service.CUService.NoticeUpdate;
import com.javalec.ex.Service.CUService.NoticeWriteOk;
import com.javalec.ex.Service.CUService.OOFnqDelete;
import com.javalec.ex.Service.CUService.OOFnqList;
import com.javalec.ex.Service.CUService.OOFnqUpdate;
import com.javalec.ex.Service.CUService.OOFnqView;
import com.javalec.ex.Service.CUService.OOFnqWrite;

@Controller
public class CuController {
	

	@Autowired
	private SqlSession sqlsession;
	
	
	
	//공지사항
	
	

	@RequestMapping("/customer/notice_list")
	public String notice_list(Model model,
			PagingDto pagedto,
			@RequestParam(value="nowPage", required=false) String nowPage,
			@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		
		
		CuDao cuao = sqlsession.getMapper(CuDao.class);
		
		 int total = cuao.n_countBoard();
			
			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			} 
			
			else if (nowPage == null) {
				nowPage = "1";
			} 
			
			else if (cntPerPage == null) { 
				cntPerPage = "10";
			}
			
			pagedto = new PagingDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			model.addAttribute("paging", pagedto);
				
			model.addAttribute("viewAll", cuao.n_selectBoard(pagedto) );
			
		
		return "/customer/notice_list";
	}
	
	
	
	
	
	
	@RequestMapping("/customer/notice_view")
	public String notice_view(Model model, HttpServletRequest request) {
		
		String num = request.getParameter("n_num");
		
		CuDao cuao = sqlsession.getMapper(CuDao.class);
		
		NoticeDto ndto1 = cuao.n_view(num);
		
		NoticeDto ndto_n = cuao.n_next(num);
		
		NoticeDto ndto_p = cuao.n_pre(num);
		
		model.addAttribute("ndto", ndto1);
		
		model.addAttribute("ndto_n", ndto_n);
		
		model.addAttribute("ndto_p", ndto_p);
		
		return "/customer/notice_view";
	}
	
	
	
	
	@RequestMapping("/customer/notice_write")
	public String notice_write() {
		return "/customer/notice_write";
	}
	
	
	
	
	
	@RequestMapping("/customer/notice_ok")
	public String notice_ok(Model model, NoticeDto ndto) {
		
		NoticeWriteOk nwrite = new NoticeWriteOk();
		
		nwrite.n_write(sqlsession, model, ndto.getN_title(), ndto.getN_content(), 0);
		
		return "redirect:/customer/notice_list";
	}
	
	
	
	
	
	@RequestMapping("/customer/notice_update")
	public String notice_update(Model model, HttpServletRequest request) {
		
		NoticeUpdate nupdate = new NoticeUpdate();
		
		nupdate.n_update_view(sqlsession, model, request.getParameter("n_num"));
		
		
		return "/customer/notice_update";
	}
	
	
	
	
	
	@RequestMapping("/customer/notice_up_ok")
	public String notice_up_ok(Model model, NoticeDto ndto) {
		
		NoticeUpdate nupdate = new NoticeUpdate();
		
		nupdate.n_update(sqlsession, model, ndto.getN_title(), ndto.getN_content(), ndto.getN_num());
		
		return "redirect:/customer/notice_list";
	}
	
	
	
	
	@RequestMapping("/customer/notice_delete")
	public String notice_delete(Model model, HttpServletRequest request) {
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.n_delete(request.getParameter("n_num"));
		
		return "redirect:/customer/notice_list";
	}
	
	
	
	
	
	
	
	
	
	
	// faq
	
	
	
	
	
	
	@RequestMapping("/customer/faq")
	public String fag(HttpServletRequest request, Model model,
		    PagingDto pagedto,
			@RequestParam(value="nowPage", required=false) String nowPage,
			@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
  
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		  
		 ArrayList<FnqDto> fdtos = cdao.f_list();
		  
		 model.addAttribute("f_list", fdtos);
		
		int total = cdao.f_countBoard();
		
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} 
		
		else if (nowPage == null) {
			nowPage = "1";
		} 
		
		else if (cntPerPage == null) { 
			cntPerPage = "10";
		}
		
		pagedto = new PagingDto(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		model.addAttribute("paging", pagedto);
			
		model.addAttribute("viewAll", cdao.f_selectBoard(pagedto));
		
		
		return "/customer/faq";
	}
	
	
	
	
	@RequestMapping("/customer/faq_list")
	public String faq_list(HttpServletRequest request, Model model) {
		
		String f_type = request.getParameter("f_type");
		
		CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		ArrayList<FnqDto> fdtos = cdao.f_type_list(f_type);
		
		model.addAttribute("f_type", f_type);
		
		model.addAttribute("f_type_list", fdtos);
		
		return "/customer/faq_list";
		
		
	}
	
	
	
	@RequestMapping("/customer/faq_write")
	public String faq_write(HttpServletRequest request, Model model) {
		return "/customer/faq_write";
	}
	
	
	
	
	@RequestMapping("/customer/faq_ok")
	public String faq_ok(HttpServletRequest request, Model model,FnqDto fdto) {
		
        CuDao cdao = sqlsession.getMapper(CuDao.class);
		
		cdao.f_write(fdto.getF_type(), fdto.getF_title(), fdto.getF_content());
		
		//cdao.f_write(f_type, f_title, f_content);
		
		return "redirect:/customer/faq";
	}
	
	
	
	
	
	
	
	
	@RequestMapping("/customer/faq_update")
	public String faq_update(HttpServletRequest request, Model model,
			@RequestParam("f_num") String f_num) {
		
		FnqView f_view = new FnqView();
		f_view.f_view(sqlsession, f_num, model);
		
		return "/customer/faq_update";
	}
	
	
	
	@RequestMapping("/customer/faq_up_ok")
	public String faq_up_ok(HttpServletRequest request, Model model) {
		
		
		
		
		return "redirect:/customer/faq";
	}
	
	
	
	
	
	@RequestMapping("/customer/faq_delete")
	public String faq_delete(HttpServletRequest request, Model model) {
		
		
		return "redirect:/customer/faq";
	}
	
	
	
	
	@Inject
	CuService cuservice;
	
	
	@RequestMapping("/customer/faq_search")
	public String faq_search(HttpServletRequest request, Model model, PagingDto pagedto,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,
			@RequestParam(value = "searchType", required = false) String searchType,
			@RequestParam(value = "keyword", required = false) String keyword) throws Exception {
		
		cuservice.notice_search(model, pagedto, nowPage, cntPerPage, searchType, keyword);
		
		
		return "/customer/faq";
	}
	
	
	
	
	
	
	
	
	// 1:1 문의 
	
	
	
	
	@RequestMapping("/customer/inquiry")
	public String inquiry() {
		return "/customer/inquiry";
	}
	
	
	
	
	
	@RequestMapping("/mypage/inquiry_list")
	public String inquiry_list(Model model,
			PagingDto pagedto,
			@RequestParam(value="nowPage", required=false) String nowPage,
			@RequestParam(value="cntPerPage", required=false) String cntPerPage, HttpSession session) {
		
		OOFnqList list = new OOFnqList();
		
		String id = (String) session.getAttribute("session_mem");
		
		list.list(sqlsession, model, nowPage, cntPerPage, pagedto, id);
		
		return "/mypage/inquiry_list";
	}
	
	
	
	

	
	@RequestMapping("/mypage/inquiry_write")
	public String inquiry_write() {
		return "/mypage/inquiry_write";
	}
	
	
	
	
	@RequestMapping("/mypage/inquiry_ok")
	public String inquiry_ok(
			Model model, 
			Oo_fnqDto odto, 
			HttpSession session
			) {
		
		OOFnqWrite owrite = new OOFnqWrite();
		
		owrite.oo_write(sqlsession, session, model, odto.getOo_type(), odto.getOo_title(), odto.getOo_content());
		
		return "redirect:/mypage/inquiry_list";
	}
	
	
	
	
	
	@RequestMapping("/mypage/inquiry_view")
	public String inquiry_view(HttpServletRequest request, Model model) {
		
		OOFnqView o_view = new OOFnqView();
		
		o_view.o_view(sqlsession, model, request.getParameter("oo_num"));
		
		return "/mypage/inquiry_view";
	}
	
	
	
	
	
	@RequestMapping("/mypage/inquiry_update")
	public String inquiry_update(HttpServletRequest request, Model model,
			@RequestParam(value="oo_num") String oo_num) {
		
		OOFnqView o_view = new OOFnqView();
		o_view.o_view(sqlsession, model, oo_num);
		
		
		return "/mypage/inquiry_update";
	}
	
	
	
	
	
	@RequestMapping("/mypage/inquiry_up_ok")
	public String inquiry_up_ok(HttpServletRequest request,
			@RequestParam("oo_num") String oo_num,
			@RequestParam("oo_type") String oo_type,
			@RequestParam("oo_title") String oo_title,
			@RequestParam("oo_content") String oo_content) {
		
		OOFnqUpdate o_update = new OOFnqUpdate();
		o_update.o_update(sqlsession, oo_type, oo_title, oo_content, oo_num);
		
		return "redirect:/mypage/inquiry_list";
	}
	
	
	
	
	@RequestMapping("/mypage/inquiry_delete")
	public String inquiry_delete(HttpServletRequest request,
			@RequestParam(value="oo_num") String oo_num) {
		
		OOFnqDelete o_del = new OOFnqDelete();
		o_del.o_delete(sqlsession, oo_num);
		
		return "redirect:/mypage/inquiry_list";
	}
	
	
	
	
	
	@RequestMapping("/customer/guide")
	public String guide() {
		return "/customer/guide";
	}
	
	
	
	
	
	
	
}
