package com.project.travel.util;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	
	@Autowired
	private ServletContext servletContext;

	public String fileSave(MultipartFile mf, String path)throws Exception{
		//1. file을 HDD에 저장
		
		//2. 저장된 정보를 DB에 저장	//path ="프로젝트 상의 파일을 저장할 폴더의 경로"
		//1. 파일을 HDD에 저장하고
		
		//2. 저장된 파일명을 리턴(파일명 중복 X)
		
		path = servletContext.getRealPath(path);
		System.out.println(path);
		
		File file= new File(path);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		String fileName =UUID.randomUUID().toString();
		fileName = fileName+"_"+mf.getOriginalFilename();
		
		
		file = new File(file, fileName);
		
		mf.transferTo(file);
		
		
		return fileName;
	}
	
	public boolean fileDelete(String fileName, String path) throws Exception{
		path = servletContext.getRealPath(path);
		
		File file = new File(path, fileName);
		return file.delete();
	}

}
