package com.javalec.ex.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dto.CDto.C_ReviewDto;
import com.javalec.ex.Dto.CDto.Criteria;
import com.javalec.ex.Dto.CDto.P_ReviewDto;
import com.javalec.ex.Dto.CDto.PageMaker;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.PService.PService;

@Controller
@RequestMapping("/product/*")
public class PController {

	@Autowired
	PService ps;

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
	}
	
	// 글 목록 + 페이징
	@RequestMapping(value = "/listPage" , method = RequestMethod.GET)
	public void listPage(Criteria cri, Model model) {
		
		 List<C_ReviewDto> list = ps.listPage(cri);
		 model.addAttribute("list", list);
		 
		 PageMaker pageMaker = new PageMaker();
		 pageMaker.setCri(cri);
		 
		 pageMaker.setTotalCount(ps.listCount());
		 
		 model.addAttribute("pageMaker", pageMaker);
	}
	// 포토 리뷰
	@RequestMapping("photo") //detail 페이지에서 포토 리뷰 페이지 띄우기
    public String writePhotoReview(Model model, int p_code) {

        model.addAttribute("p_code", p_code);

        return "product/photo";
    }
	@RequestMapping("review")   //detail 페이지에서 상품 리뷰 페이지 띄우기
    public String writeReview(Model model, int p_code,HttpSession session) {
		
		model.addAttribute("p_code", p_code);
		
	return "product/review";
	}
}
