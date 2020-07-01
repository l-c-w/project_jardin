package com.javalec.ex.Service.AService;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import com.javalec.ex.Dao.ACDao;
import com.javalec.ex.Dto.EDto.EventDto;

import utils.UploadFileUtils;

public class AEvWriteService implements AService {

	@Override
	public void execute(HttpServletRequest request, SqlSession sqlSession, Model model) {
		
		System.out.println("-----AEvWriteService-----");
		ACDao dao = sqlSession.getMapper(ACDao.class);
		ArrayList<MultipartFile> file = null;
		EventDto eventDto = new EventDto();
		
		String uploadPath = request.getSession().getServletContext().getRealPath("/resources/imgUpload");
		// ↓ 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUpload 
		String imgUploadPath = uploadPath + File.separator; // 윈도우는 "Data\\"Tweet.txt", 리눅스는 "Data/Tweet.txt" -> File.separator를 사용하면 깔끔하게 해결된다.
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);	// 위의 폴더를 기준으로 연월일 폴더를 생성

		ArrayList<String> fileName = new ArrayList<String>();
		
		for (int i = 0; i < 3; i++) {
			if (file != null) {	  // 파일 인풋박스에 첨부된 파일이 없다면(=첨부된 파일이 이름이 없다면)
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
		eventDto.setE_file1(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(0));
		eventDto.setE_file2(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(1));
		eventDto.setE_file3(File.separator + "imgUpload" + ymdPath + File.separator + fileName.get(2));
//		eventDto.setP_content_img(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_"+ fileName.get(3));

//		aps.write(eventDto);
		
//		MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
		EventDto edto = new EventDto();	
		String e_type = request.getParameter("e_type");
		String e_apply = request.getParameter("e_apply");
		String e_title = request.getParameter("e_title");
		String e_content = request.getParameter("e_content");
		String e_start = request.getParameter("e_start");
		String e_end = request.getParameter("e_end");
		
		edto.setE_type(e_type);
		edto.setE_apply(e_apply);
		edto.setE_title(e_title);
		edto.setE_content(e_content);
		
		System.out.println("e_start : " + e_start);
		System.out.println("e_end : " + e_end);
		java.sql.Timestamp e_start2 = java.sql.Timestamp.valueOf(e_start);
		java.sql.Timestamp e_end2 = java.sql.Timestamp.valueOf(e_end);
//		edto.setE_start(e_start2);
//		edto.setE_end(e_end2);
		System.out.println("e_start2 : " + e_start);
		System.out.println("e_end2 : " + e_end2);
		
		System.out.println("e_type : " + e_type);
		System.out.println("e_apply : " + e_apply);
		System.out.println("e_title : " + e_title);
		System.out.println("e_content : " + e_content);
		System.out.println("e_file1 : " + eventDto.getE_file1());
		System.out.println("e_file2 : " + eventDto.getE_file2());
		System.out.println("e_file3 : " + eventDto.getE_file3());
		System.out.println("e_start : " + e_start);
		System.out.println("e_end : " + e_end);
		

		dao.eWriteDo(eventDto);		
	}

}
