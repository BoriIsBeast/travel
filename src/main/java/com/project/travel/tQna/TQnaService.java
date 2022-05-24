package com.project.travel.tQna;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.project.travel.tNotice.TNoticeFilesVO;
import com.project.travel.tNotice.TNoticeVO;
import com.project.travel.util.FileManager;
import com.project.travel.util.Pager;

@Service
@Transactional(rollbackFor = Exception.class)
public class TQnaService {
	
	@Autowired
	private TQnaMapper tQnaMapper;
	@Autowired
	private FileManager fileManager;
	
	public List<TQnaVO> getList(Pager pager) throws Exception{
		pager.makeRow();
		pager.makeNum(tQnaMapper.getTotalCount(pager));
		System.out.println("start : "+pager.getStartNum());
		System.out.println("perPage : "+pager.getPerPage());
		return tQnaMapper.getList(pager);
	}
	
	public int setAdd(TQnaVO tQnaVO, MultipartFile[] files) throws Exception {
		System.out.println("Insert 전 : " + tQnaVO.getNum());
		int result = tQnaMapper.setAdd(tQnaVO);
		System.out.println("Insert 후 : " + tQnaVO.getNum());

		if (files != null && result > 0) {

			for (MultipartFile mf : files) {

				if (mf.isEmpty()) {
					continue;
				}
				// 1. File을 HDD에 저장
				String fileName = fileManager.fileSave(mf, "resources/upload/TNotice/");
				System.out.println(fileName);
				// 2. 저장된 정보를 DB에 저장
				TQnaFilesVO tQnaFilesVO = new TQnaFilesVO();
				tQnaFilesVO.setNum(tQnaVO.getNum());
				tQnaFilesVO.setFileName(fileName);
				tQnaFilesVO.setOriName(mf.getOriginalFilename());
				result = tQnaMapper.setFileAdd(tQnaFilesVO);
				
				if (result < 1) {
					throw new SQLException();
				}

			}
		}
		return result;
	}
	
	public TQnaVO getDetail(TQnaVO tQnaVO) throws Exception{
		return tQnaMapper.getDetail(tQnaVO);
	}
	
	public int setUpdate(TQnaVO tQnaVO)throws Exception{
		return tQnaMapper.setUpdate(tQnaVO);
	}
	
	public int setDelete(TQnaVO tQnaVO)throws Exception{
		List<TQnaFilesVO> ar = tQnaMapper.getFileList(tQnaVO);
		int result = tQnaMapper.setDelete(tQnaVO);
		System.out.println("file size : "+ar.size());
		
		for(TQnaFilesVO f : ar) {
			fileManager.fileDelete(f.getFileName(), "resources/upload/TQna/");
			
		}
		return result;
	}
	
	public String setSummerFileUpload(MultipartFile files) throws Exception{
		//file HDD에 저장하고 저장된 파일명을 return
		String fileName = fileManager.fileSave(files, "resources/upload/TQna");
		fileName = "/resources/upload/TQna/"+fileName;
		return fileName;
	}
	
	
	public boolean setSummerFileDelete(String fileName)throws Exception{
		fileName = fileName.substring(fileName.lastIndexOf("/")+1);
		System.out.println(fileName);
		
		return fileManager.fileDelete(fileName, "resources/upload/TQna/");
		
	}
}
