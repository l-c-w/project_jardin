package com.javalec.ex.Controller;


import java.util.List;
import java.util.logging.Logger;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.PService.PService;

@Controller
@RequestMapping("/product/*")
public class PController {

			
	@Autowired
	PService ps;
	

	//상품 리스트
	@RequestMapping(value = "/product/p_list" , method = RequestMethod.GET)
	public void p_list(@RequestParam(value="c", defaultValue = "") String pc, Model model) throws Exception{
		
		List<ProductDto> Plist = null;
		Plist = ps.Plist();

		List<String> plist2 = ps.Plist2();
		if(pc.equals("")) {
			pc = plist2.get(0);
		}
	
		model.addAttribute("pc",pc);
		model.addAttribute("plist2",plist2);
		model.addAttribute("Plist", Plist);
	
	}
	
	//상품 상세정보
	@RequestMapping(value = "/product/p_detail", method = RequestMethod.GET)
	public void p_detail(Model model,int p_code) throws Exception{
		
		ProductDto productDetail = null;
		productDetail = ps.productDetail(p_code);
		model.addAttribute("productDetail",productDetail);
	}
	
	
	



	
	
	
}
