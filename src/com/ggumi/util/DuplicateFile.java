package com.ggumi.util;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

// 파일 업로드 할 때 서버에 중복된 파일명이 있는 경우 처리하는 클래스
public class DuplicateFile {
	// 같은 이름의 파일이 존재하는 경우
	// 증가되는 숫자를 파일명 뒤에 붙여서 새로운 파일 객체로 만들어 주는 메소드
	public static File getFile(String uploadPath, MultipartFile multipartFile) {
		String fileName = multipartFile.getOriginalFilename();
		String serverFileName = fileName;
		int cnt = 1;
		File file = null;
		do {
			file = new File(uploadPath, serverFileName);
			if(!file.exists())
				break;
			serverFileName = fileName.substring(0, fileName.lastIndexOf(".")) + (cnt++) + 
					fileName.substring(fileName.lastIndexOf("."));
		} while(true);
		
		return file;
	}
}
