package com.javalec.ex.Controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.PService.APService;
import com.javalec.ex.Service.PService.PService;

@Controller
@RequestMapping("/admin/*")
public class PAController {

	@Autowired
	private SqlSession sql;
	
	@Inject
	APService aps;
	// 관리자 
	

		// 상품 리스트
		@RequestMapping(value = "admin/admin_product_list")
		public void getlist(Model model) throws Exception {

			List<ProductDto> list = null;
			list = aps.list();

			model.addAttribute("list", list);
		}

		// 상품 작성
		@RequestMapping(value = "admin/write")
		public void getwrite() throws Exception {

		}

		// 상품 작성 뷰
		@RequestMapping(value = "admin/admin_product_write")
		public String writeview() throws Exception {

			return "admin/admin_product_write";
		}

		// 상품 작성
		@RequestMapping(value = "admin/product_write")
		public String posttWirte(ProductDto dto) throws Exception {
			aps.write(dto);

			return "redirect:admin_product_list";
		}

		// 제품 수정updateForm으로 이동
		@RequestMapping(value = "admin/product_updateForm")
		public String product_updateForm(int p_code) throws Exception {
			
			aps.getProductInfo(p_code);

			return "admin/admin_product_update";
		}

		// 상품 수정
		@RequestMapping(value = "admin/product_update")
		public String product_update(ProductDto dto) throws Exception {

			aps.modify(dto);

			return "redirect:admin/admin_product_list";
		}

		// 상품 삭제
		@RequestMapping(value = "admin/product_delete")
		public String product_delete(int p_code) throws Exception {

			aps.deleteProduct(p_code);

			return "redirect:admin/admin_product_list";
		}
}
