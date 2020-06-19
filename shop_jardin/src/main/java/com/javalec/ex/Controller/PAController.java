package com.javalec.ex.Controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.PService.APService;

import utils.UploadFileUtils;

@Controller
@RequestMapping("/admin/*")
public class PAController {


	@Autowired
	APService aps;
	
	
//	@Resource(name="uploadPath")
//	private String uploadPath;

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
	public String posttWirte(HttpServletRequest request, List<MultipartFile> file,ProductDto dto) throws Exception {

		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/imgUpload");
		String imgUploadPath = uploadPath + File.separator;
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);

		ArrayList<String> fileName = new ArrayList<>();

		for (int i = 0; i < 4; i++) {
			if (file != null) {
				fileName.add(UploadFileUtils.fileUpload(imgUploadPath, file.get(i).getOriginalFilename(),
						file.get(i).getBytes(), ymdPath));
			} else {
				fileName.add(uploadPath + File.separator + "images" + File.separator + "none.png");
			}

		}
		dto.setP_img1(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(0));
		dto.setP_img2(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(1));
		dto.setP_img3(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(2));
		dto.setP_content_img(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_"+ fileName.get(3));

		aps.write(dto);

		//
		return "redirect:admin_product_list";
	}

	// 제품 수정updateForm으로 이동
	@RequestMapping(value = "admin/product_updateForm")
	public String product_updateForm(int p_code, HttpSession session) throws Exception {

		aps.getProductInfo(p_code);
		// System.out.println("p_code"+p_code);
		session.setAttribute("p_code", p_code);
		return "admin/admin_product_update";
	}

	// 상품 수정
	@RequestMapping(value = "admin/admin_product_update")
	public String product_update(HttpServletRequest request,List<MultipartFile> file,ProductDto dto,HttpSession session) throws Exception {

		System.out.println("test:" + session.getAttribute("p_code"));
		dto.setP_code((int) (session.getAttribute("p_code")));
		session.removeAttribute("p_code");

		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/imgUpload");
		String imgUploadPath = uploadPath + File.separator;
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		ArrayList<String> fileNames = new ArrayList<>();
		
		for (int i = 0; i < 4; i++) {
			if (file != null) {
				fileNames.add(UploadFileUtils.fileUpload(imgUploadPath, file.get(i).getOriginalFilename(),
						file.get(i).getBytes(), ymdPath));
			} else {
				fileNames.add(uploadPath + File.separator + "images" + File.separator + "none.png");
			}
		}

		dto.setP_img1(File.separator + "imgUpload" + ymdPath + File.separator + fileNames.get(0));
		dto.setP_img2(File.separator + "imgUpload" + ymdPath + File.separator + fileNames.get(1));
		dto.setP_img3(File.separator + "imgUpload" + ymdPath + File.separator + fileNames.get(2));
		dto.setP_content_img(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_"+ fileNames.get(3));
		System.out.println(dto);
		aps.modify(dto);

		return "redirect:admin_product_list";
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
