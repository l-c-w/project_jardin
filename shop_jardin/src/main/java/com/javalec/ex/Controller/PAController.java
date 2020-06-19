package com.javalec.ex.Controller;

import java.io.File;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.PService.APService;
import com.javalec.ex.Service.PService.PService;

import utils.UploadFileUtils;

@Controller
@RequestMapping("/admin/*")
public class PAController {

	@Autowired
	private SqlSession sql;

	@Inject
	APService aps;

	/* @Resource(name = "uploadPath") */
//	private String uploadPath;
//	

	@Autowired
	private ServletContext servletContext;

	// 관리자

	// 상품 리스트
	@RequestMapping(value = "admin/admin_product_list", method = RequestMethod.GET)
	public void getlist(Model model) throws Exception {

		List<ProductDto> list = null;
		list = aps.list();

		model.addAttribute("list", list);
	}

	// 상품 작성
	@RequestMapping(value = "/admin_product_write", method = RequestMethod.GET)

	public void getWrite() throws Exception {

	}

	// 상품 작성
	@RequestMapping(value = "/admin_product_write", method = RequestMethod.POST)
	public String posttWirte(HttpServletRequest request, List<MultipartFile> file, ProductDto dto) throws Exception {

		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/imgUpload");
		String imgUploadPath = uploadPath + File.separator;
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);

		
		ArrayList<String> fileName = new ArrayList<>();
		
		for (int i = 0; i < 4; i++) {
			if (file != null) {
				fileName.add(UploadFileUtils.fileUpload(imgUploadPath, file.get(i).getOriginalFilename(), file.get(i).getBytes(), ymdPath));
			} else {
				fileName.add(uploadPath + File.separator + "images" + File.separator + "none.png");				
			}
		}

		dto.setP_img1(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(0));
		dto.setP_img2(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(1));
		dto.setP_img3(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(2));
		dto.setP_content_img(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName.get(3));

		aps.write(dto);

		//
		return "redirect:admin_product_list";
	}

	// 제품 수정updateForm으로 이동
	@RequestMapping(value = "admin/product_updateForm")
	public String product_updateForm(int p_code) throws Exception {

		aps.getProductInfo(p_code);

		return "admin/admin_product_update";
	}

	// 상품 수정
	@RequestMapping(value = "admin/admin_product_update")
	public String product_update(ProductDto dto) throws Exception {
		System.out.println("이미지1 : "+dto.getP_img1());
		System.out.println("이미지2 : "+dto.getP_img2());
		System.out.println("이미지3 : "+dto.getP_img3());
		System.out.println("상세이미지 : "+dto.getP_content_img());
		
		aps.modify(dto);

		return "redirect:admin/admin_product_list";
	}

	// 상품 삭제
	@RequestMapping(value = "admin/product_delete", method = RequestMethod.POST)
	@ResponseBody
	public String product_delete(@RequestParam("num") String p_code) throws Exception {

		System.out.println(p_code);

		String check = "0";
		aps.deleteProduct(p_code);

		check = "1";

		return check;
	}
}
