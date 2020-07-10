package com.javalec.ex.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javalec.ex.Dao.PDao;
import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.PDto.Criteria;
import com.javalec.ex.Dto.PDto.P_FnqDto;
import com.javalec.ex.Dto.PDto.PageMaker;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Dto.PDto.SearchValue;
import com.javalec.ex.Service.PService.PService;

@Controller
@RequestMapping("/product/*")
public class PController {

	@Autowired
	PService ps;

	@Autowired
	private SqlSession sqlSession;

	// 상품 리스트
	@RequestMapping(value = "/product/p_list", method = RequestMethod.GET)
	public void p_list(@RequestParam(value = "c", defaultValue = "") String pc, Model model, SearchValue sv)
			throws Exception {

		List<ProductDto> Plist = null;
		Plist = ps.Plist();

		List<String> Plist2 = ps.Plist2();

		if (pc.equals("")) {
			pc = Plist2.get(0);
		}

		model.addAttribute("pc", pc);

		model.addAttribute("Plist2", Plist2);

		model.addAttribute("Plist", Plist);

	}

	@RequestMapping("/comment_list")
	   public String comment_list(HttpServletRequest request, Model model) throws Exception {
	      
	      System.out.println("--------------------event_list--------------------");

	      int page1 = 0;
	      int listcount = 0;
	      
	      String temp = request.getParameter("page1"); // 페이지 임시변수
//	      String opt = request.getParameter("opt"); // 전체 제목 내용
//	      String searchFlag = request.getParameter("searchFlag"); // 검색체크
//	      String search = request.getParameter("search"); // 검색어 
	      
//	      System.out.println("search value : " + search);
	      System.out.println("temp : " + temp);
	      
//	      if(opt == null) {
//	         opt = "";
//	      }
//	      if(search == null) {
//	         search = "";
//	      }
	      
	      
	      if(temp == null) {
	         page1 = 1;      // 최초 기본 1페이지 세팅
	      }else {
	         page1 = Integer.parseInt(temp);
	      }
	      System.out.println("page : " + page1);
	      
	      int limit = 3;      // limit = 10 : 게시글 10개
	      
	      
	      // 페이지별 리스트 개수 가져오기
	      List<C_ReviewDto> list = new ArrayList<C_ReviewDto>();
	      int startrow = (page1 - 1) * limit + 1;   // (1 - 1) * 10 + 1 = 1
	      int endrow = startrow + limit - 1;   //   1 + 10 - 1 = 10
	      
	      if(opt.equals("")) {
	         list = ps.comment_list(startrow, endrow, search);
	         listcount = ps.listCount();
	      }
	      
//	      switch (opt) {
//	      case "":
//	         list = dao.event_list(startrow, endrow, search);
//	         listcount = dao.getListCount(search);
//	         break;
//	      case "all":
//	         list = dao.event_listAll(startrow, endrow, search);
//	         listcount = dao.getListCountAll(search);
//	         break;
//	      case "tit":
//	         list = dao.event_listTit(startrow, endrow, search);
//	         listcount = dao.getListCountTit(search);
//	         break;
//	      case "con":
//	         list = dao.event_listCon(startrow, endrow, search);
//	         listcount = dao.getListCountCon(search);
//	         break;
//	      default:
//	         break;
//	      }
	            
	      
	      // 최대 페이지 수
	      int maxpage = (int)((double)listcount / limit + 0.95); // 20/10 -> 2+0.95 -> (int)2.95 -> 2
	      // 처음 페이지
	      int startpage = ((int)((double)page / 10 + 0.9) - 1) * 10 + 1; //1/10 -> 0.1+0.9 -> 1-1 -> 0*10 -> 0+1 = 1
	      // 마지막 페이지
	      int endpage = maxpage; // 1 ~ 10까지는 maxpage가 endpage가 됨
	      if(endpage > startpage + 10 - 1)
	         endpage = startpage + 10 - 1;
	      
	      
	      
	      model.addAttribute("event_list", list);
	      
	      model.addAttribute("listcount", listcount);
	      model.addAttribute("page", page);
	      model.addAttribute("maxpage", maxpage);
	      model.addAttribute("startpage", startpage);
	      model.addAttribute("endpage", endpage);
	      
	      if(search != null) {
	         searchFlag = "1";
	         request.setAttribute("searchFlag", searchFlag);
	         request.setAttribute("opt", opt);
	         request.setAttribute("search", search);
	      }
	      
	      System.out.println("listcount : " + listcount);
	      System.out.println("page : " + page);
	      System.out.println("maxpage : " + maxpage);
	      System.out.println("startpage : " + startpage);
	      System.out.println("endpage : " + endpage);
	      
	      
	      return "study/event_list";
	   }
	
