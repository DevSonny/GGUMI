package com.ggumi.util;

import org.springframework.web.multipart.MultipartFile;

public class MultiFiles {
	private String title;
	private MultipartFile[] file1;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public MultipartFile[] getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}
	
}
