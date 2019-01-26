package com.ggumi.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.ggumi.util.DuplicateFile;
import com.ggumi.util.MultiFiles;

@Controller
@RequestMapping("fileupload")
public class FileuploadController {
	
	// 싱글 파일 업로드 처리
	@RequestMapping(value="/fileUpload.do", method = RequestMethod.POST)
	public String fileUpload(String title, MultipartFile file1, Model m, HttpServletRequest request) 
	throws IllegalStateException, IOException{
		
		String fileName = file1.getOriginalFilename();
		String saveDir = request.getServletContext().getRealPath("upload");
		System.out.println(saveDir);
		System.out.println(title);
		System.out.println(fileName);
		// String saveFile = saveDir + "\\" + file1.getOriginalFilename();
		
		// 중복된 파일인 경우 덮어 쓰기기 되기 때문에 중복 방지 처리
		File fileObj
		// = new File(saveFile);
		// = new File(saveDir, file1.getOriginalFilename());
		
		// 중복된 파일 방지 처리를 한 파일 객체를 사용.
		=  DuplicateFile.getFile(saveDir, file1);
		
		file1.transferTo(fileObj);
		m.addAttribute("title", title);
		m.addAttribute("file1", fileName);
		m.addAttribute("fileName", fileName);
		m.addAttribute("serverFileName", fileObj.getName());
		
		return "redirect:/common/getNoticeList.do";
	}
	
	// 다중 파일 업로드폼
	@RequestMapping(value="/fileUploads", method = RequestMethod.GET)
	public String fileUploadForms() {
		return "fileUploadForms";
	}
	
	@RequestMapping(value="/fileUploads", method=RequestMethod.POST)
	public String fileUploads(MultiFiles multiFiles, String title, MultipartFile file1, Model m,
			HttpServletRequest request) throws IllegalStateException, IOException{
		String fileName = file1.getOriginalFilename();
		String saveDir = request.getServletContext().getRealPath("upload");
		System.out.println(saveDir);
		
		// 올라온 파일 확인
		for(MultipartFile file : multiFiles.getFile1()) {
			System.out.println(file.getOriginalFilename());
			
			// 중복 되지 않는 파일 객체를 만든다.
			File serverFile = DuplicateFile.getFile(saveDir, file);
			System.out.println("서버파일명" + serverFile.getName());
			file.transferTo(serverFile);
		}
		
		return "fileUploads";
	}
}