package com.javalec.ex.Controller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.javalec.ex.Dao.ACDao;
import com.javalec.ex.Dto.EDto.EventDto;
import com.javalec.ex.Dto.PDto.ProductDto;
import com.javalec.ex.Service.AService.ACouWriteDoService;
import com.javalec.ex.Service.AService.ACouWriteService;
import com.javalec.ex.Service.AService.AService;

import utils.UploadFileUtils;

@Controller
public class AController {

	@Autowired
	private SqlSession sqlSession;
	
	AService as;
	
	@RequestMapping("admin/admin_header")
	public String admin_header(HttpServletRequest request, Model model) {
		return "admin/admin_header";
	}
	
	@RequestMapping("admin/admin_coupon") // 쿠폰 등록
	public String admin_coupon(HttpServletRequest request, Model model) {
		as = new ACouWriteService();
		as.execute(request, sqlSession, model);
		return "admin/admin_coupon";
	}
	
	@RequestMapping("admin/admin_couponWriteDo") // 쿠폰 등록 Ok
	public String admin_couponWriteDo(HttpServletRequest request, Model model) {
		as = new ACouWriteDoService();
		as.execute(request,sqlSession, model);
		return "admin/admin_coupon_result";
	}
	
	@RequestMapping("admin/admin_ewrite") // 이벤트 등록
	public String admin_ewrite(HttpServletRequest request, Model model) {
		as = new ACouWriteService();	//	쿠폰 등록 dao와 같은 dao, 카테고리만 찾으면 되기에 같은 걸 썼다.
		as.execute(request,sqlSession, model);
		return "admin/admin_ewrite";
	}
	
	@RequestMapping("admin/admin_ewriteDo") // 이벤트 등록 Do
	public String admin_ewriteDo(@ModelAttribute EventDto edto , MultipartHttpServletRequest request,
			@RequestParam("e_file01") MultipartFile multi1,
			@RequestParam("e_file02") MultipartFile multi2,
			@RequestParam("e_file03") MultipartFile multi3) {
		
		System.out.println("-----admin_ewriteDo-----");
		
		List<MultipartFile> file = new ArrayList<MultipartFile>();
		String e_start1 = request.getParameter("e_start1");
		String e_end1 = request.getParameter("e_end1");
		
		file.add(multi1);
		file.add(multi2);
		file.add(multi3);
		
		System.out.println("e_start1 : " + e_start1);
		System.out.println("e_end1 : " + e_end1);		
		
		ACDao dao = sqlSession.getMapper(ACDao.class);
		
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/imgUpload");
		// ↓ 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload 
		String imgUploadPath = uploadPath + File.separator; // 윈도우는 "Data\\"Tweet.txt", 리눅스는 "Data/Tweet.txt" -> File.separator를 사용하면 깔끔하게 해결된다.
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);	// 위의 폴더를 기준으로 연월일 폴더를 생성

		ArrayList<String> fileName = new ArrayList<String>();
		
		for (int i = 0; i < 3; i++) {
			if (file != null) {
				try {
					fileName.add(UploadFileUtils.fileUpload(imgUploadPath, file.get(i).getOriginalFilename(), 
							file.get(i).getBytes(), ymdPath));
				} catch (IOException e) {
					e.printStackTrace();
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {	 // 첨부된 파일이 없으면
				fileName.add(uploadPath + File.separator + "images" + File.separator + "none.png");
				// 미리 준비된 none.png파일을 대신 출력함
			}

		}
		
		 // E_file1에 원본 파일 경로 + 파일명 저장
		edto.setE_file1(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(0));
		edto.setE_file2(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(1));
		edto.setE_file3(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(2));
//		eventDto.setP_content_img(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_"+ fileName.get(3));

//		aps.write(eventDto);
		
//		MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
//		String e_type = request.getParameter("e_type");
//		String e_apply = request.getParameter("e_apply");
//		String e_title = request.getParameter("e_title");
//		String e_content = request.getParameter("e_content");
		
//		String e_start1 = request.getParameter("e_start1");
//		String e_end1 = request.getParameter("e_end1");
		
		
//		edto.setE_type(e_type);
//		edto.setE_apply(e_apply);
//		edto.setE_title(e_title);
//		edto.setE_content(e_content);
		edto.setE_start(e_start1);
		edto.setE_end(e_end1);
		
		System.out.println("e_start1 : " + e_start1);
		System.out.println("e_end1 : " + e_end1);
//		java.sql.Timestamp e_start2 = java.sql.Timestamp.valueOf(e_start1);
//		java.sql.Timestamp e_end2 = java.sql.Timestamp.valueOf(e_end1);
		
		System.out.println("e_type : " + edto.getE_type());
		System.out.println("e_apply : " + edto.getE_apply());
		System.out.println("e_title : " + edto.getE_title());
		System.out.println("e_content : " + edto.getE_content());
		System.out.println("e_file1 : " + edto.getE_file1());
		System.out.println("e_file2 : " + edto.getE_file2());
		System.out.println("e_file3 : " + edto.getE_file3());
		

		dao.eWriteDo(edto);	

		
		return "admin/admin_ewrite";
	}
	
	
	
	
	
	// 상품 작성. 지워야하는것(참고용이기떄문)
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

//		aps.write(dto);

		//
		return "redirect:admin_product_list";
	}
	
}
