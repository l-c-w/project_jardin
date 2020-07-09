package com.javalec.ex.Controller;

import java.util.List;

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
import com.javalec.ex.Dto.MDto.CommentDto;
import com.javalec.ex.Dto.PDto.P_FnqDto;
import com.javalec.ex.Dto.PDto.ProductDto;
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
	public void p_list(@RequestParam(value = "c", defaultValue = "") String pc, Model model) throws Exception {

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

	// 상품 상세정보
	@RequestMapping(value = "/product/p_detail", method = RequestMethod.GET)
	public void p_detail(Model model, int p_code, String p_category) throws Exception {

		ProductDto productDetail = ps.productDetail(p_code);

		List<ProductDto> list = ps.related(p_category);

		model.addAttribute("productDetail", productDetail);
		model.addAttribute("related", list);
		
		List<C_ReviewDto> rlist = ps.comment_list();
		model.addAttribute("rlist",rlist);
		model.addAttribute("p_code",p_code);
		
//		List<P_FnqDto> flist = ps.p_Fnq_List();
//		model.addAttribute("flist",flist);
//		model.addAttribute("p_code",p_code);

	}

	// 상품 리뷰
	@RequestMapping("/comment") // 댓글 달기 페이지
	public String comment() {
		return "comment";
	}

	@RequestMapping("/comment_list")
	@ResponseBody // json데이터로 페이지 리턴
	public List<C_ReviewDto> comment_list() {
		// mybatis 에 있는 객체를 가져 옴.
		PDao dao = sqlSession.getMapper(PDao.class);

		for(C_ReviewDto li: dao.comment_list()) {
			System.out.println(li);
		}
		
		return dao.comment_list();
	}

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
	
//	// 질문 답변
//		@RequestMapping("/p_Fnq") // 댓글 달기 페이지
//		public String p_Fnq() {
//			return "p_Fnq";
//		}
//
//		@RequestMapping("/comment_list")
//		@ResponseBody // json데이터로 페이지 리턴
//		public List<C_ReviewDto> comment_list() {
//			// mybatis 에 있는 객체를 가져 옴.
//			PDao dao = sqlSession.getMapper(PDao.class);
//
//			for(C_ReviewDto li: dao.comment_list()) {
//				System.out.println(li);
//			}
//			
//			return dao.comment_list();
//		}
//
//		@RequestMapping("/comment_delete")
//		@ResponseBody // json데이터로 페이지 리턴
//		public String comment_delete(@ModelAttribute C_ReviewDto cdto) {
//			PDao dao = sqlSession.getMapper(PDao.class);
//			dao.comment_delete(cdto);
//			return "success";
//		}
//
//		@RequestMapping("/comment_insert")
//		@ResponseBody // json데이터로 페이지 리턴
//		public String comment_insert(@ModelAttribute C_ReviewDto cdto) {
//			
//			PDao dao = sqlSession.getMapper(PDao.class);
//			dao.comment_insert(cdto);
//			return "success";
//		}
//
//		@RequestMapping("/comment_update")
//		@ResponseBody // json데이터로 페이지 리턴
//		public String comment_update(@ModelAttribute C_ReviewDto cdto) {
//			PDao dao = sqlSession.getMapper(PDao.class);
//			dao.comment_update(cdto);
//			return "success";
//		}


}