	// 상품 상세정보
	@RequestMapping(value = "/product/p_detail", method = RequestMethod.GET)
	public void p_detail(@ModelAttribute("cri") Criteria cri,Model model, int p_code, String p_category) throws Exception {

		ProductDto productDetail = ps.productDetail(p_code);

		List<ProductDto> list = ps.related(p_category);

		model.addAttribute("productDetail", productDetail);
		model.addAttribute("related", list);

		List<C_ReviewDto> rlist = ps.comment_list();
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(ps.listCount());
		
		model.addAttribute("rlist", rlist);
		model.addAttribute("p_code", p_code);
		model.addAttribute("pageMaker", pageMaker);
		

		List<P_FnqDto> flist = ps.p_Fnq_List();
		PageMaker pageMaker2 = new PageMaker();
		pageMaker2.setCri(cri);
		pageMaker2.setTotalCount(ps.listCount2());
		
		model.addAttribute("flist", flist);
		model.addAttribute("p_code", p_code);
		model.addAttribute("pageMaker2", pageMaker2);
	}

	// 상품 리뷰
	@RequestMapping("/comment") // 댓글 달기 페이지
	public String comment() {
		return "comment";
	}

//	@RequestMapping("/comment_list")
//	@ResponseBody // json데이터로 페이지 리턴
//	public List<C_ReviewDto> comment_list() {
//		// mybatis 에 있는 객체를 가져 옴.
//		PDao dao = sqlSession.getMapper(PDao.class);
//
//		for (C_ReviewDto li : dao.comment_list()) {
//			System.out.println(li);
//		}
//
//		return dao.comment_list();
//	}

	@RequestMapping("/comment_delete")
	@ResponseBody // json데이터로 페이지 리턴
	public String comment_delete(@ModelAttribute C_ReviewDto cdto) {
		PDao dao = sqlSession.getMapper(PDao.class);
		dao.comment_delete(cdto);
		return "success";
	}

	@RequestMapping("/comment_insert")
	@ResponseBody // json데이터로 페이지 리턴
	public String comment_insert(@ModelAttribute C_ReviewDto cdto) {

		PDao dao = sqlSession.getMapper(PDao.class);
		dao.comment_insert(cdto);
		return "success";
	}

	@RequestMapping("/comment_update")
	@ResponseBody // json데이터로 페이지 리턴
	public String comment_update(@ModelAttribute C_ReviewDto cdto) {
		PDao dao = sqlSession.getMapper(PDao.class);
		dao.comment_update(cdto);
		return "success";
	}

	// 질문 답변
	@RequestMapping("/p_Fnq") // 댓글 달기 페이지
	public String p_Fnq() {
		return "p_Fnq";
	}

	@RequestMapping("/p_Fnq_List")
	@ResponseBody // json데이터로 페이지 리턴
	public List<P_FnqDto> p_Fnq_List() {
		// mybatis 에 있는 객체를 가져 옴.
		PDao dao = sqlSession.getMapper(PDao.class);

		return dao.p_Fnq_List();
	}

	@RequestMapping("/p_Fnq_delete")
	@ResponseBody // json데이터로 페이지 리턴
	public String p_Fnq_delete(@ModelAttribute P_FnqDto fdto) {
		PDao dao = sqlSession.getMapper(PDao.class);
		dao.p_Fnq_delete(fdto);
		return "success";
	}

	@RequestMapping("/p_Fnq_insert")
	@ResponseBody // json데이터로 페이지 리턴
	public String p_Fnq_insert(@ModelAttribute P_FnqDto fdto) {

		PDao dao = sqlSession.getMapper(PDao.class);
		dao.p_Fnq_insert(fdto);
		return "success";
	}

	@RequestMapping("/p_Fnq_update")
	@ResponseBody // json데이터로 페이지 리턴
	public String p_Fnq_update(@ModelAttribute P_FnqDto fdto) {
		PDao dao = sqlSession.getMapper(PDao.class);
		dao.p_Fnq_update(fdto);
		return "success";
	}

//	// 댓글 목록 + 페이징
//	@RequestMapping(value = "/product/p_detail", method = RequestMethod.GET)
//	public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
//
//		List<C_ReviewDto> clist = ps.listPage(cri);
//		model.addAttribute("clist", clist);
//
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(cri);
//		pageMaker.setTotalCount(ps.listCount());
//		model.addAttribute("pageMaker", pageMaker);
//	}
//
//	// 질문 답변 목록 + 페이징
//	@RequestMapping(value = "/product/p_detail", method = RequestMethod.GET)
//	public void listPage2(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
//
//		List<P_FnqDto> flist = ps.listPage2(cri);
//		model.addAttribute("flist", flist);
//
//		PageMaker pageMaker2 = new PageMaker();
//		pageMaker2.setCri(cri);
//		pageMaker2.setTotalCount(ps.listCount2());
//		model.addAttribute("pageMaker2", pageMaker2);
//	}

}
