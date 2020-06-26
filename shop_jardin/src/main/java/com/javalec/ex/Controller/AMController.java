package com.javalec.ex.Controller;

import java.security.Timestamp;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dto.CDto.PagingDto;
import com.javalec.ex.Dto.MDto.FnqDto;
import com.javalec.ex.Dto.MDto.NoticeDto;
import com.javalec.ex.Dto.MDto.Oo_fnqDto;
import com.javalec.ex.Service.AMService.AMService;
import com.javalec.ex.Service.CUService.CuService;

import oracle.sql.TIMESTAMP;


@Controller
public class AMController {
	
	
	@Inject
	AMService amservice;
	
	@Inject
	CuService cuservice;
	
	
	
	//member 멤버 부분 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	
	@RequestMapping("/admin/admin_mlist")
	public String admin_mlist(Model model) {

		amservice.admin_member(model);

		return "admin/admin_mlist";
		
	}
	
	
	
	//notice 공지사항 부분 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	
	
	@RequestMapping("/admin/notice/admin_notice_list")
	public String admin_notice_list(Model model,PagingDto pagedto,
			@RequestParam(value="nowPage", required=false) String nowPage,
			@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		
		amservice.a_notice_list(model, nowPage, cntPerPage, pagedto);
		
		return "/admin/notice/admin_notice_list";
	}
	
	
	
	
	@RequestMapping("/admin/notice/admin_notice_write")
	public String admin_noticewrite(Model model) {
		return "/admin/notice/admin_notice_write";
	}
	
	
	
	
	@RequestMapping("/admin/notice/admin_notice_write_ok")
	public String admin_notice_write_ok(Model model, NoticeDto ndto) {
		
		cuservice.n_write(model, ndto.getN_title(), ndto.getN_content(), 0);
		
		return "redirect:/admin/notice/admin_notice_list";
	}
	
	
	
	
	
	
	@RequestMapping("/admin/notice/admin_notice_view")
	public String admin_notice_view(Model model,
			@RequestParam("n_num") String n_num) {
		
		amservice.a_notice_view(model, n_num);
		
		return "/admin/notice/admin_notice_view";
	}
	
	
	
	
	
	@RequestMapping("/admin/notice/admin_notice_update")
	public String admin_notice_update(Model model,
			@RequestParam("n_num") String n_num) {
		
		cuservice.n_update_view(model, n_num);
		
		return "/admin/notice/admin_notice_update";
	}
	
	
	
	
	@RequestMapping("/admin/notice/admin_notice_update_ok")
	public String admin_notice_update_ok(Model model, NoticeDto ndto) {
		
		cuservice.n_update(model, ndto.getN_title(), ndto.getN_content(), ndto.getN_num());
		
		return "redirect:/admin/notice/admin_notice_list";
	}
	
	
	
	@RequestMapping("/admin/notice/admin_notice_delete")
	public String admin_notice_delete(Model model, NoticeDto ndto,
			@RequestParam("n_num") String n_num) {
		
        amservice.a_notice_delete(n_num);
		
		return "redirect:/admin/notice/admin_notice_list";
	}
	
	
	
	
	
	//faq 공지사항 부분 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	
	
	
	@RequestMapping("/admin/faq/admin_faq_list")
	public String admin_faq_list(Model model, PagingDto pagedto,
				@RequestParam(value="nowPage", required=false) String nowPage,
				@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
		
		amservice.a_faq_list(model, nowPage, cntPerPage, pagedto);
		
		return "/admin/faq/admin_faq_list";
	}
	
	
	
	
	@RequestMapping("/admin/faq/admin_faq_update")
	public String admin_faq_update(Model model,
			@RequestParam("f_num") String num) {
		
		amservice.a_faq_view(model, num);
		
		return "/admin/faq/admin_faq_update";
	}
	
	
	
	@RequestMapping("/admin/faq/admin_faq_update_ok")
	public String admin_faq_update_ok(Model model, FnqDto fdto) {
		
		amservice.a_faq_update(fdto);
		
		return "redirect:/admin/faq/admin_faq_list";
	}
	
	
	
	
	@RequestMapping("/admin/faq/admin_faq_view")
	public String admin_faq_view(Model model,
			@RequestParam("f_num") String num) {
		
		amservice.a_faq_view(model, num);
		
		return "/admin/faq/admin_faq_view";
	}
	
	
	
	
	@RequestMapping("/admin/faq/admin_faq_write")
	public String admin_faq_write(Model model) {
		return "/admin/faq/admin_faq_write";
	}
	
	
	
	
	@RequestMapping("/admin/faq/admin_faq_write_ok")
	public String admin_faq_write_ok(Model model, FnqDto fdto) {
		
		amservice.a_faq_write(fdto.getF_type(), fdto.getF_title(), fdto.getF_content());
		
		return "redirect:/admin/faq/admin_faq_list";
	}
	
	
	
	@RequestMapping("/admin/faq/admin_faq_delete")
	public String admin_faq_delete(Model model,
			@RequestParam("f_num") String num) {
		
		amservice.a_faq_delete(num);
		
		return "redirect:/admin/faq/admin_faq_list";
	}
	
	
	
	
	
	//1:1문의  부분 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	
	
	
	
		@RequestMapping("/admin/oo/admin_oofnq_list")
		public String admin_oofnq_list(Model model,PagingDto pagedto,
				@RequestParam(value="nowPage", required=false) String nowPage,
				@RequestParam(value="cntPerPage", required=false) String cntPerPage) {
			
			amservice.o_list(model, nowPage, cntPerPage, pagedto);
			
			return "/admin/oo/admin_oofnq_list";
		}
		
		
		
		@RequestMapping("/admin/oo/admin_oofnq_view")
		public String admin_oofnq_view(Model model,
				@RequestParam("oo_num") String oo_num) {
			
			cuservice.o_view(model, oo_num);
			
			return "/admin/oo/admin_oofnq_view";
		}
		
		
		
		@RequestMapping("/admin/oo/admin_oofnq_answer_delete")
		public String admin_oofnq_answer_delete(Model model,
				@RequestParam("oo_num") String oo_num) {
			
			cuservice.o_delete(oo_num);
			
			return "redirect:/admin/oo/admin_oofnq_list";
		}
		
		
		
		@RequestMapping("/admin/oo/admin_oofnq_answer")
		public String admin_oofnq_answer(Model model,
				@RequestParam("oo_num") String oo_num) {
			
			cuservice.o_view(model, oo_num);
			
			return "/admin/oo/admin_oofnq_answer";
		}
		
		
		
		@RequestMapping("/admin/oo/admin_oofnq_answer_ok")
		public String admin_oofnq_answer_ok(Model model, Oo_fnqDto odto) {
			
		amservice.o_answer(model, odto.getOo_num(), odto.getOo_answer());
			
		return "redirect:/admin/oo/admin_oofnq_list";
		
		}
		
		
		

}
